import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:startup_namer/pertemuan9.dart';
import 'splashScreen.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(new MaterialApp(
    home: SplashScreen(title: "Splash Screen"),
  ));
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Halaman Utama Flutter'),
    );
  }
}*/

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp2> {

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new pertemuan9(title: 'Halaman Utama'),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset('images/image.jpg')
    );
  }
}


/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}*/

/*
class _MyHomePageState extends State<MyHomePage> {
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.setInt("is_login", 1);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const pertemuan9(title: "Pertemuan 9")),
              );
            }, child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
