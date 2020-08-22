import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';
import '../fetch/index.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  List _data = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text('发送请求'),
              onPressed: () async {
                var res = await Fetch('search').init();
                if (res['code'] == 200) {
                  setState(() {
                    this._data = res['data'];
                  });
                }
              },
            ),
             FlatButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text('添加节点'),
              onPressed: ()  {
                setState(() {
                  this._data.add({'name':'铃鹿御前'});
                });
              },
            ),
          ],
        ),
        Container(
          height: 400,
          child: ListView(
            children: this._data.map((item) {
              return GestureDetector(
                onTap: () {
                  print(item['homePage'] is String);
                },
                child: Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Image.asset(
                        "static/pic/test.jpg",
                        // "https://cdn1.xunkyz.com/tocConsul/Cardioid/20200822151704587_968439.jpg",
                        width: 110,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          height: 100,
                          color: Colors.black26,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                item['name'],
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
