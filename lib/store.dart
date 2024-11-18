import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Here',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    suffixIcon: Icon(Icons.mic, color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20), 
              Text(
                'Shop by Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    CategoryCard(
                      name: 'Sports Nutrition',
                      imageUrl: 'assets/images/store1.png',
                      backgroundColor: Color(0xFFFFE0B2),
                    ),
                    CategoryCard(
                      name: 'Medicine',
                      imageUrl: 'assets/images/store2.png',
                      backgroundColor: Color(0xFFFFF9C4),
                    ),
                    CategoryCard(
                      name: 'Ayurveda & Herbs',
                      imageUrl: 'assets/images/store3.png',
                      backgroundColor: Color(0xFFC8E6C9),
                    ),
                    CategoryCard(
                      name: 'Health Food & Drinks',
                      imageUrl: 'assets/images/store4.png',
                      backgroundColor: Color(0xFFFFCDD2),
                    ),
                    CategoryCard(
                      name: 'Fitness',
                      imageUrl: 'assets/images/store5.png',
                      backgroundColor: Color(0xFFF8BBD0),
                    ),
                    CategoryCard(
                      name: 'Wellness',
                      imageUrl: 'assets/images/store6.png',
                      backgroundColor: Color(0xFFBBDEFB),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Color backgroundColor;

  const CategoryCard({
    required this.name,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl, height: 80),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
