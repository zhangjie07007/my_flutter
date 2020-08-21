import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Home extends StatefulWidget{
  @override 
  _Home createState()=>_Home();

}

class _Home extends State<Home>{
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 800,
      color: Colors.orangeAccent,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Home',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}