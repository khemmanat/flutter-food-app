import 'package:flutter/material.dart';
import 'package:flutterfoodappbase/constants/constants.dart';
import 'package:flutterfoodappbase/mock/mockData.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.81,
        child: Stack(alignment: Alignment.bottomRight, children: [
          PageView.builder(
              itemCount: demoBigImages.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              // Rounded all images to be the same
              itemBuilder: (context, index) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(demoBigImages[index]))),
          Positioned(
              bottom: defaultPadding,
              right: defaultPadding,
              child: Row(
                children: List.generate(
                    demoBigImages.length,
                    (index) => Padding(
                          padding:
                              const EdgeInsets.only(left: defaultPadding / 4),
                          child: IndicatorDot(isActive: index == _currentPage),
                        )),
              ))
        ]));
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 4,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white38,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
