import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Count App'),
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
  double _counter = 0;
  String _hello = "";

  void _displayNabeatsu() {
    setState(() {
      if (_counter % 3 == 0 && _counter != 0) {
        _hello = "ナベアツ!";
      } else {
        _hello = "";
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    _displayNabeatsu();
  }

  void _minusCounter() {
    setState(() {
      _counter--;
    });
    _displayNabeatsu();
  }

  void _multiplyCounter() {
    setState(() {
      _counter *= 2;
    });
    _displayNabeatsu();
  }

  void _divideCounter() {
    setState(() {
      _counter /= 2;
    });
    _displayNabeatsu();
  }

  void _clearCounter() {
    setState(() {
      _counter = 0;
      _displayNabeatsu();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            Text(
              '$_hello',
              style: Theme.of(context).textTheme.headline4,
            ),

            ElevatedButton(
              child: const Text("+"),
              onPressed: _incrementCounter,
            ),

            ElevatedButton(
              child: const Text("-"),
              onPressed: _minusCounter,
            ),

            ElevatedButton(
              child: const Text("×"),
              onPressed: _multiplyCounter,
            ),

            ElevatedButton(
              child: const Text("÷"),
              onPressed: _divideCounter,
            ),

            ElevatedButton(
                onPressed: _clearCounter,
                child: const Text("Clear")),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
