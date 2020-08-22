import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/router/router.dart';

void main() {
  runApp(SearchList());
}

class SearchList extends StatefulWidget {
  @override
  _SearchList createState() => _SearchList();
}

class _SearchList extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
        // leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        height: 300,
        child: FlatButton(
          child: Text('详情'),
          onPressed: (){
            goLink(context, 'searchDetail');
          },
        ),
      ),
    );
  }
}
