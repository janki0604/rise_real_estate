import 'package:flutter/material.dart';

class CommonBackButton extends StatelessWidget {
  final double? height;
  final double? width;
  const CommonBackButton({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height ?? MediaQuery.of(context).size.height / 14,
      width: width ?? MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xffFFFFFF),
      ),
      child: const Icon(Icons.arrow_back),
    );
  }
}
