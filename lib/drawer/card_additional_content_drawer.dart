import 'package:flutter/material.dart';
import '../constants/location_title.dart';
import '../constants/tour_title.dart';
import '../utils/createRowPhotosWithProfile.dart';

Padding drawAdditionalContent(int index, double scaleFactor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:  8.0, vertical: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: createRowPhotosWithProfile(index),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(locationTitle[index],
                style: TextStyle(
                  fontSize: 12 * scaleFactor,
                  color: Colors.blueGrey.shade300,
                ),),
              Text(tourTitle[index],
                style: TextStyle(
                    fontSize: 24 * scaleFactor
                ),),
            ],
          ),
        )
      ],
    ),
  );
}