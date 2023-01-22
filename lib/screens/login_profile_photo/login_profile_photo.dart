import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rise_real_estate/core/common_widgets/common_button.dart';
import 'package:rise_real_estate/core/common_widgets/common_ios_back_button.dart';
import 'package:rise_real_estate/core/common_widgets/common_skip_button.dart';
import 'package:rise_real_estate/core/common_widgets/common_text_field_.dart';

class LoginProfilePhoto extends StatefulWidget {
  const LoginProfilePhoto({Key? key}) : super(key: key);

  @override
  State<LoginProfilePhoto> createState() => _LoginProfilePhotoState();
}

class _LoginProfilePhotoState extends State<LoginProfilePhoto> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    }
    on PlatformException catch (e) {
      print("Failed to pick image $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double textSize = MediaQuery.textScaleFactorOf(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffffffff),
        body: Padding(
          padding: EdgeInsets.only(left: height / 40, right: height / 40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height / 50, bottom: height / 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonIosBackButton(),
                    CommonSkipButton(
                      isColor: Color(0xffF5F4F8),
                    ),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Fill your ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        // height: 1.5,
                        color: Color(0xff252B5C),
                      ),
                    ),
                    TextSpan(
                      text: 'information\n',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        // height: 1.5,
                        color: Color(0xff252B5C),
                      ),
                    ),
                    TextSpan(
                      text: 'below\n',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        // height: 1.5,
                        color: Color(0xff252B5C),
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nYou can edit this later on your account setting.',
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 20, bottom: height / 27),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipOval(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.black12,
                        child: image != null
                            ? Image.file(
                                image!,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              )
                            : Icon(
                                Icons.person,
                                size: 60,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) {
                            return SizedBox(
                              height: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    onPressed: () =>
                                        pickImage(ImageSource.camera),
                                    child: Text(
                                      "camera",
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      pickImage(ImageSource.gallery);
                                    },
                                    child: Text(
                                      "gallary",
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color(0xFF234F68), shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CommanTextField(
                suffixicon: Icon(
                  CupertinoIcons.person,
                  color: Color(0xff234F68),
                ),
                texthint: "Enter your name",
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 60, bottom: height / 60),
                child: CommanTextField(
                  prefixicon: Icon(
                    Icons.call,
                    color: Color(0xff234F68),
                  ),
                  texthint: "mobile number",

                  // prefixImage: Image.asset("assets/icon_images/Call.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height / 30),
                child: CommanTextField(
                  suffixicon: Icon(Icons.email_outlined),
                  texthint: "Enter your Email",
                ),
              ),
              CommonButton(
                height: height / 13,
                width: width / 1.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
