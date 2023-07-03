import 'package:flutter/material.dart';
import 'package:my_app/assignment/assignment.dart';
import 'package:my_app/extrapage/extrapage.dart';
import 'package:my_app/extrapage/page1.dart';
import 'package:my_app/extrapage/page2.dart';

import 'homepage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.amber,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('ekoc'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.pets)),
                Tab(icon: Icon(Icons.cruelty_free)),
                Tab(icon: Icon(Icons.emoji_nature)),
                Tab(icon: Icon(Icons.emoji_nature)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Page1(),
              Page2(),
              Text("I'll put the SQUID on you"),
              Extrapage(),
            ],
          ),
        ),
      ),
    );
  }
}
