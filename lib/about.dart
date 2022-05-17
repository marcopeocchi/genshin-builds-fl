import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello!\n\nThis app is built around this API https://github.com/marcopeocchi/genshin-builds-api',
            ),
            SizedBox(height: 8),
            Text(
              'It\'s opensource https://github.com/marcopeocchi/genshin-builds-fl',
            ),
            SizedBox(height: 8),
            Text(
              'Built with Flutter and Retrofit.',
            ),
          ],
        ),
      ),
    );
  }
}
