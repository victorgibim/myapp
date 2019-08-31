import 'package:flutter/material.dart';
// import 'image_click_event_task-18.dart';
import 'package:myapp/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141),
      ),
      home: HomeScreen(),
      // home: ImageClickEvent(),
    );
  }
}

