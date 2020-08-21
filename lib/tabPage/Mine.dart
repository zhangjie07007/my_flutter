import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Mine extends StatefulWidget{
  @override 
  _Mine createState()=>_Mine();
}

class _Mine extends State<Mine>{
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 800,
      color: Colors.blue,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Mine',
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