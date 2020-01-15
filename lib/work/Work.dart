import 'package:flutter/material.dart';

class Work extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("工作日报", style: TextStyle(fontSize: 20.0, color: Colors.white,),),
                    ),
                  ),
                ),
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child:RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("工作日历", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child:RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("消息", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("我的任务", style: TextStyle(fontSize: 20.0, color: Colors.white,),),
                    ),
                  ),
                ),
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child:RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("我的审阅", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child:RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("个人中心", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 21.0, right: 10.0),
                  child: RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("销售情况", style: TextStyle(fontSize: 20.0, color: Colors.white,),),
                    ),
                  ),
                ),
                Container(
                  width: 110.0,
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child:RaisedButton(
                    color: Color(0xff5677FC),
                    textTheme: ButtonTextTheme.accent,
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){

                    },
                    child: Container(
                      child: Text("拜访记录", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}
