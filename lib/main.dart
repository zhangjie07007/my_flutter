import 'package:flutter/material.dart';
import 'dart:math' as math;
import './tabPage/home.dart';
import './tabPage/Hot.dart';
import './tabPage/Search.dart';
import './tabPage/Star.dart';
import './tabPage/Mine.dart';
import './router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage('我的 flutter 项目'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title = '';

  MyHomePage(String title) {
    this.title = title;
  }

  @override
  State createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _currentIndex = 0;
  List pageList = <Widget>[Home(), Hot(), Search(), Star(), Mine()];
  List pageTitle = <String>['掘金','沸点','搜索','收藏','个人中心',];
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text(this.pageTitle[this._currentIndex]),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle),
            color: Colors.white,
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            this._globalKey.currentState.openDrawer();
          },
        ),
      ),
      body: this.pageList[this._currentIndex],
      drawer: Container(
        width: 100,
        color: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.hot_tub), title: Text('沸点')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('收藏')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        // backgroundColor:Colors.black,
        selectedItemColor: Colors.deepOrange,
        onTap: (value) {
          setState(() {
            this._currentIndex = value;
          });
        },
      ),
    );
  }
}
