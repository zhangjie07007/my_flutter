import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TextPage createState() => _TextPage();
}

class _TextPage extends State<TestPage> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('测试页面'),
        ),
        body: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.pink,
                child: Text('6666666666666666666',textAlign: TextAlign.center,),
              ),
            ),
          ],
        ));
  }
}
