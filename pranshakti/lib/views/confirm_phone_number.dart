import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/phone_verification.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class ConfirmPhoneNumber extends StatelessWidget {
  ConfirmPhoneNumber({super.key});
  final TextEditingController _addPhoneNumberTextEditingController =
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
                  text: AppStrings.addPhoneNumber,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                const SizedBox(height: 30),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _addPhoneNumberTextEditingController,
                        labelText: AppStrings.enterPhoneNumber,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.phone_outlined,
                      ),
                     
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: AppStrings.sendOtp,
                  height: 59,
                  width: 248,
                  borderRadius: 40.0,
                  onPressed: () {
                    print('Send OTP button pressed');
                  },
                ),
                const SizedBox(height:20),
                CustomButton(
                  text: AppStrings.skip,
                  height: 50,
                  width: 123,
                  borderRadius: 35.0,
                  color: Color.fromARGB(255, 58, 14, 139),
                  onPressed: () {
                    Get.toNamed(Routes.phoneVerification);
                  },
                ),
                const SizedBox(height: 80),
                const OrDivider(),
                const SizedBox(height: 50),
                const SocialMediaButtons(),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text:AppStrings.alreadyAccount,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      text:AppStrings.login,
                      fontSize: 14,
                      fontWeight: FontWeight.w500, 
                      color: Constants.colorPurple,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
