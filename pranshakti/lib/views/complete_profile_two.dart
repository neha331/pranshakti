import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/homepage.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';
import 'package:intl/intl.dart';

class CompleteProfileTwo extends StatelessWidget {
  CompleteProfileTwo({super.key});
  final TextEditingController _genderTextEditingController =
      TextEditingController();
      final TextEditingController _bithDateTextEditingController =
      TextEditingController();
  final TextEditingController _weightTextEditingController =
      TextEditingController();  
  final TextEditingController _heightTextEditingController =
      TextEditingController();       
        
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final padding = mediaQuery.viewInsets.bottom + mediaQuery.size.height * 0.05;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(bottom: padding),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Pranshakti Logo SVG 1.png',
                  height: mediaQuery.size.height * 0.25,
                  width: mediaQuery.size.width * 0.5,
                ),
                const SizedBox(height: 30),
                const CustomTextWidget(
                  text:AppStrings.completeProfile,
                  fontSize: 20,
                  fontWeight: FontWeight.w700, 
                ),
                const CustomTextWidget(
                  text:AppStrings.profileText,
                  fontSize: 12,
                  fontWeight: FontWeight.w400, 
                ),
                const SizedBox(height: 30),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _genderTextEditingController,
                        labelText: AppStrings.chooseGender,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.person_outline_outlined,
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        child: UserInputTextFormField(
                          controller: _bithDateTextEditingController,
                          labelText: AppStrings.dateOfBirth,
                          borderRadius: BorderRadius.circular(20.0),
                          prefixIcon:Icons.date_range_sharp,
                        ),
                        onTap: () {

                        }
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UserInputTextFormField(
                            controller: _weightTextEditingController,
                            labelText: AppStrings.weight,
                            borderRadius: BorderRadius.circular(20.0),
                            prefixIcon:Icons.monitor_weight_outlined,
                          ),
                          SizedBox(width:20),
                          Container(
                            height:48,
                            width:48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                colors: [
                                   Color.fromRGBO(197, 139, 242, 1),
                                   Color.fromRGBO(238, 164, 206, 1),
                                ]
                              )
                              ),
                              child:Align(
                                alignment: Alignment.center,
                                child: const CustomTextWidget(
                                    text:AppStrings.weightInkg,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500, 
                                    color: Colors.white,
                                ),
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          UserInputTextFormField(
                            controller: _heightTextEditingController,
                            labelText: AppStrings.height,
                            borderRadius: BorderRadius.circular(20.0),
                            prefixIcon:Icons.height_rounded,
                          ),
                          SizedBox(width:20),
                          Container(
                            height:48,
                            width:48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: LinearGradient(
                                colors: [
                                   Color.fromRGBO(197, 139, 242, 1),
                                   Color.fromRGBO(238, 164, 206, 1),
                                ]
                              )
                              ),
                              child:Align(
                                alignment: Alignment.center,
                                child: const CustomTextWidget(
                                    text:AppStrings.heightInCM,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500, 
                                    color: Colors.white,
                                ),
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ]
              ),
              ),
                CustomButton(
                  text: AppStrings.register,
                  height: 60,
                  //width: mediaQuery.size.width * 0.14,
                  width:315,
                  borderRadius: 40.0,
                  onPressed: () {
                    Get.toNamed(Routes.homePage);
                  },
                ),
                
              ] 
            ),
          ),
        ),
      ),
    );
  }
}
