import 'package:flutter/material.dart';
import 'package:flutterfoodappbase/constants/constants.dart';
import 'package:flutterfoodappbase/mock/mockData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Using CustomScrollView for better scrollview
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Column(
            children: [
              Text('Delivery to'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor)),
              const Text("San Francisco", style: TextStyle(color: Colors.black))
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child:
                    const Text("Filter", style: TextStyle(color: Colors.black)))
          ],
        ),
        // all widgets here need to use with slivers
        SliverToBoxAdapter(child: ImageCarousel())
      ],
    ));
  }
}

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
              itemBuilder: (context, index) =>
                  Image.asset(demoBigImages[index])),
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
