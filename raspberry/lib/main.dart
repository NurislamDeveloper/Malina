import 'package:flutter/material.dart';
import 'package:raspberry/presentetions/pages/enter_page.dart';
import 'package:raspberry/presentetions/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const EnterPage(),
      routes: {
        '/enter_page':(context) => const EnterPage(),
        '/my_home_page':(context) => const MyHomePage(),
        /*
    '/firstScreen': (context) => FirstScreen(),  here how it work with push.Named
    '/secondScreen': (context) => SecondScreen(),
        */
      },
    );
  }
}

