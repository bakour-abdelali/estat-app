import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

final gridDelegate = SliverWovenGridDelegate.count(
  crossAxisCount: 2,
  mainAxisSpacing: 8,
  crossAxisSpacing: 8,
  pattern: [
    const WovenGridTile(1),
    const WovenGridTile(
      5 / 7,
      crossAxisRatio: 1,
      alignment: AlignmentDirectional.centerEnd,
    ),
  ],
);
