import 'package:flutter/material.dart';

class CommonIosBackButton extends StatelessWidget {
  // final double? height;
  // final double? width;
  final Color? color;

  const CommonIosBackButton({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 25,
      foregroundColor: const Color(0xff252B5C),
      backgroundColor: color ?? const Color(0xffF5F4F8),
      child: const Icon(
        Icons.arrow_back_ios_new,
        size: 18,
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CommonIosBackButton extends StatelessWidget {
//   final Color? color;
//   const CommonIosBackButton({super.key, this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       maxRadius: 25,
//       foregroundColor: const Color(0xff252B5C),
//       backgroundColor: color ?? const Color(0xffF5F4F8),
//       child: const Icon(
//         Icons.arrow_back_ios_new,
//       ),
//     );
//   }
// }
