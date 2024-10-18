import 'package:flutter/material.dart';
import 'package:uv_intern_task01/pages/phone_number_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Image.asset('assets/onboard_png.png'),
            const SizedBox(height: 50),
            const Text(
              "Connect easily with\n your family and friends over countries",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 140),
            const Text(
              "Terms & Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                backgroundColor: const Color(0xff002de3)
              ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PhoneNumberPage()));
                },
                child: const Text(
                    "Start Messaging",
                style: TextStyle(fontSize: 18, color: Colors.white), )),


            
          ],
        ),
      )
    );
  }
}
