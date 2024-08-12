import 'package:flutter/material.dart';

import '../utils/local_variables.dart';

Stack drawMainCard(int index, double scaleFactor) {
 return Stack(
    alignment: Alignment.topCenter,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset('assets/images/page${index + 1}.jpg',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
      Positioned(
        bottom: 0,
        left: 10,
        right: 10,
        child: Row(
          children: [
            IconButton(
                iconSize: 24 * scaleFactor,
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye,
                  color: Colors.blueGrey.shade300,)),
            Text(views[index].toString(),
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14 * scaleFactor,
              color: Colors.blueGrey.shade300,
            ),),
            const Spacer(),
            IconButton(
                iconSize: 24 * scaleFactor,
                onPressed: () {},
                icon: Icon(Icons.favorite,
                  color: Colors.blueGrey.shade300,)),
            Text(likes[index].toString(), style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14 * scaleFactor,
              color: Colors.blueGrey.shade300,
            ),),
          ],
        ),
      )
    ],
  );
}