import 'package:amigo/Utils/Constant/color.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/Router/routes_import.gr.dart';
import '../../../Widgets/custom.textfield.dart';

@RoutePage()
class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final TextEditingController fNController = TextEditingController();
  final TextEditingController lNController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController uNController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            return Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                            onTap: () {
                              AutoRouter.of(context).back();
                            },
                            child: const Icon(Icons.arrow_back_ios)))),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Profile Details",
                    style: TextStyle(
                        color: MyColors.whiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 184),
                      height: 580.h,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                          color: MyColors.whiteColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.r),
                              topRight: Radius.circular(50.r))),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 40.h),

                              /* First Name */
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("First Name",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: MyColors.blackColor,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold))),
                              SizedBox(height: 10.h),
                              CustomTextField.customTextField(
                                  textEditingController: fNController,
                                  hintText: 'First Name',
                                  prefix: Icons.supervised_user_circle_rounded,
                                  textInputType: TextInputType.name),
                              SizedBox(height: 10.h),
                              /* Last Name */
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Last Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              CustomTextField.customTextField(
                                  textEditingController: lNController,
                                  hintText: 'Last Name',
                                  prefix: Icons.supervised_user_circle_rounded,
                                  textInputType: TextInputType.name),
                              SizedBox(height: 20.h),
                              /* Bio*/
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Bio",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              CustomTextField.customTextField(
                                  textEditingController: bioController,
                                  hintText: "Bio",
                                  prefix: Icons.note,
                                  textInputType: TextInputType.name),
                              SizedBox(height: 20.h),
                              /* UserName */
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "User Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: MyColors.blackColor,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              CustomTextField.customTextField(
                                  textEditingController: uNController,
                                  prefix: Icons.alternate_email_rounded,
                                  hintText: 'Username',
                                  textInputType: TextInputType.name),
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
                                        AutoRouter.of(context).push(
                                            const AccountTypeScreenRoute());
                                      },
                                      child: const Text("DONE",
                                          style: TextStyle(
                                              color: MyColors.whiteColor)))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 110,
                      child: CircleAvatar(
                        backgroundColor: MyColors.primaryColor,
                        radius: 70.r,
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg",
                                      scale: 1)),
                              color: MyColors.whiteColor,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
