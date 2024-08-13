import 'package:flutter/material.dart';
import 'package:pranshakti/view/notification_screen.dart';
import 'package:pranshakti/widgets/homepage/custom_bottom_navigation_bar.dart';

class MealSchedulePage extends StatelessWidget {
  const MealSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Meal Schedule',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
                  onPressed: () {},
                ),
                const Text(
                  'Aug 2024',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildDateCard('Wed', '12'),
                buildDateCard('Thurs', '13'),
                buildDateCard('Fri', '14', isSelected: true),
                buildDateCard('Sat', '15'),
                buildDateCard('Sun', '16'),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildMealSection(context, 'Breakfast', '2 meals | 230 calories', [
                  buildMealItem(
                      context, 'Honey Pancake', '07:00am', 'assets/images/pancakes.png'),
                  buildMealItem(
                      context, 'Coffee', '07:30am', 'assets/images/coffee.png'),
                ]),
                buildMealSection(context, 'Lunch', '2 meals | 500 calories', [
                  buildMealItem(
                      context, 'Chicken Steak', '01:00pm', 'assets/images/steak.png'),
                  buildMealItem(
                      context, 'Milk', '01:20pm', 'assets/images/milk.png'),
                ]),
                buildMealSection(context, 'Snacks', '2 meals | 140 calories', [
                  buildMealItem(
                      context, 'Orange', '04:30pm', 'assets/images/orange.png'),
                  buildMealItem(
                      context, 'Apple Pie', '04:40pm', 'assets/images/apple_pie.png'),
                ]),
                buildMealSection(context, 'Dinner', '2 meals | 120 calories', [
                  buildMealItem(
                      context, 'Salad', '07:10pm', 'assets/images/salad.png'),
                  buildMealItem(
                      context, 'Oatmeal', '08:10pm', 'assets/images/oatmeal.png'),
                ]),
              ],
            ),
          ),
          ElevatedButton(
                  child: const Text('Go to New Screen'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()),
                    );
                  }
              )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar()
    );
  }

  Widget buildDateCard(String day, String date, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height:80,
        width:60,
        color:Color.fromRGBO(247, 248, 248, 1),
        child: Column(
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue.withOpacity(0.2) : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 16,
                    color: isSelected ? Colors.blue : Colors.black,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMealSection(BuildContext context, String mealType, String info,
      List<Widget> mealItems) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mealType,
                style:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                info,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...mealItems,
        ],
      ),
    );
  }

  Widget buildMealItem(BuildContext context, String title, String time, String imagePath) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(imagePath, width: 40, height: 40),
      title: Text(title),
      subtitle: Text(time),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }
}
