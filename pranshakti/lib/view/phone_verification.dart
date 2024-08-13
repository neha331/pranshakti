import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/view/complete_profile_one.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class PhoneVerification extends StatelessWidget {
  PhoneVerification({super.key});
  final TextEditingController _verifyPhoneTextEditingController =
      TextEditingController();
  final TextEditingController _EnterPhoneOTPTextEditingController =
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
                const SizedBox(height: 10),
                const Text(
                  'Verify phone number',
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
                        controller: _verifyPhoneTextEditingController,
                        hintText: 'Enter phone number without country code',
                        labelText: 'Enter phone number without country code',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.phone,
                      ),
                      const SizedBox(height: 30),
           
                      UserInputTextFormField(
                        controller: _EnterPhoneOTPTextEditingController,
                        hintText: 'Enter OTP sent on your phone',
                        labelText: 'Enter OTP sent on your phone',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.lock,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
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
                const SizedBox(height: 20),
                CustomButton(
                  text: 'Next >',
                  height: 59,
                  width: 315,
                  borderRadius: 40.0,
                  onPressed: () {
                    print('Send OTP button pressed');
                  },
                ),
                const SizedBox(height: 20),
                const OrDivider(),
                const SizedBox(height: 30),
                const SocialMediaButtons(),
                const SizedBox(height: 30),
                const Text('Already have an account? Login'),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Go to New Screen'),
                  onPressed: () {
                    Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => CompleteProfileOne()),
                 ); 
                 }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
