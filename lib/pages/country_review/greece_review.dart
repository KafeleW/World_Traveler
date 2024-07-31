import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: CachedNetworkImage(
          imageUrl:
              "https://drive.google.com/uc?export=view&id=1Ec1yHpJE1Xr7IKyDXq0j_FmSosvjw40i",
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
