import 'package:flutter/material.dart';
import 'package:rise_real_estate/core/common_widgets/common_skip_button.dart';

import '../../core/common_widgets/common_back_button.dart';
import '../../core/common_widgets/common_button.dart';
import '../../core/common_widgets/common_ios_back_button.dart';
import '../../core/common_widgets/common_text_field_.dart';
import '../../core/common_widgets/rich_text.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: const [
            CommonButton(
                //_____________ HOW TO USE : ______________//
                // width: 200,
                // icon: Icon(Icons.email_outlined, color: Colors.black),
                // text: "fnbbb",
                ),
            SizedBox(
              height: 50,
            ),
            CommonSkipButton(
                //_____________ HOW TO USE : ______________//
                // isColor: Colors.amberAccent,
                ),
            SizedBox(
              height: 50,
            ),
            CommonBackButton(
                //_____________ HOW TO USE : ______________//
                // width: 50,  // non required
                // height: 50, // non required
                ),
            SizedBox(
              height: 50,
            ),
            CommonIosBackButton(
                // color: ,
                ),
            SizedBox(
              height: 50,
            ),
            CommanTextField(),
            SizedBox(
              height: 50,
            ),
            RichTextScreen(),
          ],
        ),
      ),
    );
  }
}
