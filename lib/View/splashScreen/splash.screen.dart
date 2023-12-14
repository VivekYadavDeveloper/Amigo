import 'dart:async';

import 'package:amigo/Utils/Router/routes_import.gr.dart';
import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/Constant/color.dart';
import '../../Utils/Constant/string.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      AutoRouter.of(context)
          .replace(RegistrationScreenRoute(title: "A M I G O"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: FadedScaleAnimation(
                  child: Text(
                    MyStrings.apptite,
                    style: const TextStyle(
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "App SubTitle",
                  // MyStrings.appSubTitle,
                  style: GoogleFonts.italianno(
                    textStyle: const TextStyle(
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
