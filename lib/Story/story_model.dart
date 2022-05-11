

import 'package:doga_proje/Story/user.dart';

enum MediaType {
  image,
  video,
}

class Story {
  final String url;
  final MediaType media;
  final User user;
  final Duration duration;
  const Story({
    required this.url,
    required this.media,
    required this.user,
    required this.duration,
  });
}
