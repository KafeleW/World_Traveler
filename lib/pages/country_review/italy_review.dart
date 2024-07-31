import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: CachedNetworkImage(
          imageUrl:
              "https://drive.google.com/uc?export=view&id=1G8LQTZPby46L8Lh9bM3OL3KvHKJ2DbaK",
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
