import 'package:badges/badges.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shinobu/character_details.dart';
import 'package:shinobu/core/utils.dart';
import 'package:shinobu/data/rest_client.dart';
import 'package:shinobu/models/character_builds_model.dart';

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

class _ElementPageState extends State<ElementPage>
    with AutomaticKeepAliveClientMixin {
  late RestClient client;
  late Future<CharacterBuildsModel> response;

  @override
  void initState() {
    super.initState();
    client = RestClient(Dio()
      ..interceptors.addAll([
        DioCacheInterceptor(
          options: CacheOptions(
            store: MemCacheStore(),
            maxStale: const Duration(minutes: 15),
            hitCacheOnErrorExcept: [],
          ),
        ),
        DioLoggingInterceptor(level: Level.basic)
      ]));
    response = fetchData();
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
  build(BuildContext context) {
    super.build(context);
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
            future: response,
            builder: (context, AsyncSnapshot<CharacterBuildsModel> snapshot) {
              if (snapshot.hasData) {
                return RefreshIndicator(
                  onRefresh: fetchData,
                  color: widget.color,
                  child: ListView.builder(
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
                  ),
                );
              }
              return Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
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

  @override
  bool get wantKeepAlive => true;
}
