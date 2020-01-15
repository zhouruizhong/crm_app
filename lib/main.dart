import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './login.dart';
import './work/Work.dart';
import './manage/Manage.dart';
import './customer/Customer.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'crm',
  theme: mDefaultTheme,
  routes: <String, WidgetBuilder> {
    "app": (BuildContext context) => new App(),
    "login": (BuildContext context) => new Login(),
      "/friends": (_) => new WebviewScaffold(
        url: "https://weixin.qq.com/",
        appBar: new AppBar(
          title: new Text("客户关系管理"),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
    "work": (BuildContext context) => new Work(),
    "manage": (BuildContext context) => new Manage(),
    "customer": (BuildContext context) => new Customer(),
  },
  home: new LoadingPage(),
));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f),
);
