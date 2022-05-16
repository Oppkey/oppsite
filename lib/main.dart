import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Site Mockup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool mobile = size.width < 800;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('images/oppkey_logo.jpg'),
                !mobile
                    ? Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: const [
                            Text(
                              'Oppkey',
                              style: TextStyle(
                                  fontSize: 64, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Developer Relations Consultants',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Expand from hardware revenue to software and services. '
              'Take on new markets. Create the most valuable '
              'industry-specific ecosystem in the world. '
              'Grow the enormous value of your team, partners, and customers.',
              style: TextStyle(fontSize: 20),
            ),
            Image.asset('images/oppkey_clients.png'),
          ],
        ),
      ),
    );
  }
}
