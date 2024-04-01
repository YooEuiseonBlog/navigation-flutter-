import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;
  //const RouteOneScreen({super.key, required this.number});

  const RouteOneScreen({
    this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Route One',
      children: [
        Text(
          'arguments: ${number.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(456),
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            // [HomeScreen(), RouteOne(), RouteTwo()]
            // [HomeScreen(), RouteOne()] : pop 실행 시 - 오른쪽부터 제거
            // data structure: stack
            // route stack 이라고 불린다.
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwoScreen(),
                settings: RouteSettings(
                  arguments: 789,
                ),
              ),
            );
          },
          child: Text('Push'),
        ),
      ],
    );
  }
}
