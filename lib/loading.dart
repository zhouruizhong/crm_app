import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {

  @override
  void initState(){
    super.initState();
    new Future.delayed(Duration(seconds: 3), (){
      print("Flutter客户关系管理系统启动....");
      //此处判断用户session是否超时
      // 未超时跳转用户中心
      Navigator.of(context).pushReplacementNamed("login");
      //超时跳转登录界面
      //Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579086700056&di=f2b940fa662ab86b6dd20bf1e3d20710&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0152395be39c37a80121ab5d479b6c.gif"),
    );
  }
}
