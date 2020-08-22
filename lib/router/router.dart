import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'config/index.dart';

void goLink(BuildContext ctx,String name){

  Map linkParams = {};

  RouterList.forEach((item) {
    if(name == item['name']){
      linkParams = item;
    }
  });

  if(linkParams['name']!=null){
    Navigator.push(ctx, new MaterialPageRoute(builder: (ctx)=>linkParams['page']));
  }else{
    throw('未找到该页面！');
  }
}

void goKack(BuildContext ctx){
  Navigator.pop(ctx);
}