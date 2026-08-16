import 'package:flutter/material.dart';

class ExtraData extends StatelessWidget {
  const ExtraData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(87, 154, 206, 248),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.person,
                size: 30,
                color: const Color.fromARGB(255, 12, 118, 204),
              ),
              Text(
                "ID",
                style: TextStyle(
                  color: const Color.fromARGB(255, 12, 118, 204),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "DEV-2024-0123",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.code,
                size: 25,
                color: const Color.fromARGB(255, 12, 118, 204),
              ),
              Text(
                "ROLE",
                style: TextStyle(
                  color: const Color.fromARGB(255, 12, 118, 204),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Developer",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.calendar_month,
                size: 25,
                color: const Color.fromARGB(255, 12, 118, 204),
              ),
              Text(
                "Experience",
                style: TextStyle(
                  color: const Color.fromARGB(255, 12, 118, 204),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "1+ Year",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
