import 'package:flutter/material.dart';
import 'package:todo/pages/about.dart';
import 'package:todo/pages/todo.dart';
import 'package:todo/pages/done.dart';
import 'package:todo/pages/statics.dart';
import 'package:todo/settings/config.dart';
class TabNavigator extends StatefulWidget{
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}
class _TabNavigatorState extends State<TabNavigator>{
  final PageController _controller = PageController(
    initialPage: 0,
  );
  static const _defaultColor = Colors.grey;
  static const _activeColor = Colors.blue;
  int _currentIndex = 0;
  // 创建BottomNavigationBarItem的工厂方法
  _buildBottomNavigationBarItem(int iconCode, String title, int index){
    return BottomNavigationBarItem(
      icon: Icon(
        IconData(iconCode, fontFamily: Configs.IconFontFamily),
        color: _defaultColor,
        size: Configs.NavigationBarIconFontSize
        ),
      activeIcon: Icon(
        IconData(iconCode, fontFamily: Configs.IconFontFamily),
        color: _activeColor,
        size: Configs.NavigationBarIconFontSize
        ),
      title:Text(
        title,
        style: TextStyle(
          fontSize: Configs.NavigationBarFontSize,
          color: _currentIndex != index ? _defaultColor : _activeColor),
      )
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          TodoPage(),
          DonePage(),
          StaticsPage(),
          AboutPage()
        ],
        onPageChanged: (int index){
          setState(() {
           _currentIndex = index; 
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
        type: BottomNavigationBarType.fixed,
        items: [
          _buildBottomNavigationBarItem(0xe60f, '待办', 0),
          _buildBottomNavigationBarItem(0xe61a, '已办', 1),
          _buildBottomNavigationBarItem(0xe6ce, '统计', 2),
          _buildBottomNavigationBarItem(0xe655, '我的', 3),
          ]),
      );
  }
}