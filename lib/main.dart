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
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  // borderRadius: const BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   bottomRight: Radius.circular(20),
                  // ),
                  border: Border.all(width: 2, color: Colors.black),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 51, spreadRadius: 21)
                  ],
                  shape: BoxShape.circle),
            ),
          ),
        ));
  }
}
