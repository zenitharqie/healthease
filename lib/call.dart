import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF007AEB),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); 
                    },
                    child: Image.asset(
                      'assets/images/arrow.png', 
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Audio Call',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            Column(
              children: [
                CircleAvatar(
                  radius: 80, 
                  backgroundImage: AssetImage('assets/images/doctorpic.png'),
                ),
                const SizedBox(height: 16),
                const Text(
                  'David H. Brown',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '22:55 min',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Image.asset(
                'assets/images/icons.png', 
                height: 80,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 24),

            GestureDetector(
              onTap: () {
                Navigator.pop(context); 
              },
              child: CircleAvatar(
                radius: 30, 
                backgroundColor: Colors.red, 
                child: Icon(
                  Icons.call_end,
                  color: Colors.white, 
                  size: 28,
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
