import 'package:flutter/material.dart';

class BookConsultation extends StatefulWidget {
  @override
  _BookConsultationState createState() => _BookConsultationState();
}

class _BookConsultationState extends State<BookConsultation> {
  final List<Map<String, String>> doctors = [
    {"name": "David H. Brown", "specialty": "Psychologist", "image": "assets/images/doc1.png"},
    {"name": "Robert Johnson", "specialty": "Neurologist", "image": "assets/images/doc2.png"},
    {"name": "Laura White", "specialty": "Dentist", "image": "assets/images/doc3.png"},
    {"name": "Jennifer Miller", "specialty": "Pediatrician", "image": "assets/images/doc4.png"},
    {"name": "Brian Clark", "specialty": "Psychiatrist", "image": "assets/images/doc5.png"},
    {"name": "Jaden John", "specialty": "Cardiologist", "image": "assets/images/doc6.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Book Consultation',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/arrow.png',
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Image.asset('assets/images/drawer.png'),
            onPressed: () {
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(doctor["image"]!),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor["name"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        doctor["specialty"]!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.phone, color: Colors.grey),
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.favorite_border, color: Colors.grey),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

