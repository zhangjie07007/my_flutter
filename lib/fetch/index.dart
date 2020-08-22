import 'dart:convert';

import 'package:dio/dio.dart';
import './config.dart';
import './env.dart';

// https://su.yuanhaowang.com/apis/search?search=1&cityCode=320500&channelId=loupan&domain=www.yuanhaowan

class Fetch {
  Map fetchParams;
  Map sendData;
  String method;
  Dio dio;

  Fetch(String name, {Map params}) {
    this.sendData = params;
    this.dio = new Dio();
    this._initFetchConfig(name);
  }

  _initFetchConfig(String name) {
    fetchConfig.forEach((item) {
      if (item['name'] == name) {
        this.fetchParams = item;
      }
    });
  }

  Future init() async {
    Response res;
    String url = 'http://10.0.2.2:12001/apis${fetchParams["path"]}';
    
    if (fetchParams['method'] == 'get') {
      print(url);
      res = await this.dio.get(url, queryParameters: this.sendData);
    } else if (fetchParams['method'] == 'post') {
      res = await this.dio.post(url, data: this.sendData);
    }
    // print();
    return jsonDecode(res.toString());
  }
}
