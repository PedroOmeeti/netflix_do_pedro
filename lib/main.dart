import 'package:flutter/material.dart';
import 'package:netflix_paraguai/view/body_view.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: BodyView(),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.black,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_filled), 
              label: 'Home',
              selectedIcon: Icon(Icons.home_filled, color: Colors.white),
            ),

            NavigationDestination(
              label: 'Games',
              icon: Icon(Icons.gamepad), 
            ),

            NavigationDestination(
              label: 'Coming Soon',
              icon: Icon(Icons.ondemand_video), 
            ),
            NavigationDestination(
              icon: Icon(Icons.download), 
              label: 'Downloads'
            ),
            NavigationDestination(
              label: 'More',
              icon: Icon(Icons.more_horiz), 
            ),
        ],),
      ),
    );
  }
}

