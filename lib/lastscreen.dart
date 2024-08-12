import 'package:flutter/material.dart';

class Lastscreen extends StatefulWidget {
  const Lastscreen({super.key});

  @override
  State<Lastscreen> createState() => _LastscreenState();
}

class _LastscreenState extends State<Lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(26.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'END APP !',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Image.asset('assets/images/end.png'),
            ],
          ),
        ),
      ),
    );
  }
}
