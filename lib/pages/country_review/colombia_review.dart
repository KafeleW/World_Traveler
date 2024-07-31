import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: CachedNetworkImage(
          imageUrl:
              "https://drive.google.com/uc?export=view&id=1WF-9RITCdqHZ3_7iKFk6IfdWcjqAXRfz",
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
