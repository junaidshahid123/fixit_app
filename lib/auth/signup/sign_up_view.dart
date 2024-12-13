import 'package:fix_it_app/bottom_bar_host/bottom_bar_host_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants/AppColors.dart';

class SignUpViewView extends StatelessWidget {
  const SignUpViewView({super.key});

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
          //  Centered content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Center column vertically
              children: [
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Image.asset('assets/images/FIX.png')),
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "أهلاً بك، يبدو أن هذا هو استخدامك الأول لخدماتنا، واثقون أنها ستنال إعجابك وتكون خير معين لك، نرجو أن تملأ المعلومات التالية:",
                      style: TextStyle(
                        fontSize: 18, // Set the text size
                        color: AppColors.appWhiteColor,
                        fontWeight: FontWeight.bold, // Set the font weight
                        height: 1.5, // Set line height for readability
                      ),
                      textAlign: TextAlign.center, // Center align the text
                    )),
                Spacer(),
                Column(
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
                          hintText: 'البريد الإلكتروني (اختياري)',
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
                          hintText: 'رقم الجوال',
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
                          hintText: 'الاسم الكامل',
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
                          hintText: 'تأكيد كلمة المرور',
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
                          hintText: 'كلمة المرور',
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
                InkWell(
                  onTap: (){
                    Get.to(()=>BottomBarHostView());
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
                        'ابدأ الآن',
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
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'هل أنت مسجل لدينا بالفعل؟ اكتب رقم هاتفك الذي سجلت به',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: AppColors.appWhiteColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
