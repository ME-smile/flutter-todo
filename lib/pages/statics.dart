import 'package:flutter/material.dart';
import 'package:todo/settings/config.dart';

class StaticsPage extends StatefulWidget{
  @override
  _StaticsPageState createState() => _StaticsPageState();
}
class _StaticsPageState extends State<StaticsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '统计',
          style: TextStyle(
            fontSize: Configs.AppBarFontSize,
          )),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              IconData(0xe730, fontFamily: Configs.IconFontFamily),
              color: Color(Configs.AppBarIconFontColor)
            ),
            onPressed:(){
              return null;
            }
          ),
        ],
      ),
      body: Center(child: Text('已办'),),
    );
  }
}