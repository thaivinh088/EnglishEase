import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;  // Define imagePath parameter for image

  LessonCard({
    required this.title,
    required this.description,
    required this.imagePath,  // Add imagePath parameter
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),  // Use imagePath parameter to display image
        SizedBox(height: 8.0),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: 4.0),
        Text(description),
      ],
    );
  }
}

