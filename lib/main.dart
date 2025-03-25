import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 195, 156, 154),
          toolbarHeight: 100.0,
          title: SearchBar(leading: Icon(Icons.search), hintText: "Search"),
        ),
        body: Center(child: Text('Hello World')),
        bottomNavigationBar: BottomAppBar(
          height: 25.0,
          color: Colors.blue,
          child: Container(child: Center(child: Text('Settings'))),
        ),
      ),
    );
  }
}
