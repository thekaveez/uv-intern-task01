import 'package:flutter/material.dart';
import 'package:uv_intern_task01/pages/profile_page.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(), 
            icon: const Icon(Icons.arrow_back, color: Colors.black,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                  "Enter Your Phone Number",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text(
                "Please confirm your country code and enter your phone number",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 60),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        // prefixIcon: const Icon(Icons.phone),
                        hintText: "+62",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        fillColor: Colors.grey[200]!,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: "Phone Number",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              fillColor: Colors.grey[200]!,
                              filled: true,

                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.blue
                            )
                          )
                          )
                      )
                  )

                ],
              ),

              const Spacer(),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: const Color(0xff002de3)
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));

                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white), )),

              const SizedBox(height: 30),

            ],
          ),
        )
    );
  }
}
