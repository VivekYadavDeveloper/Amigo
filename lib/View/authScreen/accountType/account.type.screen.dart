import 'dart:math';

import 'package:amigo/Utils/Constant/color.dart';
import 'package:amigo/Utils/Router/routes_import.gr.dart';
import 'package:amigo/Widgets/custom.circle.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountTypeScreen extends StatefulWidget {
  const AccountTypeScreen({super.key});

  @override
  State<AccountTypeScreen> createState() => _AccountTypeScreenState();
}

class _AccountTypeScreenState extends State<AccountTypeScreen> {
  List<Map> items = [
    {
      'image':
          'https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg',
      'name': 'Business account'
    },
    {
      'image':
          'https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg',
      'name': 'Family account'
    },
    {
      'image':
          'https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg',
      'name': 'Influencer account'
    },
    {
      'image':
          'https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg',
      'name': 'Premium account'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1.0,
                            // childAspectRatio: 16 / 9,
                          ),
                          itemBuilder: (context, index) {
                            Map item = items[index];
                            return Center(
                                child: InkWell(
                                    onTap: () {
                                      AutoRouter.of(context)
                                          .push(ChatHomeListScreenRoute());
                                      print(item['name']);
                                    },
                                    child: customCircle(
                                        item['image'], item['name'])));
                          }),
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }
}
