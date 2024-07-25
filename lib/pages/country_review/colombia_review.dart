import 'package:flutter/material.dart';

class ColombiaReview extends StatefulWidget {
  const ColombiaReview({super.key});

  @override
  State<ColombiaReview> createState() => _ColombiaReviewState();
}

class _ColombiaReviewState extends State<ColombiaReview> {
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
