import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: CachedNetworkImage(
          imageUrl:
              "https://drive.google.com/uc?export=view&id=1VegKGuEhvFY0L4b9ue503UOzcgJ37lzM",
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
