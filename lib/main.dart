import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Animations',
        // home: Home(),
        home: AnimationBox()
    );
  }
}

class AnimationBox extends StatefulWidget {
  @override
  _AnimationBoxState createState() => _AnimationBoxState();
}

class _AnimationBoxState extends State<AnimationBox> {

  double _opacity = 1;
  double _margin = 0;
  double _width = 150;
  Color _color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        backgroundColor: Colors.deepPurple,
      ),
      body: AnimatedOpacity(
        duration: Duration(seconds: 2),
        opacity: _opacity,
        child: AnimatedContainer(
            padding: EdgeInsets.all(20.0),
            duration: Duration(seconds: 1),
            margin: EdgeInsets.fromLTRB(_margin, 20.0, _margin, 20.0),
            width: _width,
            color: _color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.white,
                  child: Text(
                    'Increase margin',
                  ),
                  onPressed: () => setState(() => _margin = 50),
                ),
                FlatButton(
                  color: Colors.white,
                  child: Text(
                    'Change color',
                  ),
                  onPressed: () => setState(() => _color = Colors.cyan),
                ),
                FlatButton(
                  color: Colors.white,
                  child: Text(
                    'Increase width',
                  ),
                  onPressed: () => setState(() => _width = 400),
                ),
                FlatButton(
                  color: Colors.white,
                  child: Text('Change opacity'),
                  onPressed: () => setState(() => _opacity = 0),
                ),
              ],
            )
        ),
      ),
    );
  }
}

