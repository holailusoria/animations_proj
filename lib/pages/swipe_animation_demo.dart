import 'package:flutter/material.dart';
import '../constants/tour_title.dart';
import '../drawer/card_additional_content_drawer.dart';
import '../drawer/main_card_drawer.dart';

class SwipeAnimationDemo extends StatefulWidget {
  const SwipeAnimationDemo({super.key});

  @override
  State<SwipeAnimationDemo> createState() => _SwipeAnimationDemoState();
}

class _SwipeAnimationDemoState extends State<SwipeAnimationDemo> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey.shade300,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.short_text_rounded,
            size: 28,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search,
              size: 28,),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.grey.shade200,
                ]
            )
        ),
        child: PageView.builder(
          controller: _pageController,
          itemCount: tourTitle.length,
          itemBuilder: (context, index) {
            return _buildPage(index);
          },
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page! - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        double scaleFactor = Curves.easeOut.transform(value);
        print('Scale factor for page $index: $scaleFactor');
        return Center(
          child: SizedBox(
            height: scaleFactor * 500,
            width: scaleFactor * 400,
            child: _buildChild(index, scaleFactor),
          ),
        );
      },
    );
  }

  Widget _buildChild(int index, double scaleFactor) {
    return Container(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: drawMainCard(index, scaleFactor),
            ),
            Expanded(
              flex: 3,
              child: drawAdditionalContent(index, scaleFactor),
            )
          ],
        )
    );
  }
}