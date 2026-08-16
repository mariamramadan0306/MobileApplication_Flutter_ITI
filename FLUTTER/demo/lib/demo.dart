import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DemoScreen());
  }
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Demo App",
          style: TextStyle(
            color: Colors.blue.shade600,
            // R -> red (0-255) , G -> green (0-255) , B -> blue (0-255) , a -> alpha (opacity)
            //Color(#ffffff)
            // backgroundColor: Color.fromARGB(1, 255, 255, 0),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                border: Border.all(),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // spacing: 10,
                children: [
                  Text("Container"),
                  Text("Container"),
                  Text("Container"),
                ],
              ),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: ColoredBox(color: Colors.orange, child: Text("Sized Box")),
            ),
            SizedBox(height: 20),
            //Images
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "images/birds.jpg",
                width: double.infinity,
                height: 180,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              //space between child widget and the main parent (according to screen flow)
              padding: const EdgeInsets.all(20.0),
              child: Image.network(
                "https://picsum.photos/600/250",
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(16),
            //   child: Image.network(
            //     "https://picsum.photos/600/250",
            //     width: double.infinity,
            //     height: 180,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Row(
              children: [
                Icon(Icons.favorite, size: 40, color: Colors.red),
                SizedBox(width: 20),
                Text("Icon Widget"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                FlutterLogo(),
                Expanded(
                  child: Text(
                    "sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
                  ),
                ),
                Icon(Icons.send_and_archive),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey[200],
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.red, child: Text("Part1")),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.blue, child: Text("Part2")),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      height: 150,
                      color: Colors.blue,
                      child: Text("Behind"),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.green,
                      child: Text("above"),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/600/250"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
