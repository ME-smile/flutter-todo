import 'package:flutter/material.dart';
import 'package:todo/settings/config.dart';

class TodoPage extends StatefulWidget{
  @override
  _TodoPageState createState() => _TodoPageState();
}
class _TodoPageState extends State<TodoPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '待办',
          style: TextStyle(
            fontSize: Configs.AppBarFontSize,
          )),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return <PopupMenuItem<String>>[
                PopupMenuItem(
                  child: Text('早起打卡'),
                  value: 'clock in for get up',
                ),
                PopupMenuItem(
                  child: Text('睡眠打卡'),
                  value: 'clock in for sleep',
                ),
              ];
            },
            icon: Icon(
              IconData(0xe63b, fontFamily: Configs.IconFontFamily),
              color: Color(Configs.AppBarIconFontColor),
            )
          ),
          IconButton(
            icon: Icon(
              IconData(0xeaf3, fontFamily: Configs.IconFontFamily),
              color: Color(Configs.AppBarIconFontColor)
            ),
            onPressed:(){
              return null;
            }
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return <PopupMenuItem<String>>[
                PopupMenuItem(
                  child: Text('编辑排序'),
                  value: 'EditMode',
                ),
                PopupMenuItem(
                  child: Text('历史记录时间轴'),
                  value: 'History',
                ),
                PopupMenuItem(
                  child: Text('定时锁机 | 小憩'),
                  value: 'Lock Phone | relax',
                ),
                PopupMenuItem(
                  child: Text('自习室 | 排行榜'),
                  value: 'StudyingRoom | Rank',
                ),
                PopupMenuItem(
                  child: Text('学霸模式'),
                  value: 'StrictMode',
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(child: Text('待办'),),
    );
  }
}