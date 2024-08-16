import 'package:flutter/material.dart';
import 'package:pranshakti/views/meal_schedule_page.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';

class UpgradePlansScreen extends StatelessWidget {
  const UpgradePlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upgrade Plans',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
        
              // Existing Plan
              _buildExistingPlan(),
        
              SizedBox(height: 20),
        
              // Find The Perfect Plan Section
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(157, 206, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find The Perfect Plan',
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Check'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
        
              // Plan Options
              _buildPlanOption(
                title: '1 Month Plan',
                price: 12,
                isSelected: false,
              ),
              SizedBox(height: 10),
              _buildPlanOption(
                title: '1 Year Plan',
                price: 8,
                isSelected: true,
              ),
              SizedBox(height: 10),
              _buildPlanOption(
                title: '1 Month Plan',
                price: 12,
                isSelected: false,
              ),
        
              //Spacer(),
        
              // Upgrade Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(138, 71, 235, 1),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Upgrade',
                    style: TextStyle(
                        fontSize: 18,
                        color:Colors.white,
                      ),
        
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar()
    );
  }

  Widget _buildExistingPlan() {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child:const  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1 Month Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Purchased on: DD/MM/YYYY',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              Text(
                'Valid Till: DD/MM/YYYY',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          Text(
            '\$12/month',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanOption({required String title, required double price, required bool isSelected}) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: isSelected ? Colors.purple : Colors.grey[300]!,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Radio(
            value: isSelected,
            groupValue: true,
            onChanged: (value) {},
            activeColor: Colors.purple,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Billed ${isSelected ? 'yearly' : 'monthly'}. Cancel anytime.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          //Spacer(),
          Text(
            '\$$price /month',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
