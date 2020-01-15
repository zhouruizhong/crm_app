import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login> {

  //手机号的控制器
  TextEditingController phoneController = TextEditingController();

  //密码的控制器
  TextEditingController passController = TextEditingController();

  FocusNode phoneNode = FocusNode();
  FocusNode passwordNode = FocusNode();

  void _login() {
    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('手机号码格式不对'),
          ));
    } else if (passController.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('请填写密码'),
          ));
    } else {
      /*showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('登录成功'),
          ));*/
      Navigator.of(context).pushReplacementNamed("app");
      phoneNode.unfocus();
      passwordNode.unfocus();
      phoneController.clear();
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }

  void _textFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579079251778&di=864f1b205bea5fde84a2269f6095e7de&imgtype=0&src=http%3A%2F%2Fwww.suntop168.com%2Fblog%2Fzb_users%2Fupload%2F2014%2F2%2Fadf89182.jpg",
                width: 70.0,
                height: 70.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left:20.0, right: 20.0, top: 30.0),
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10.0),
                  prefixIcon: Icon(Icons.phone),
                  labelText: '请输入你的手机号',
                ),
                onChanged: _textFieldChanged,
                autofocus: false,
                focusNode: phoneNode,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(passwordNode),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: TextField(
                controller: passController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10.0),
                  prefixIcon: Icon(Icons.lock),
                  labelText: '请输入你的密码',
                ),
                focusNode: passwordNode,
                obscureText: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 165.0,
                          child: RaisedButton(
                            color: Colors.green,
                            textTheme: ButtonTextTheme.accent,
                            padding: const EdgeInsets.all(10.0),
                            onPressed: _login,
                            child: Container(
                              child: Text("登      录", style: TextStyle(fontSize: 20.0, color: Colors.white,),),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 30.0)),
                        Container(
                          height: 50.0,
                          width: 165.0,
                          child:RaisedButton(
                            color: Colors.green,
                            textTheme: ButtonTextTheme.accent,
                            padding: const EdgeInsets.all(10.0),
                            onPressed: onTextClear,
                            child: Container(
                              child: Text("取      消", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
