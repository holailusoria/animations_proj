import 'package:flutter/material.dart';

Widget drawAvatar(int index) {
  return CircleAvatar(
    radius: 24,
    foregroundImage: AssetImage('assets/images/avatar${index + 1}.jpg'),
  );
}