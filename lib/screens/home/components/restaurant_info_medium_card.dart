import 'package:flutter/material.dart';
import 'package:flutterfoodappbase/constants/constants.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.title,
    required this.image,
    required this.location,
    required this.deliveryTime,
    required this.rating,
    required this.press,
  }) : super(key: key);

  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(aspectRatio: 1.25, child: Image.asset(image)),
              const SizedBox(height: defaultPadding / 2),
              Text(title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6),
              Text(location,
                  maxLines: 1, style: const TextStyle(color: kBodyTextColor)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                child: DefaultTextStyle(
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
                          child: Text(rating.toString(),
                              style: const TextStyle(color: Colors.white))),
                      const Spacer(),
                      Text("$deliveryTime mins"),
                      const Spacer(),
                      const CircleAvatar(
                          radius: 2, backgroundColor: Color(0xFF868686)),
                      const Spacer(),
                      const Text("Free Delivery")
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
