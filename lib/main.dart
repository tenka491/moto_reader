import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_start_app/src/articlesBuiler.dart';
import 'package:flutter_start_app/src/articles_list.dart';
import 'package:flutter_start_app/src/donation_page/donations.dart';

import 'src/api/article.dart';
import 'src/api/fetch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moto Reader',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Moto Reader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final Future<List<Article>> _futureArticles = Future<List<Article>>.delayed(
  //   const Duration(seconds: 3),
  //   () => fetchAllArticles(),
  // );

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const ArticlesBuilder(),
    const Donations(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.deepOrange[800],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'Donate',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
