

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/router/router.dart';

void main() {
  runApp(SearchDetail());
}

class SearchDetail extends StatefulWidget{

  @override
  _SearchDetail createState() =>_SearchDetail();
}

class _SearchDetail extends State<SearchDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
      ),
      body: Container(
        height: 300,
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            goKack(context);
          },
        ),
      ),
    );
  }
}