import 'package:flutter/material.dart';
import 'package:foodapp/dish.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "FOOD PRODUCT",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/burger.png'),
            SizedBox(height: 12),
            Image.asset('assets/images/pizza.png'),
            SizedBox(height: 10),
            Image.asset('assets/images/colddrink.png'),
            SizedBox(height: 30),
            Image.asset('assets/images/biryani.png'),
            SizedBox(height: 20),
            Image.asset('assets/images/samosa.png'),
            SizedBox(height: 10),
            Image.asset('assets/images/tikka.png'),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dish(),
                      ),
                    );
                  },
                  child: const Text("NEXT",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
