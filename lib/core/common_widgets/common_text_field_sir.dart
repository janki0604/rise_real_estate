import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final TextCapitalization? textCapitalization;
  final TextInputType? textInputType;
  final bool? obscureText;
  final String? hintText;
  final bool? enabled;
  final bool? hidePrefix;
  final String? prefixImage;
  final String? suffixImage;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;

  const CommonTextField({
    Key? key,
    required this.textEditingController,
    this.textCapitalization,
    this.textInputType,
    this.obscureText,
    required this.hintText,
    this.enabled,
    required this.prefixImage,
    required this.suffixImage,
    this.focusNode,
    this.textInputAction,
    this.onEditingComplete,
    this.hidePrefix = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      autocorrect: false,
      autofocus: false,
      onTap: () {},
      onChanged: (value) {},
      onEditingComplete: onEditingComplete ?? () {},
      focusNode: focusNode,
      textInputAction: textInputAction ?? TextInputAction.next,
      textAlignVertical: TextAlignVertical.center,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      keyboardType: textInputType ?? TextInputType.multiline,
      obscureText: obscureText ?? false,
      cursorColor: const Color(0xFFA1A5C1),
      style: const TextStyle(
        color: Color(0xFF252B5C),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: const TextStyle(
            color: Color(0xFFA1A5C1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          isDense: true,
          enabled: enabled ?? true,
          filled: true,
          prefixIcon: hidePrefix!
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Image.asset(prefixImage ?? ""),
                )
              : SizedBox(),
          suffix: Image.asset("assets/icon_images/email_icon.png", width: 22),
          prefixIconConstraints:
              BoxConstraints(maxWidth: hidePrefix! ? 50 : 00),
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color(0xFF679F4E), width: 1.8)),
          enabledBorder: InputBorder.none,
          fillColor: Color(0xFFF5F4F8),),
    );
  }
}
