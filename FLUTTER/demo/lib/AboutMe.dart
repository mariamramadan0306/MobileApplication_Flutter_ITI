import 'package:flutter/material.dart';

class AboutME extends StatelessWidget {
  const AboutME({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 7),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.orange[50]),
          child: Text(
            "Passionate Flutter developer who loves building beautiful and efficient mobile applications.",
            style: TextStyle(
              fontSize: 13,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
