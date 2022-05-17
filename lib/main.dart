import 'package:flutter/material.dart';
import 'package:shinobu/about.dart';
import 'package:shinobu/element.dart';

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
    controller = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        ElementPage(element: 'Pyro', color: Colors.red.shade300),
        ElementPage(element: 'Hydro', color: Colors.blue.shade500),
        ElementPage(element: 'Anemo', color: Colors.teal.shade400),
        ElementPage(element: 'Electro', color: Colors.deepPurple.shade200),
        ElementPage(element: 'Cryo', color: Colors.cyan.shade200),
        ElementPage(element: 'Geo', color: Colors.amber.shade600),
        const About(),
      ],
    );
  }
}
