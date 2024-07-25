import 'package:flutter/material.dart';
import 'traveler_classes.dart';
import 'country_review/italy_review.dart';
import 'country_review/greece_review.dart';
import 'country_review/japan_review.dart';
import 'country_review/morocco_review.dart';
import 'country_review/spain_review.dart';
import 'country_review/colombia_review.dart';

class CountryPageDetails extends StatefulWidget {
  const CountryPageDetails({super.key});

  @override
  State<CountryPageDetails> createState() => _CountryPageDetailsState();
}

class _CountryPageDetailsState extends State<CountryPageDetails> {
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
        // itemCount and index work together similar to a for loop, iterating through countryListDetails list to display each list value in ListTile format
        itemCount: countryListDetails.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              // Switch case navigates to countries review page
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItalyReview()),
                    );
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GreeceReview()),
                    );
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const JapanReview()),
                    );
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MoroccoReview()),
                    );
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpainReview()),
                    );
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ColombiaReview()),
                    );
                }
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
