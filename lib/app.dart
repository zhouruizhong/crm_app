import 'package:flutter/material.dart';
import './work/Work.dart';
import './customer/Customer.dart';
import './manage/Manage.dart';

enum ItemType {GroupChat, AddFriends, QrCode, Payments, Help}

class App extends StatefulWidget {
  @override
  MainState createState() => MainState();
}

class MainState extends State<App>{

  var _currentIndex = 0;
  var _appBarTitle = "工作";

  Work work;
  Customer customer;
  Manage manage;

  currentPage(){
    switch (_currentIndex){
      case 0:
        if (work == null){
          work = new Work();
        }
        return work;
      case 1:
        if (customer == null){
          customer = new Customer();
        }
        return customer;
      case 2:
        if (manage == null){
          manage = new Manage();
        }
        return manage;
      default:

    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}){
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null ?
          Image.asset(imagePath, width: 32.0, height: 32.0,) :
          SizedBox(width: 32.0, height: 32.0, child: Icon(icon, color: Colors.white,),),
          Container(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(title, style: TextStyle(color: Colors.white),),
          )
        ],
      )
    );
  }

  _appBar(){
    switch (_currentIndex){
      case 0:
        return new AppBar(
          title: Text(_appBarTitle,),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: GestureDetector(
                onTap: (){
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem("发起群聊", icon: Icons.chat),
                      _popupMenuItem("添加朋友", icon: Icons.person_add),
                      _popupMenuItem("扫一扫", icon: Icons.scanner),
                      _popupMenuItem("收付款", icon: Icons.crop_free),
                      _popupMenuItem("帮助与反馈", icon: Icons.feedback),
                    ]);
                },
                child: Icon(Icons.more_horiz, color: Colors.white,),
              ),
            ),
          ],
        );
      case 1:
        return new AppBar(
          title: Text(_appBarTitle,),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.more_horiz, color: Colors.white,),
              ),
            ),
          ],
        );
      case 2:
        return new AppBar(
          title: Text(_appBarTitle,),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.more_horiz, color: Colors.white,),
              ),
            ),
          ],
        );
      default:

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
              switch (index){
                case 0:
                  _appBarTitle = "工作";
                  break;
                case 1:
                  _appBarTitle = "客户";
                  break;
                case 2:
                  _appBarTitle = "管理";
                  break;
                default:
                  _appBarTitle = "工作";
              }
            });
          }),
          items: [
            new BottomNavigationBarItem(
                title: new Text("工作", style: TextStyle(color: _currentIndex == 0 ? Colors.black : Color(0xff999999)),),
                icon: _currentIndex == 0 ? Icon(Icons.chat_bubble) : Icon(Icons.chat_bubble_outline)
            ),
            new BottomNavigationBarItem(
                title: new Text("客户", style: TextStyle(color: _currentIndex == 1 ? Colors.black : Color(0xff999999)),),
                icon: _currentIndex == 1 ? Icon(Icons.people) : Icon(Icons.people_outline)
            ),
            new BottomNavigationBarItem(
                title: new Text("管理", style: TextStyle(color: _currentIndex == 2 ? Colors.black : Color(0xff999999)),),
                icon: _currentIndex == 2 ? Icon(Icons.mail) : Icon(Icons.mail_outline),
            )
          ]
      ),
      body: currentPage(),
    );
  }
}
