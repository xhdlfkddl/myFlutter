import 'package:class_carrot_market_v1/screens/chatting/chatting_screen.dart';
import 'package:class_carrot_market_v1/screens/home/home_screen.dart';
import 'package:class_carrot_market_v1/screens/my_caroot/my_caroot_screen.dart';
import 'package:class_carrot_market_v1/screens/near_me/near_me_screen.dart';
import 'package:class_carrot_market_v1/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // 홈
          HomeScreen(),
          // 근처 생활
          NearMeScreen(),
          // 이웃 생활
          NeighborHoodLife(),
          // 채팅
          ChattingScreen(),
          // 내 마켓
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (newIndex) {
          // 화면을 새로 랜더링 하기 위해 setState()
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: '내 주변'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: '채팅'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: '나의 당근'),
        ],
      ),
    );
  }
}
