import 'package:flutter/material.dart';

List<Widget> drawPhotos(int index) {
  return <Widget>[
    Container(
      margin: const EdgeInsets.only(right: 3.0),
      width: 48,
      height: 48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset('assets/images/page${index + 1}_photos/0.jpg',
          fit: BoxFit.fill,),),
    ),
    Container(
      margin: const EdgeInsets.only(right: 3.0),
      width: 48,
      height: 48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset('assets/images/page${index + 1}_photos/1.jpg',
          fit: BoxFit.fill,),),
    ),
    Container(
      margin: const EdgeInsets.only(right: 3.0),
      width: 48,
      height: 48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset('assets/images/page${index + 1}_photos/2.jpg',
            fit: BoxFit.fill),),
    ),
    Container(
      margin: const EdgeInsets.only(right: 3.0),
      width: 48,
      height: 48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset('assets/images/page${index + 1}_photos/3.jpg',
            fit: BoxFit.fill),),
    ),
  ];
}