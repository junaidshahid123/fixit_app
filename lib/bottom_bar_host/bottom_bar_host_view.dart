import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../constants/AppColors.dart';
import 'bottom_bar_host_logic.dart';

class BottomBarHostView extends StatelessWidget {
  const BottomBarHostView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarHostController>(
        init: BottomBarHostController(),
        builder: (logic) {
          return Scaffold(
              backgroundColor: AppColors.appWhiteColor,
              body: SafeArea(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: [
                        buildAppBar(logic),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // Align text to center
                                  children: [
                                    Text(
                                      'مرحباً فلان...',
                                      style: TextStyle(
                                        color: AppColors.bottomBarColor,
                                        fontSize: 14,
                                        // Adjust font size
                                        fontWeight: FontWeight.w400,
                                        // Optional: Make the text bold
                                        fontFamily:
                                            'Zen Dots', // Optional: Change the font family
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors
                                              .highlightColor, // Replace with desired color or widget
                                        ),
                                        height: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          // Centers the content vertically
                                          // crossAxisAlignment: CrossAxisAlignment.center, // Centers the content horizontally
                                          children: [
                                            Spacer(),
                                            Image.asset(
                                              'assets/images/dollarSign.png',
                                              // Replace with your image path
                                              height: 70,
                                              // Adjust the size of the image
                                              width: 70,
                                              // Adjust the width of the image
                                              fit: BoxFit
                                                  .fitHeight, // Optional: Adjust image fit
                                            ),
                                            Spacer(),
                                            // Space between image and text
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 20),
                                              child: Text(
                                                'رصيد النقاط 348112.00',
                                                // Replace with your text
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  // Optional: Change text style
                                                  color: AppColors
                                                      .bottomBarColor, // Optional: Set text color
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 15),
                                    // 5-pixel space between the second and third container
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors
                                              .highlightColor, // Replace with desired color or widget
                                        ),
                                        height: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          // Centers the content vertically
                                          // crossAxisAlignment: CrossAxisAlignment.center, // Centers the content horizontally
                                          children: [
                                            Spacer(),
                                            Image.asset(
                                              'assets/images/scrollIcon.png',
                                              // Replace with your image path
                                              height: 70,
                                              // Adjust the size of the image
                                              width: 70,
                                              // Adjust the width of the image
                                              fit: BoxFit
                                                  .fitHeight, // Optional: Adjust image fit
                                            ),
                                            Spacer(),
                                            // Space between image and text
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 20),
                                              child: Text(
                                                'لديك 4 طلبات',
                                                // Replace with your text
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  // Optional: Change text style
                                                  color: AppColors
                                                      .bottomBarColor, // Optional: Set text color
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    // 5-pixel space between the second and third container
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors
                                              .highlightColor, // Replace with desired color or widget
                                        ),
                                        height: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          // Centers the content vertically
                                          // crossAxisAlignment: CrossAxisAlignment.center, // Centers the content horizontally
                                          children: [
                                            Spacer(),
                                            Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Image.asset(
                                                  'assets/images/bellIcon.png',
                                                  // Replace with your image path
                                                  height: 70,
                                                  // Adjust the size of the image
                                                  width: 70,
                                                  // Adjust the width of the image
                                                  fit: BoxFit
                                                      .fitHeight, // Optional: Adjust image fit
                                                ),
                                                Image.asset(
                                                  'assets/images/ellipseIcon.png',
                                                  // Replace with your image path
                                                  height: 30,
                                                  // Adjust the size of the image
                                                  width: 30,
                                                  // Adjust the width of the image
                                                  fit: BoxFit
                                                      .fitHeight, // Optional: Adjust image fit
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            // Space between image and text
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 20),
                                              child: Text(
                                                'يوجد تنبيهات جديدة',
                                                // Replace with your text
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  // Optional: Change text style
                                                  color: AppColors
                                                      .bottomBarColor, // Optional: Set text color
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // Align text to center
                                  children: [
                                    Text(
                                      'أحدث العروض',
                                      style: TextStyle(
                                        color: AppColors.bottomBarColor,
                                        fontSize: 14,
                                        // Adjust font size
                                        fontWeight: FontWeight.w400,
                                        // Optional: Make the text bold
                                        fontFamily:
                                            'Zen Dots', // Optional: Change the font family
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  // Makes the list horizontal
                                  itemCount: 10,
                                  // Number of items in the list
                                  itemBuilder: (context, index) {
                                    return Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Image.asset(
                                          'assets/images/dummyImage.png',
                                          fit: BoxFit.fill,
                                        ));
                                  },
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // Align text to center
                                  children: [
                                    Text(
                                      'آخر الخدمات المضافة',
                                      style: TextStyle(
                                        color: AppColors.bottomBarColor,
                                        fontSize: 14,
                                        // Adjust font size
                                        fontWeight: FontWeight.w400,
                                        // Optional: Make the text bold
                                        fontFamily:
                                            'Zen Dots', // Optional: Change the font family
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 200,
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  // Makes the list horizontal
                                  itemCount: 10,
                                  // Number of items in the list
                                  itemBuilder: (context, index) {
                                    return
                                      Container(
                                      margin:
                                          EdgeInsets.only(left: 10, bottom: 20),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.bottomBarColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          // Start from the right
                                          children: [
                                            // First image container of 50x50
                                            // Container(
                                            //   decoration: BoxDecoration(
                                            //     borderRadius: BorderRadius.circular(25), // Make it circular
                                            //   ),
                                            //   width: 20,
                                            //   height: 20,
                                            //  child: Icon(Icons.three),
                                            // ),
                                            SizedBox(width: 10),
                                            // Space between image and text
                                            // Text in the middle
                                            Text(
                                              'آخر الخدمات المضافة آخر الخدمات ',
                                              // Replace with your text
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors
                                                    .black, // Set your text color
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            // Space between text and image
                                            // Second image container
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25), // Make it circular
                                              ),
                                              width: 50,
                                              height: 50,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(25), // Ensures the image is also circular
                                                child: Image.asset(
                                                  'assets/images/dummyImage.png', // Replace with your image path
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ))),
                      ],
                    ),
                    buildBottomBar(logic, context)
                  ],
                ),
              ));
        });
  }

  Widget buildAppBar(BottomBarHostController logic) {
    return InkWell(
      onTap: () {
        // logic.isCurrencyDropDown.value = false;
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(color: AppColors.highlightColor),
        child: Row(
          children: [
            // Left widget (logo)
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/FIX.png',
                  color: AppColors.bottomBarColor,
                ),
              ),
            ),
            // Name widget (centered)
            Expanded(
              child: Center(
                child: buildName(logic),
              ),
            ),
            // Right widget (burger icon with reduced size)
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 30),
                child: Image.asset(
                  'assets/images/burgerIcon.png',
                  height: 30, // Adjust size here
                  width: 30, // Adjust size here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildName(BottomBarHostController logic) {
    return Text(
      'الصفحة الرئيسية',
      style: TextStyle(
          color: AppColors.bottomBarColor,
          fontWeight: FontWeight.w400,
          fontSize: 16),
    );
  }

  Widget buildSideBarOption(
      BuildContext context, BottomBarHostController logic) {
    return Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
            // logic.isCurrencyDropDown.value = false;
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 40.sp,
                width: 40.sp,
                child: Image.asset('assets/images/ellipse.png'),
              ),
              Container(
                height: 15,
                width: 15,
                child: Image.asset('assets/images/menuLines.png'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildBottomBar(BottomBarHostController logic, BuildContext context) {
    return Container(
      // color: AppColors.highlightColor,
      height: 100, // Adjust height to fit all widgets properly
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        // Align widgets to the bottom
        children: [
          Expanded(child: buildProfileOption(logic, context)),
          Container(
            width: 0.5,
            height: 70, // Match the total height of widgets
            color: AppColors.appWhiteColor,
          ),

          Expanded(child: buildLetterOption(logic, context)),
          Container(
            width: 0.5,
            height: 70, // Match the total height of widgets

            color: AppColors.appWhiteColor,
          ),
          Expanded(child: buildHandShakeOption(logic, context)),
          // Handshake widget
          Container(
            width: 0.5,
            height: 70, // Match the total height of widgets

            color: AppColors.appWhiteColor,
          ),
          Expanded(child: buildBagOption(logic, context)),
          Container(
            width: 0.5,
            height: 70, // Match the total height of widgets

            color: AppColors.appWhiteColor,
          ),
          Expanded(child: buildHomeOption(logic, context)),
        ],
      ),
    );
  }

  Widget buildHomeOption(BottomBarHostController logic, BuildContext context) {
    return InkWell(
        onTap: () {
          logic.makeHome();
        },
        child: Container(
          height: 70,
          color: logic.home.value == true
              ? AppColors.highlightColor
              : AppColors.bottomBarColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 20.5,
                width: 20.5,
                child: Image.asset(
                  'assets/images/homeIcon.png',
                  color: logic.home.value == true
                      ? AppColors.bottomBarColor
                      : AppColors.highlightColor,
                )),
          ),
        ));
  }

  Widget buildLetterOption(
      BottomBarHostController logic, BuildContext context) {
    return InkWell(
        onTap: () {
          logic.makeLetter();
        },
        child: Container(
          height: 70,
          color: logic.letter.value == true
              ? AppColors.highlightColor
              : AppColors.bottomBarColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 20.5,
                width: 20.5,
                child: Image.asset(
                  'assets/images/letterIcon.png',
                  color: logic.letter.value == true
                      ? AppColors.bottomBarColor
                      : AppColors.highlightColor,
                )),
          ),
        ));
  }

  Widget buildHandShakeOption(
      BottomBarHostController logic, BuildContext context) {
    return InkWell(
      onTap: () {
        logic.makeHandShake();
      },
      child: Column(
        children: [
          // Extended container at the top
          Container(
            height: 30, // Height of the extended container
            decoration: BoxDecoration(
              color: AppColors.bottomBarColor, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100), // Rounded corners
                topRight: Radius.circular(100),
              ),
            ),
          ),
          // Main handshake option container
          Container(
            height: 70, // Same height as other options
            color: logic.handShake.value == true
                ? AppColors.highlightColor // Highlight when active
                : AppColors.bottomBarColor, // Default color
            child: Center(
              child: Container(
                height: 45,
                width: 45,
                child: Image.asset(
                  'assets/images/handShakeIcon.png',
                  color: logic.handShake.value == true
                      ? AppColors.bottomBarColor
                      : AppColors
                          .highlightColor, // Change icon color based on state
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBagOption(BottomBarHostController logic, BuildContext context) {
    return InkWell(
        onTap: () {
          logic.makeBag();
        },
        child: Obx(() => Container(
              height: 70,
              color: logic.bag.value == true
                  ? AppColors.highlightColor
                  : AppColors.bottomBarColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 20.5,
                    width: 20.5,
                    child: Image.asset(
                      'assets/images/bagIcon.png',
                      color: logic.bag.value == true
                          ? AppColors.bottomBarColor
                          : AppColors.highlightColor,
                    )),
              ),
            )));
  }

  Widget buildProfileOption(
      BottomBarHostController logic, BuildContext context) {
    return InkWell(
        onTap: () {
          logic.makeProfile();
        },
        child: Container(
          height: 70,
          color: logic.profile.value == true
              ? AppColors.highlightColor
              : AppColors.bottomBarColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 20.5,
                width: 20.5,
                child: Image.asset(
                  'assets/images/profileIcon.png',
                  color: logic.profile.value == true
                      ? AppColors.bottomBarColor
                      : AppColors.highlightColor,
                )),
          ),
        ));
  }
}
