import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 215,
            width: 160,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 236, 236),
            ),
            child: Icon(
              Icons.person,
              size: 150,
              color: const Color.fromARGB(255, 12, 118, 204),
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sara Mohamed",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Flutter developer",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 12, 118, 204),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 22,
                        color: const Color.fromARGB(255, 12, 118, 204),
                      ),
                      SizedBox(width: 15),
                      Text("sara.dev@email.com"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Icon(Icons.phone, size: 22, color: Colors.green),
                      SizedBox(width: 15),
                      Text("+20 101 234 5687"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, size: 22, color: Colors.purple),
                      SizedBox(width: 15),
                      Text("Alexandria, Egypt"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 22,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 15),
                      Text("Joined:May 2024"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                        size: 22,
                        color: const Color.fromARGB(255, 12, 118, 204),
                      ),
                      SizedBox(width: 15),
                      Text("saramohamed.dev"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
