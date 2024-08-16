import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/views/confirm_phone_number.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class CreateNewPassword extends StatelessWidget {
  CreateNewPassword({super.key});
  final TextEditingController _userPasswordTextEditingController =
      TextEditingController();
    final TextEditingController _userConfirmPasswordTextEditingController =
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
                const Text(
                  'Create New Password',
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
                        controller: _userPasswordTextEditingController,
                        hintText: 'Enter new password',
                        labelText: 'Enter new password',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.lock,
                      ),
                      SizedBox(height:20),
                      UserInputTextFormField(
                        controller: _userConfirmPasswordTextEditingController,
                        hintText: 'Confirm new password',
                        labelText:'Confirm new password',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.lock,
                      ),
                    
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: 'Next >>',
                  height: 60,
                  width: 315,
                  borderRadius: 40.0,
                  onPressed: () {
                    Get.toNamed(Routes.confirmPhoneNumber);
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
