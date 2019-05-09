import 'package:flutter/material.dart';
import 'package:todo/settings/config.dart';

class AboutPage extends StatefulWidget{
  @override
  _AboutPageState createState() => _AboutPageState();
}
class _AboutPageState extends State<AboutPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '我的',
          style: TextStyle(
            fontSize: Configs.AppBarFontSize,
          )),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return <PopupMenuItem<String>>[
                PopupMenuItem(
                  child: Text('用户设置'),
                  value: 'UserSetting',
                  ),
                PopupMenuItem(
                  child: Text('系统设置'),
                  value: 'SystemSetting',
                  ),
              ];
            },
            icon: Icon(
              IconData(0xe608, fontFamily: Configs.IconFontFamily),
              color: Color(Configs.AppBarIconFontColor)
            ),
          )
        ],
      ),
      body: Center(child: Text('我的'),),
    );
  }
}