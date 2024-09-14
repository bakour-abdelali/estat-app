import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustemImageNetwork extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;
  final BoxFit? fit;
  final BorderRadius borderRadius;

  /// Creates a custom widget for displaying a network image with optional height, width,
  /// fit, and border radius using `CachedNetworkImage`.
  ///
  /// The [imageUrl] is required and must not be null.
  ///
  /// Parameters:
  /// - [height]: The height of the image (optional).
  /// - [width]: The width of the image (optional).
  /// - [imageUrl]: The URL of the image to be loaded (required).
  /// - [fit]: How the image should be inscribed into the space allocated during layout (optional).
  /// - [borderRadius]: The border radius for rounding the corners of the image (optional, defaults to `BorderRadius.zero`).
  ///
  /// The widget will:
  /// - Display a loading indicator (`CircularProgressIndicator`) while the image is being fetched.
  /// - Display an error icon (`Icons.error`) if the image fails to load.
  ///
  /// Example:
  /// ```dart
  /// CustemImageNetwork(
  ///   height: 150.0,
  ///   width: 150.0,
  ///   imageUrl: 'https://example.com/image.jpg',
  ///   fit: BoxFit.cover,
  ///   borderRadius: BorderRadius.circular(10),
  /// )
  /// ```
  const CustemImageNetwork({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.fit,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fadeInDuration: const Duration(milliseconds: 500),
        fit: fit,
        height: height,
        width: width,
        imageUrl: imageUrl,
      ),
    );
  }
}
