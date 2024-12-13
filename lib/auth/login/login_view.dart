import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/AppColors.dart';
import '../signup/sign_up_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // Ensures the body resizes when the keyboard appears
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF5EAEA),
                  Color(0xFFe56767),
                  Color(0xFFB23D3D),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Centered content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Center column vertically
              children: [
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Image.asset('assets/images/FIX.png')),
                Spacer(),
                Stack(
                  children: [
                    Image.asset('assets/images/engineeringPersonsImage.png'),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.8,
                              height: 65,
                              child: TextFormField(
                                style: TextStyle(
                                    color: AppColors.appPrimaryBlackColor),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.5),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.5),
                                  ),
                                  errorStyle: TextStyle(
                                      color: Colors.red, fontSize: 12),
                                  hintText: 'أدخل رقم الجوال',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFB0B0B0), fontSize: 14),
                                  hintTextDirection: TextDirection.rtl,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Subject cannot be empty';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.8,
                              height: 65,
                              child: TextFormField(
                                style: TextStyle(
                                    color: AppColors.appPrimaryBlackColor),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.5),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.5),
                                  ),
                                  errorStyle: TextStyle(
                                      color: Colors.red, fontSize: 12),
                                  hintText: 'أدخل كلمة المرور',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFB0B0B0), fontSize: 14),
                                  hintTextDirection: TextDirection.rtl,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Subject cannot be empty';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigate to the second screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => SignUpViewView()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    textDirection: TextDirection.rtl,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              'تذكرني على هذا الجهاز',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: AppColors.appWhiteColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.appWhiteColor,
                                border: Border.all(color: Colors.blue)),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Spacer(),
                      SizedBox(width: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'تسجيل مستخدم جديد',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: AppColors.appWhiteColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
