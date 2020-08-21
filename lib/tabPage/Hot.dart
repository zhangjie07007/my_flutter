import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Hot extends StatefulWidget{
  @override 
  _Hot createState()=>_Hot();
}

class _Hot extends State<Hot>{
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 800,
      color: Colors.orange,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Hot',
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