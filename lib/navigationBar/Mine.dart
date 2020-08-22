import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter/router/router.dart';


class Mine extends StatefulWidget{
  @override 
  _Mine createState()=>_Mine();
}

class _Mine extends State<Mine>{
  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onDoubleTap: (){print('doubie tap');},
      onTap: (){print('tap');},
      onLongPress: (){print('long press');},
      onHorizontalDragStart: (e){print('水平移动');},
      onHorizontalDragEnd: (e){print('水平移动结束');},
      child: Container(
      height: 800,
      color: Colors.blue,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          FlatButton(
            child: Text('跳转'),
            color: Colors.orange,
            textColor: Colors.white,
            onPressed: (){
              goLink(context, 'test');
            },
          ),
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
    ),
    );
  }
}