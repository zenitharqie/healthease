import 'package:flutter/material.dart';
import 'package:healthease/splash.dart';  
import 'package:healthease/home.dart';
import 'package:healthease/login.dart';
import 'package:healthease/store.dart';
import 'package:healthease/hospital.dart';
import 'package:healthease/call.dart';
import 'package:healthease/bookconsultation.dart';
import 'package:healthease/error.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', 
      routes: {
        '/splash': (context) => Splash(),
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/store': (context) => Store(),
        '/location': (context) => Hospital(), 
        '/call': (context) => Call(),
        '/bokconsultation': (context) => BookConsultation(),
        '/error': (context) => Error()
      },
    );
  }
}
