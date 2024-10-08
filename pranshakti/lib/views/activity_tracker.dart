import 'package:flutter/material.dart';
import 'package:pranshakti/utils/constants.dart';
import 'package:pranshakti/views/profile.dart';
import 'package:pranshakti/widgets/custom_text_widget.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';
import 'package:pranshakti/widgets/workout_tracker/line_chart.dart';

class ActivityTrackerPage extends StatelessWidget {
  const ActivityTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:CustomTextWidget(
                  text:AppStrings.activityTrackerstr,
                  fontSize: 16,
                  fontWeight: FontWeight.w700, 
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      height: 139,
                      width: 315,
                      decoration: BoxDecoration(
                        //color: (Color.fromRGBO(157, 206, 255, 1)),
                        borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(146, 163, 253, 1),
                            Color.fromRGBO(157, 206, 255, 1),
                          ]
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Row(
                            children: [
                              const CustomTextWidget(
                  text: AppStrings.todaysTarget,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                              Spacer(flex: 1),
                              Icon(Icons.add_circle, color: Colors.blue),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/glass.png"),
                                        SizedBox(width: 8),
                                        const CustomTextWidget(
                  text: '8L',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                height: 60,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/boots.png"),
                                       const  SizedBox(width: 8),
                                        const CustomTextWidget(
                  text: '2400',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    const CustomTextWidget(
                                            text:AppStrings.footSteps,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400, 
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
        
                
                const CustomTextWidget(
                                            text:AppStrings.weightProgress,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600, 
                                    ),
        
                // Weight Progress Graph (Placeholder)
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Center(
                    child: WeightProgressChart(),
                  ),
                ),
                const SizedBox(height: 16),
        
                // Latest Activity Section
                
                const CustomTextWidget(
                  text: AppStrings.latestActivity,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                const SizedBox(height: 8),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Vector (1).png'),
                    ),
                    title: Text('Drinking 300ml Water'),
                    subtitle: Text('About 3 minutes ago'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Latest-Pic.png'),
                    ),
                    title: Text('Eat Snack (Fitbar)'),
                    subtitle: Text('About 10 minutes ago'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
