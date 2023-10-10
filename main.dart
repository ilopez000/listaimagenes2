import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _images = [];

  void _addImage() {
    setState(() {
      _images.add(Image.asset('assets/f1.jpg'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo App")),
      body: SingleChildScrollView(
        child: Center( // Este widget centra el contenido
          child: Container(
            width: 600,
            child: Column(
              children: <Widget>[
                for (var image in _images) image,
                ElevatedButton(
                  child: Text("Añadir Imagen"),
                  onPressed: _addImage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
