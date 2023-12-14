import 'package:amigo/Utils/Router/routes_import.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../Utils/Constant/color.dart';

@RoutePage()
class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  var otp = "";

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).back();
                          },
                          child: Icon(Icons.arrow_back_ios)),
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Icon(Icons.password_outlined, size: 100.h),
                  SizedBox(height: 77.h),
                  Container(
                    height: 596.h,
                    width: constraints.maxWidth,
                    decoration: BoxDecoration(
                        color: MyColors.whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.r),
                            topRight: Radius.circular(50.r))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40.h),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "VERIFICATION CODE",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Please Enter Your Verification Code Sent To Your Give Mobile Number",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: MyColors.blackColor,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 20.h),
                          Form(
                            key: _formKey,
                            child: Pinput(
                              controller: pinController,
                              length: 4,
                              onChanged: (pin) {
                                otp = pin;
                              },
                              onCompleted: (pin) {
                                print("Completed: $pin");
                              },
                            ),
                          ),
                          SizedBox(height: 40.h),
                          SizedBox(
                            height: 50.h,
                            width: double.maxFinite.w,
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        MyColors.primaryColor),
                              ),
                              onPressed: () {
                                AutoRouter.of(context)
                                    .push(const ProfileDetailScreenRoute());
                              },
                              child: const Text(
                                "Submit",
                                style: TextStyle(color: MyColors.whiteColor),
                              ),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Re-Send OTP.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: MyColors.blackColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
