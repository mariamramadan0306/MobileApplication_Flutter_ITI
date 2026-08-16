import 'package:flutter/material.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tech Stack",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: 75,
              height: 80,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/flutter.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Flutter",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: 75,
              height: 80,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/dart.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Dart",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: 75,
              height: 80,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/Firebase.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Firebase",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: 75,
              height: 80,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/github.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Github",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: 75,
              height: 80,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/vscode.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "VS Code",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),

        /////////////////////
      ],
    );
  }
}
