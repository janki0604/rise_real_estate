import 'package:flutter/material.dart';

class CommanTextField extends StatelessWidget {
  final String? texthint;
  final Image? iconImage;
  final Image? prefixImage;
  final Color? bordercolor;
  final Icon? suffixicon;
  final Icon? prefixicon;

  const CommanTextField({
    Key? key,
    this.texthint = "",
    this.bordercolor,
    this.suffixicon,
    this.iconImage,
    this.prefixicon,
    this.prefixImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(top: 25, bottom: 25, right: 5, left: 15),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: suffixicon,
        prefixIcon: Image.asset("assets/icon_images/Call.png"),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: bordercolor ?? const Color(0XFF1F4C6B),
          ),
        ),
        filled: true,
        fillColor: const Color(0XFFF5F4F8),
        hintText: texthint,
      ),
    );
  }
}
