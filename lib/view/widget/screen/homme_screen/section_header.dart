import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;

  const SectionHeader({
    super.key,
    required this.title,
    required this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        GestureDetector(
          onTap: onSeeAll,
          child: Text(
            "See All",
            style: TextStyle(
                fontSize: 18,
                color: Colors.blue[300],
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
