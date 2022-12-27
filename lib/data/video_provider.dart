import 'package:flutter/material.dart';

import '../components/video.dart';


class VideoProvider extends InheritedWidget {
  VideoProvider({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Video> videoList = [

  ];

  void newVideo(String image, String category, Color color){
    videoList.add(Video(image, category, color));
  }

  static VideoProvider of(BuildContext context) {
    final VideoProvider? result =
    context.dependOnInheritedWidgetOfExactType<VideoProvider>();
    assert(result != null, 'No VideoInherited found in context');
    return result!;
  }

  // updateShoulNotify significa: atualização deve notificar

  @override
  bool updateShouldNotify(VideoProvider oldWidget) {

    // Estou verificando se a lista anterior é difente da atual
    // se isso for verdade, é retornado um true, todo mundo é notificado

    return oldWidget.videoList.length != videoList.length;
  }
}
