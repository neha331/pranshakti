import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/routes/routes.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/complete_profile_two.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/social_media_button.dart';

class CompleteProfileOne extends StatelessWidget {
  CompleteProfileOne({super.key});
  final TextEditingController _firstNameTextEditingController =
      TextEditingController();
  final TextEditingController _lastNameTextEditingController =
      TextEditingController();  
  final TextEditingController _addressTextEditingController =
      TextEditingController();       
  final TextEditingController _occupationTextEditingController =
      TextEditingController();  
  final TextEditingController _pincodeTextEditingController =
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
                        controller: _firstNameTextEditingController,
                        labelText: AppStrings.firestName,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.person_outline_outlined,
                      ),
                      const SizedBox(height: 20),
                      UserInputTextFormField(
                        controller: _lastNameTextEditingController,
                        labelText: AppStrings.lastName,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.person_outline_outlined,
                      ),
                      const SizedBox(height: 20),
                      UserInputTextFormField(
                        controller: _addressTextEditingController,
                        labelText: AppStrings.address,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.pin_drop_outlined,
                      ),
                      const SizedBox(height: 20),
                      UserInputTextFormField(
                        controller: _occupationTextEditingController,
                        labelText: AppStrings.occupation,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.work_outline_rounded,
                      ),
                      const SizedBox(height: 20),
                      UserInputTextFormField(
                        controller: _pincodeTextEditingController,
                        labelText: AppStrings.pincode,
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.pin
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: AppStrings.next,
                  height: 50,
                  width: 315,
                  borderRadius: 40.0,
                  onPressed: () {
                    Get.toNamed(Routes.completeProfileTwo);
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
