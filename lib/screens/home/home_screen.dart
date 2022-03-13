import 'package:flutter/material.dart';
import 'package:flutterfoodappbase/constants/constants.dart';
import 'package:flutterfoodappbase/mock/mockData.dart';
import 'package:flutterfoodappbase/screens/home/components/components.dart';
import 'package:flutterfoodappbase/screens/home/components/section_title.dart';

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
        const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(child: ImageCarousel())),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SliverToBoxAdapter(
            child: SectionTitle(
              title: "Featured Partners",
              press: () {},
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Row(
          children: [
            SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                        aspectRatio: 1.25,
                        child: Image.asset("assets/images/medium_1.png")),
                    Text(demoMediumCardData[0]['name'],
                        style: Theme.of(context).textTheme.headline6),
                    Text(demoMediumCardData[0]["location"],
                        style: const TextStyle(color: kBodyTextColor)),
                    DefaultTextStyle(
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding / 2,
                                  vertical: defaultPadding / 8),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  color: kActiveColor),
                              child: const Text("4.6",
                                  style: TextStyle(color: Colors.white))),
                          Spacer(),
                          Text("25 mins"),
                          Spacer(),
                          CircleAvatar(
                              radius: 2, backgroundColor: Color(0xFF868686)),
                          Spacer(),
                          Text("Free Delivery")
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ))
      ],
    ));
  }
}
