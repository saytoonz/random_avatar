import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  TextEditingController _controller = TextEditingController();
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
                String svg = multiavatar(DateTime.now().toIso8601String(),
                    trBackground: true);
                _painters.add(SvgPicture.string(
                  svg,
                  height: 55,
                ));
                _controller.text = svg;
                setState(() {});
              },
              tooltip: 'Generate',
              child: Icon(Icons.gesture),
            ),
            SizedBox(height: 20),
          ]..addAll(_painters),
        ),
      ),
    );
  }
}
