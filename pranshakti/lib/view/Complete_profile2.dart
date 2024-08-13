import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pranshakti/view/homepage.dart';
import 'package:pranshakti/widgets/Or_divider.dart';
import 'package:pranshakti/widgets/UserInputTextFormField.dart';
import 'package:pranshakti/widgets/custom_button.dart';
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
                const Text(
                  'Let’s complete your profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'It will help us to know more about you!',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInputTextFormField(
                        controller: _genderTextEditingController,
                        labelText: 'Choose Gender',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.person,
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        child: UserInputTextFormField(
                          controller: _bithDateTextEditingController,
                          labelText: 'Date of Birth',
                          borderRadius: BorderRadius.circular(20.0),
                          prefixIcon:Icons.date_range_sharp,
                        ),
                        onTap: () {

                        }
                      ),

                     
                      const SizedBox(height: 20),
                      UserInputTextFormField(
                        controller: _weightTextEditingController,
                        labelText: 'Your Weight',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.monitor_weight_outlined,
                      ),
                      const SizedBox(height: 20),
                      UserInputTextFormField(
                        controller: _heightTextEditingController,
                        labelText: 'Your Height',
                        borderRadius: BorderRadius.circular(20.0),
                        prefixIcon:Icons.height_rounded,
                      ),
                      const SizedBox(height: 20),
                    ]
              ),
                  ),
                CustomButton(
                  text: 'Register',
                  height: 60,
                  //width: mediaQuery.size.width * 0.14,
                  width:315,
                  borderRadius: 40.0,
                  onPressed: () {
                
                  },
                ),
                ElevatedButton(
                  child: Text('Go to New Screen'),
                  onPressed: () {
                    Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => HomePage()),
                 ); 
                 }
                )
              ] 
            ),
          ),
        ),
      ),
    );
  }
}
