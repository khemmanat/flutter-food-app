import 'package:flutter/material.dart';
import 'package:flutterfoodappbase/constants/constants.dart';
import 'package:flutterfoodappbase/mock/mockData.dart';
import 'package:flutterfoodappbase/screens/home/components/components.dart';
import 'package:flutterfoodappbase/screens/home/components/restaurant_info_medium_card.dart';
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
          backgroundColor: Colors.white,
          elevation: 0,
          floating: true,
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
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoMediumCardData.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: RestaurantInfoMediumCard(
                  image: demoMediumCardData[index]["image"],
                  title: demoMediumCardData[index]["name"],
                  location: demoMediumCardData[index]["location"],
                  deliveryTime: demoMediumCardData[index]["deliveryTime"],
                  rating: demoMediumCardData[index]["rating"],
                  press: () {},
                ),
              ),
            ),
          ),
        )),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SliverToBoxAdapter(
            child: Image.asset("assets/images/Banner.png"),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SliverToBoxAdapter(
            child: SectionTitle(
              title: "Best Picks",
              press: () {},
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoMediumCardData.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: RestaurantInfoMediumCard(
                  image: demoMediumCardData[index]["image"],
                  title: demoMediumCardData[index]["name"],
                  location: demoMediumCardData[index]["location"],
                  deliveryTime: demoMediumCardData[index]["deliveryTime"],
                  rating: demoMediumCardData[index]["rating"],
                  press: () {},
                ),
              ),
            ),
          ),
        )),
      ],
    ));
  }
}
