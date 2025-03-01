import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Marsha's Fisch Collection",
                        style: TextStyle(
                          color: Color(0xFF7367F0),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.25,
                        ),
                      ),
                      Text(
                        "1301223024 - Marsha",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 500,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                children: const [
                  Image(image: AssetImage('images/a.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/b.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/c.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/d.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/e.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/f.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/g.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/h.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/i.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/j.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/k.png'), fit: BoxFit.cover),
                  Image(image: AssetImage('images/l.png'), fit: BoxFit.cover),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
