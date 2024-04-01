import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_one_screen.dart';
import 'package:navigation/screen/route_three_screen.dart';
import 'package:navigation/screen/route_two_screen.dart';

// const HOME_ROUTE = "/";
// 전역 변수는 자식 컴포넌트에서 $HOME_ROUTE같이 변수명 앞에 '$' 선언하고 해당 변수명 써주면 사용할 수 있다.
void main() {
  runApp(
    MaterialApp(
      //home: HomeScreen(),
      initialRoute: '/',
      // www.google.com -> www.google.com/
      routes: {
        // HOME_ROUTE: (BuildContext context) => HomeScreen(),
        "/": (BuildContext context) => HomeScreen(),
        '/one': (context) => RouteOneScreen(),
        '/two': (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
    ),
  );
}
