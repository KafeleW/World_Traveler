import 'package:flutter/material.dart';
import 'traveler_classes.dart';

class CountryReviews extends StatefulWidget {
  const CountryReviews({super.key});

  @override
  State<CountryReviews> createState() => _CountryReviewsState();
}

class _CountryReviewsState extends State<CountryReviews> {
  List<CountryListDetails> countryListDetails = [
    CountryListDetails(country: 'Italy', flag: 'italy.png'),
    CountryListDetails(country: 'Greece', flag: 'greece.png'),
    CountryListDetails(country: 'Japan', flag: 'japan.png'),
    CountryListDetails(country: 'Morocco', flag: 'morocco.png'),
    CountryListDetails(country: 'Spain', flag: 'spain.png'),
    CountryListDetails(country: 'Colombia', flag: 'colombia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: countryListDetails.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                // TBD Add naviagtion
              },
              title: Text(countryListDetails[index].country),
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/${countryListDetails[index].flag}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
