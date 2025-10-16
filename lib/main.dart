import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hello_world/container.dart';
import 'package:hello_world/profile-card.dart';
import 'package:hello_world/screens/home-screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(HelloWorld());
  FlutterNativeSplash.remove();
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'SourceSans3'
      ),
      home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}
