import 'package:amigo/Utils/Constant/color.dart';
import 'package:amigo/Utils/Router/routes_import.gr.dart';
import 'package:amigo/Widgets/custom.textfield.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key, required this.title});

  final String title;

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController phoneController = TextEditingController();
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.app_registration_rounded,
                  size: 100.h,
                ),
                SizedBox(height: 77.h),
                Container(
                  height: 665.h,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                      // boxShadow: const <BoxShadow>[
                      //   BoxShadow(
                      //       color: Colors.black,
                      //       blurRadius: 5,
                      //       spreadRadius: 1,
                      //       offset: Offset(4, 0))
                      // ],
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
                          alignment: Alignment.topLeft,
                          child: Text(
                            "REGISTRATION",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: MyColors.blackColor,
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Lets Get Your Mobile Number Verified",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: MyColors.blackColor,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Please Enter The Your Mobile Number To Receive The OTP Verification Code",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: MyColors.blackColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 60.h,
                          width: double.maxFinite.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: MyColors.blackColor,
                            ),
                          ),
                          child: const Row(
                            children: <Widget>[
                              Expanded(
                                child: CountryCodePicker(
                                  closeIcon:
                                      Icon(Icons.keyboard_arrow_up_rounded),
                                  initialSelection: "IN",
                                  favorite: ['+91', 'IN'],
                                  showCountryOnly: false,
                                  // optional. Shows only country name and flag when popup is closed.
                                  showOnlyCountryWhenClosed: false,
                                  // optional. aligns the flag and the Text left
                                  alignLeft: true,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        CustomTextField.customTextField(
                            prefix: Icons.phone_android_rounded,
                            textEditingController: phoneController,
                            hintText: 'Phone Number',
                            textInputType: TextInputType.phone),
                        SizedBox(height: 20.h),
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
                                      .push(const OTPScreenRoute());
                                },
                                child: const Text("Send OTP",
                                    style: TextStyle(
                                        color: MyColors.whiteColor)))),
                        Text(
                          "By Signing Up",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: MyColors.blackColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        CheckboxListTile(
                          value: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                          title:
                              const Text("You Agree To This Terms of Services"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
