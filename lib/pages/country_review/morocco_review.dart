import 'package:flutter/material.dart';

class MoroccoReview extends StatefulWidget {
  const MoroccoReview({super.key});

  @override
  State<MoroccoReview> createState() => _MoroccoReviewState();
}

class _MoroccoReviewState extends State<MoroccoReview> {
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
