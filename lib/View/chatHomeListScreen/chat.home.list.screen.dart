import 'package:amigo/Utils/Constant/color.dart';
import 'package:amigo/View/chatHomeListScreen/widget/drawer.widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ChatHomeListScreen extends StatefulWidget {
  const ChatHomeListScreen({super.key});

  @override
  State<ChatHomeListScreen> createState() => _ChatHomeListScreenState();
}

class _ChatHomeListScreenState extends State<ChatHomeListScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: AppBar(
        title: Text(
          "Hi, Tiger!",
          style: TextStyle(fontSize: 18.sp, color: MyColors.whiteColor),
        ),
        elevation: 0,
        backgroundColor: MyColors.primaryColor,
      ),
      drawer: Drawer(
        backgroundColor: MyColors.primaryColor,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: const BoxDecoration(color: MyColors.secondaryColor),
                child: Column(
                  children: <Widget>[
                    drawerCircle("imgVal", "Tiger", "tiger@gmail.com")
                  ],
                )),
            ListTile(
              leading: Icon(Icons.account_circle_rounded,
                  size: 30.h, color: MyColors.whiteColor),
              title: Text(
                'Profile',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor),
              ),
              onTap: () {},
            ),
            ListTile(
              leading:
                  Icon(Icons.settings, size: 30.h, color: MyColors.whiteColor),
              title: Text(
                'Setting',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout_rounded,
                  size: 30.h, color: MyColors.whiteColor),
              title: Text(
                'Log out',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("You Received",
                          style: TextStyle(
                              fontSize: 18.sp, color: MyColors.whiteColor)),
                      SizedBox(height: 10.h),
                      Text("48 Messages",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 4,
                              decorationColor: MyColors.whiteColor,
                              fontSize: 18.sp,
                              color: MyColors.whiteColor,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.h),
                      Text("Online",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: MyColors.whiteColor,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.h),
                      Text("Everyone's sleeping",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: MyColors.whiteColor,
                              fontWeight: FontWeight.bold)),
                      Container(
                        color: MyColors.blackColor,
                        height: 110,
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            ListView.builder(itemBuilder: (context, index) {})
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
                        TabBar(controller: tabController, tabs: [
                          Icon(Icons.search, size: 24.h),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Direct Message" " " + " " "0",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Group" " " + " " "0",
                                style: TextStyle(fontSize: 12.sp),
                              )),
                        ]),
                        Icon(
                          Icons.message_rounded,
                          color: MyColors.primaryColor,
                          size: 55.h,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
