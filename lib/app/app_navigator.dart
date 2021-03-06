import 'package:flutter/material.dart';

import 'package:mzshu/public.dart';
import 'package:mzshu/novel_detail/novel_detail_scene.dart';
import 'package:mzshu/me/login_scene.dart';
import 'package:mzshu/me/web_scene.dart';
import 'package:mzshu/reader/reader_scene.dart';

class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  static pushNovelDetail(BuildContext context, Novel novel) {
    //AppNavigator.push(context, NovelDetailScene(novel.id));
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NovelDetailScene(novel.id);
    }));
  }

  static pushLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginScene();
    }));
  }

  static pushWeb(BuildContext context, String url, String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebScene(url: url, title: title);
    }));
  }

  static pushReader(BuildContext context, int articleId) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ReaderScene(articleId: articleId);
    }));
  }
}
