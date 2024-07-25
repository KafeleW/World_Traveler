import 'package:flutter/material.dart';

class JapanReview extends StatefulWidget {
  const JapanReview({super.key});

  @override
  State<JapanReview> createState() => _JapanReviewState();
}

class _JapanReviewState extends State<JapanReview> {
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
