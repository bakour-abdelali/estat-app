import 'package:flutter/material.dart';

// Widget cstu SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10.0,
//                     mainAxisSpacing: 16.0,
// //                   ),
// class CsutemGridDelegate extends SliverGridDelegateWithFixedCrossAxisCount {
//   CsutemGridDelegate({required super.crossAxisCount});

//   @override
//   Widget build(BuildContext context) {

//     return const SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       crossAxisSpacing: 10.0,
//       mainAxisSpacing: 16.0,
//     );
//   }
// }

SliverGridDelegateWithFixedCrossAxisCount csutemGridDelegate() =>
    const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 1,
    );
