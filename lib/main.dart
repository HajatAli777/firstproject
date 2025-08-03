// import 'package:firstproject/home.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'First Project',
//     debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Make sure this file exists in your /lib directory

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
        useMaterial3: false,
      ),
      home: const HomeScreen(),
    );
  }
}

