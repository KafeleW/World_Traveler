import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: CachedNetworkImage(
          imageUrl:
              "https://drive.google.com/uc?export=view&id=18HyBRwdSNte7Eom3zCb9KLjBJjShAHeD",
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
