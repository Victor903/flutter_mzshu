import 'package:flutter/material.dart';

import 'package:mzshu/public.dart';

import 'home_list_view.dart';

class HomeScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeSceneState();
}

class HomeSceneState extends State<HomeScene> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          leading: Container(
           width: 35,
           height: 35,
           padding: EdgeInsets.symmetric(horizontal: 12),
           child:  Image.asset("img/logo.png",),
          ),
          title:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              height: 30,
              width: 210,
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              decoration: new BoxDecoration(
                border: new Border.all(color: SQColor.white, width: 1.5), // 边色与边宽度
                color: SQColor.orange, // 底色
                borderRadius: new BorderRadius.circular((30.0)), // 圆角度
              ),
              child: TabBar(
                labelColor: SQColor.orange,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                unselectedLabelColor: SQColor.white,
                indicator: new BoxDecoration(
                  border: new Border.all(color: SQColor.white, width: 0), // 边色与边宽度
                   color: SQColor.white, // 底色
                   borderRadius: new BorderRadius.circular((30.0)), // 圆角度
                ),
                indicatorColor: SQColor.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 30,
                //indicatorPadding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                tabs: [
                  Tab(text: '精选'),
                  Tab(text: '女生'),
                  Tab(text: '男生'),
                 // Tab(text: '漫画'),
                ],
              ),
          ),
          actions: <Widget>[
        Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
           child: IconButton(icon: Icon(Icons.search,size: 35,color: SQColor.white,)
                , onPressed: ()=>Toast.show("search")
            ),
          ),
          ],
          backgroundColor: SQColor.orange,
          elevation: 0,
        ),
        body: TabBarView(children: [
          HomeListView(HomeListType.excellent),
          HomeListView(HomeListType.female),
          HomeListView(HomeListType.male),
         // HomeListView(HomeListType.cartoon),
        ]),
      ),
    );
  }
}
