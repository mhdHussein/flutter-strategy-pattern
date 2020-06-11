import 'package:flutter/material.dart';
import 'package:flutterstrategypattern/clients/counter.dart';
import 'package:flutterstrategypattern/clients/odd_counter.dart';
import 'package:flutterstrategypattern/value_object.dart';

import 'clients/even_counter.dart';

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
  ValueObject _counterValue = ValueObject();
  // var counterType = Types.odd;
  Counter _counterType;
  var _counterId = Types.odd;

  @override
  void initState() {
    _counterType = OddCounter();
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counterType.performAddition();
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
              'The count is : ',
            ),
            Text(
              '${_counterValue.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Odd increments"),
                Radio(
                    value: Types.odd,
                    groupValue: _counterId,
                    onChanged: (_) {
                      setState(() {
                        _counterId = Types.odd;
                        _counterType = OddCounter();
                      });
                    }),
                SizedBox(width: 16),
                Text("Even increments"),
                Radio(
                    value: Types.even,
                    groupValue: _counterId,
                    onChanged: (_) {
                      setState(() {
                        _counterId = Types.even;
                        _counterType = EvenCounter();
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
