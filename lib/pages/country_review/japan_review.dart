import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: CachedNetworkImage(
          imageUrl:
              "https://drive.google.com/uc?export=view&id=1NsvfFzG7mMvwzZj4bT4tX6V9Dwcx2kOs",
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: const Color.fromARGB(255, 50, 31, 7),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
