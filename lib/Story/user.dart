import 'package:flutter/cupertino.dart';

import 'package:meta/meta.dart';

class User {
  final String name;
  final String profileImageUrl;

  const User({
    required this.profileImageUrl,
    required this.name,
  });
}
