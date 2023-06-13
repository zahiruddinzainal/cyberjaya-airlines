import 'dart:async';
import 'package:cyberjayaairlines/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Navigation())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash.png',
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'CYBERJAYA\nAIRLINES',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: getHexColor('#273f6e'),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ));
  }

  getHexColor(hexColor) {
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return color;
  }
}
