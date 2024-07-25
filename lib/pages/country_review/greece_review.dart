import 'package:flutter/material.dart';

class GreeceReview extends StatefulWidget {
  const GreeceReview({super.key});

  @override
  State<GreeceReview> createState() => _GreeceReviewState();
}

class _GreeceReviewState extends State<GreeceReview> {
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
