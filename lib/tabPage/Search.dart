import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Search extends StatefulWidget{
  @override 
  _Search createState()=>_Search();
}

class _Search extends State<Search>{
  @override 
  Widget build(BuildContext context){
    return Container(
      height: 800,
      color: Colors.green,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Search',
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