import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  List tabList = <Map>[
    {'name': 'java', 'message': 'java专区'},
    {'name': 'python', 'message': 'python专区'},
    {'name': '前端', 'message': '前端专区'},
    {'name': '大数据', 'message': '大数据专区'},
    {'name': '后端', 'message': '后端专区'},
  ];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = new TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: TabBar(
            controller: this._controller,
            tabs: tabList.map((it) => Tab(text: it['name'])).toList(),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black26,
          ),
        ),
        Container(
          height: 300,
          child: TabBarView(
            controller: this._controller,
            children: tabList.map((it)=>Container(child: Text(it['message']),)).toList(),
          ),
        ),
      ],
    );
  }
}
