import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 텍스트 테마 설정
// 전역 함수로 만들 예정
TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),

    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),

    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 앱 전체에서 사용할 아이콘 테마 설정
IconThemeData iconThemeData() {
  return const IconThemeData(color: Colors.black);
}

// appbar
AppBarTheme appBarTheme() {
  return AppBarTheme(
    // android 에서는 왼쪽이 기본, ios 는 가운데가 기본
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    iconTheme: iconThemeData(),
    titleTextStyle: GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.orange),
  );
}

// 하단 네비게이션 테마
BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    showUnselectedLabels: true
  );
}

// 전체 앱 테마
// 모든 테마들을 감쌀 수 있는 테마
ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
    primarySwatch: Colors.orange
  );
}
