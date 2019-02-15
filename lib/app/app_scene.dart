import 'package:flutter/material.dart';
import 'package:mzshu/public.dart';
import 'package:mzshu/app/root_scene.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MzShu',//任务管理窗口显示名字
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid:false,
      theme: ThemeData(
        primaryColor: Colors.white,
        dividerColor: Color(0xffeeeeee),
        //scaffoldBackgroundColor: SQColor.paper,
        //textTheme: TextTheme(body1: TextStyle(color: SQColor.darkGray)),
      ),
      home: RootScene(),
    );
  }
}
