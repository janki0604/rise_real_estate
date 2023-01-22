import 'package:flutter/cupertino.dart';

class CommonSkipButton extends StatelessWidget {
  final Color? isColor;
  final double? height;
  final double? width;
  const CommonSkipButton({super.key, this.isColor, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height ?? MediaQuery.of(context).size.height / 18,
      width: width ?? MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: isColor ?? const Color(0xffDFDFDF),
      ),
      child: const Text(
        "Skip",
      ),
    );
  }
}
