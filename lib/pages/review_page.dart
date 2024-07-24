import 'package:flutter/material.dart';
import 'traveler_classes.dart';

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
