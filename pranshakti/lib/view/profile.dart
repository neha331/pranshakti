import 'package:flutter/material.dart';
import 'package:pranshakti/view/upgrade_plan_screen.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture and Edit Button
              Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/images/Vector (1).png'), // Replace with actual image
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      const Text(
                        'Stefani Wong',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lose a Fat Program',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 1),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Metrics (Height, Weight, Age)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMetric('180cm', 'Height'),
                  _buildMetric('65kg', 'Weight'),
                  _buildMetric('22yo', 'Age'),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                // height:189,
                //width:315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  children: [
                    _buildSectionTitle('Account'),
                    _buildListTile('Personal Data', Icons.person),
                    _buildListTile('Achievement', Icons.emoji_events),
                    _buildListTile('Activity History', Icons.history),
                    _buildListTile('Workout Progress', Icons.fitness_center),
                  ],
                ),
              ),
              // Account Section

              SizedBox(height: 20),

              // Notification Section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  children: [
                    _buildSectionTitle('Notification'),
                    SwitchListTile(
                      value: true,
                      onChanged: (value) {},
                      title: Text('Pop-up Notification'),
                      activeColor: Colors.purple,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Other Section
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: [
                      _buildSectionTitle('Other'),
                      _buildListTile('Contact Us', Icons.contact_mail),
                      _buildListTile('Privacy Policy', Icons.privacy_tip),
                      _buildListTile('Settings', Icons.settings),
                    ],
                  )),
              ElevatedButton(
                  child: const Text('Go to New Screen'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpgradePlansScreen()),
                    );
                  }
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Widget _buildMetric(String value, String label) {
    return Container(
      height: 65,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }
}
