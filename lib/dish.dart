import 'package:flutter/material.dart';
import 'package:foodapp/fastfood.dart';

class Dish extends StatefulWidget {
  const Dish({super.key});

  @override
  State<Dish> createState() => _DishState();
}

class _DishState extends State<Dish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(26.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'DISH ITEM',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Image.asset('assets/images/burger.png'),
              SizedBox(height: 20),
              const Text(
                'Food Ordering App',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Fastfood(),
                    ),
                  );
                },
                child: Text("GET BURGER NOW"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
