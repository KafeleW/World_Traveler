import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'traveler_classes.dart';

class RatingPageDetails extends StatefulWidget {
  const RatingPageDetails({super.key});

  @override
  State<RatingPageDetails> createState() => _RatingPageDetailsState();
}

class _RatingPageDetailsState extends State<RatingPageDetails> {
  List<RatingListDetails> ratingListDetails = [
    RatingListDetails(rating: 'Food', icon: Icons.fastfood),
    RatingListDetails(rating: 'Shopping', icon: Icons.shopping_bag_rounded),
    RatingListDetails(
        rating: 'Public Transportation', icon: Icons.directions_subway),
    RatingListDetails(rating: 'Nature', icon: Icons.nature),
    RatingListDetails(rating: 'Airport', icon: Icons.airplanemode_active)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ratingListDetails.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(ratingListDetails[index].rating),
            leading: Icon(ratingListDetails[index].icon),
            trailing: RatingBar.builder(
              itemSize: 25,
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              onRatingUpdate: (rating) {},
            ),
          ),
        );
      },
    );
  }
}
