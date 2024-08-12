import 'package:flutter/cupertino.dart';
import 'package:test_kyla/drawer/avatar_drawer.dart';
import 'package:test_kyla/drawer/photos_drawer.dart';

List<Widget> createRowPhotosWithProfile(int index) {
  List<Widget> response = [];
  Widget profile = drawAvatar(index);
  List<Widget> photos = drawPhotos(index);

  response.add(profile);
  response.add(const Spacer());
  response.addAll(photos);

  return response;
}