import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Types { odd, even }

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var counterType = Types.odd;

  void _incrementCounter() {
    setState(() {
      if (counterType == Types.odd) {
        _increamentOdd();
      } else if (counterType == Types.even) {
        _increamentEven();
      }
    });
  }

  void _increamentOdd() {
    if (_counter == 0 || (_counter % 2) == 0) {
      _counter++;
    } else if((_counter % 2) != 0){
      _counter += 2;
    }
  }

  void _increamentEven() {
    if (_counter == 0 || (_counter % 2) == 0) {
      _counter += 2;
    } else if((_counter % 2) != 0){
      _counter++;
    }
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
              'The count is : ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Odd increments"),
                Radio(
                    value: Types.odd,
                    groupValue: counterType,
                    onChanged: (Types value) {
                      setState(() {
                        counterType = value;
                      });
                    }),
                SizedBox(width: 16),
                Text("Odd increments"),
                Radio(
                    value: Types.even,
                    groupValue: counterType,
                    onChanged: (Types value) {
                      setState(() {
                        counterType = value;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
