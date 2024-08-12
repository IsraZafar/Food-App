import 'package:flutter/material.dart';
import 'package:foodapp/productscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink,
            Colors.blue,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _Page(),
      ),
    );
  }

  Widget _Page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(
              height: 50,
            ),
            _inputField("Password", passwordcontroller, isPassword: true),
            const SizedBox(
              height: 20,
            ),
            _inputField("Email", emailcontroller),
            const SizedBox(
              height: 50,
            ),
            _loginBtn(),
            const SizedBox(height: 20),
            extraText(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle),
      child: const Icon(Icons.person, color: Colors.white, size: 120),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          enabledBorder: border,
          focusedBorder: border),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Email: " + emailcontroller.text);
        debugPrint("Password: " + passwordcontroller.text);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Productscreen()),
        );
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text("Sign in",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 20))),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget extraText() {
    return const Text(
      "Can't access your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}
