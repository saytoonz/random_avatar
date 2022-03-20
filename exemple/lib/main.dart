import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MultiAvatar exemple',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MultiAvatar Exemple'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  final List<Widget> _painters = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            FloatingActionButton(
              onPressed: () {
                String svg = randomAvatarString(
                  DateTime.now().toIso8601String(),
                  trBackground: false,
                );
                log(svg);

                _painters.add(
                  randomAvatar(
                    DateTime.now().toIso8601String(),
                    height: 50,
                    width: 52,
                  ),
                );
                _controller.text = svg;
                setState(() {});
              },
              tooltip: 'Generate',
              child: const Icon(Icons.gesture),
            ),
            const SizedBox(height: 20),
            ..._painters,
          ],
        ),
      ),
    );
  }
}
