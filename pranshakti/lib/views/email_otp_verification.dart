import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/create_new_password.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class EmailOtpVerification extends StatelessWidget {
  EmailOtpVerification({super.key});
  final TextEditingController _userEmailTextEditingController =
      TextEditingController();
      final TextEditingController _userEmailOtpTextEditingController =
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
                const SizedBox(height: 20),
                
                const CustomTextWidget(
                      text:AppStrings.createAccount,
                      fontSize: 24,
                      fontWeight: FontWeight.w600, 
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _userEmailTextEditingController,
                        labelText: AppStrings.email,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 20),
                
                      UserInputTextFormField(
                        controller: _userEmailOtpTextEditingController,
                        labelText: AppStrings.enterEmailOtp,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon: Icons.lock_outline,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: CustomButton(
                    text: AppStrings.reSendOtp,
                    height: 50,
                    width: 120,
                    borderRadius: 40.0,
                    onPressed: () {
                      print('Send OTP button pressed');
                    },
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: AppStrings.next,
                  height: 60,
                  width: 315,
                  borderRadius: 40.0,
                  onPressed: () {
                    Get.toNamed(Routes.createNewPassword);
                  },
                ),
                const SizedBox(height: 20),
                const OrDivider(),
                const SizedBox(height: 20),
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
