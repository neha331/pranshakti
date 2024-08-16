import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/views/create_new_password.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
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
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _userEmailTextEditingController,
                        hintText: 'Email',
                        labelText: 'Email',
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      const SizedBox(height: 20),
                
                      UserInputTextFormField(
                        controller: _userEmailOtpTextEditingController,
                        hintText: 'Enter OTP',
                        labelText: 'Enter OTP',
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: CustomButton(
                    text: 'Resend OTP',
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
                  text: 'Next >>',
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
                const Text('Already have an account? Login'),
                const SizedBox(height: 10),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
