import 'package:badges/badges.dart';
import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shinobu/core/utils.dart';
import 'package:shinobu/data/rest_client.dart';
import 'package:shinobu/models/character_builds_model.dart';
import 'package:shinobu/character_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        ElementPage(element: 'Pyro', color: Colors.red.shade300),
        ElementPage(element: 'Hydro', color: Colors.blue.shade800),
        ElementPage(element: 'Anemo', color: Colors.teal.shade400),
        ElementPage(element: 'Electro', color: Colors.deepPurple.shade200),
        ElementPage(element: 'Cryo', color: Colors.cyan.shade200),
        ElementPage(element: 'Geo', color: Colors.amber.shade600),
      ],
    );
  }
}

class ElementPage extends StatefulWidget {
  final String element;
  final Color color;
  const ElementPage({
    Key? key,
    required this.element,
    required this.color,
  }) : super(key: key);

  @override
  State<ElementPage> createState() => _ElementPageState();
}

class _ElementPageState extends State<ElementPage> {
  final client = RestClient(Dio()..interceptors.add(DioLoggingInterceptor()));
  late Future<CharacterBuildsModel> response;

  @override
  void initState() {
    super.initState();
  }

  Future<CharacterBuildsModel> fetchData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return client.getBuildByElement(widget.element.toLowerCase());
  }

  Future navigateToDetail(Character detail, Color color) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CharacterDetails(detail: detail, color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.element),
      ),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(128.0),
              child: SvgPicture.asset(
                'assets/${widget.element}.svg',
                color: widget.color,
                //color: Theme.of(context).selectedRowColor,
              ),
            ),
          ),
          FutureBuilder(
            future: fetchData(),
            builder: (context, AsyncSnapshot<CharacterBuildsModel> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.data.length,
                  itemBuilder: (context, index) {
                    final character = snapshot.data!.data[index];
                    return ListTile(
                      title: Text(Utils.capitalizeAll(
                        character.name.replaceAll('\n', ' '),
                      )),
                      trailing: Badge(
                        badgeContent: Text(
                          '${character.builds.length}',
                          style: const TextStyle(color: Colors.white),
                        ),
                        badgeColor: widget.color,
                      ),
                      onTap: () => navigateToDetail(character, widget.color),
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).selectedRowColor),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
