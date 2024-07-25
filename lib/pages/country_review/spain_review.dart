import 'package:flutter/material.dart';

class SpainReview extends StatefulWidget {
  const SpainReview({super.key});

  @override
  State<SpainReview> createState() => _SpainReviewState();
}

class _SpainReviewState extends State<SpainReview> {
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
