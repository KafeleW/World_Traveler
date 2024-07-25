import 'package:flutter/material.dart';

class ItalyReview extends StatefulWidget {
  const ItalyReview({super.key});

  @override
  State<ItalyReview> createState() => _ItalyReviewState();
}

class _ItalyReviewState extends State<ItalyReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
