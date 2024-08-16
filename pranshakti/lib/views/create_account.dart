import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/views/email_otp_verification.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/social_media_button.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';

import '../routes/routes.dart';

class CreateAccount extends StatelessWidget {
 CreateAccount({super.key});
  final TextEditingController _userNameTextEditingController =
      TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final padding =
        mediaQuery.viewInsets.bottom + mediaQuery.size.height * 0.05;

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
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _userNameTextEditingController,
                        //filled:true,
                        //prefixIcon: Icons.email,
                        hintText: 'Enter your email',
                        labelText: 'Enter your email',
                        borderRadius: BorderRadius.circular(20.0),
                        // fillColor: const Color.fromRGBO(247, 248, 248, 1),
                        // color: const Color.fromARGB(255, 239, 239, 239),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Send OTP',
                  height: 59,
                  width:248,
                  borderRadius: 40.0,
                  // gradient: const LinearGradient(
                  //   colors: [
                  //     Color.fromRGBO(146, 163, 253, 1),
                  //     Color.fromRGBO(157, 206, 255, 1),
                  //   ],
                  // ),
                  onPressed: () {
                    Get.toNamed(Routes.emailOtpVerification);
                  },
                ),
                const SizedBox(height: 80),
                const OrDivider(),
                const SizedBox(height: 50),
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
