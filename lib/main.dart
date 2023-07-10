import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'HyunFlix',
      theme: ThemeData (
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      home: DefaultTabController (
        length: 4,
        child: Scaffold (
          body: TabBarView (
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: const BottomBar(),
        ),
      ),
    );
  }
}
