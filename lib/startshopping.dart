import 'package:flutter/material.dart';
import 'package:flutter_application_4/loginpage.dart';

class StartShopping extends StatefulWidget {
  const StartShopping({super.key});

  @override
  State<StartShopping> createState() => _StartShoppingState();
}

class _StartShoppingState extends State<StartShopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: []),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTItYAAz_1BM34ZeBJhAP_Elc83vpU2HHxenQ&usqp=CAU"),
            ),
            Text(
              "Hello Cassie!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your password has been reset!",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              color: Colors.black,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "START SHOPPING",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
