import 'package:flutter/material.dart';

class FullImageView extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const FullImageView({
    super.key,
    required this.imageUrl,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Hero(
            tag: tag, 
            child: InteractiveViewer(
              minScale: 1.0,
              maxScale: 4.0,
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              )
            ),
          ),
        ),
      ),
    );
  }
}