import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Star extends StatefulWidget{
  @override 
  _Star createState()=>_Star();
}

class _Star extends State<Star>{
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 800,
      color: Colors.purple,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Star',
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