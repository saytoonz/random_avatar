import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Avatar example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Random Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
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
                String svg = RandomAvatarString(
                  DateTime.now().toIso8601String(),
                  trBackground: false,
                );
                log(svg);

                _painters.add(
                  RandomAvatar(
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
