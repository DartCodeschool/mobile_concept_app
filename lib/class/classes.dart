import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class person {
  final String title;
  final String image;

  person ({
    required this.title,
    required this.image,
  });
}


class chats {
  final String title;
  final String image;
  final String subtitle;
  final String time;
  chats ({
    required this.image,
    required this.subtitle,
    required this.time,
    required this.title,
  });
}