import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const pertemuan9(title: 'Flutter Demo Home Page'),
    );
  }
}

class pertemuan9 extends StatefulWidget {
  const pertemuan9({super.key, required this.title});

  final String title;

  @override
  State<pertemuan9> createState() => _pertemuan9State();
}

class _pertemuan9State extends State<pertemuan9> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Tex Input",
                hintText: "Teks yang akan diinput formatnya adalah sbb",
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5.0)
            ),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Tex Input 2",
                hintText: "Teks yang akan diinput formatnya adalah sbb",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5)
                )
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text(
              "Submit",
              style: TextStyle(
                color: Colors.white
              ),
            ))
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
