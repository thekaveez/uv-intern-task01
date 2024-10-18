import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back), color: Colors.black,
        ),
        title: const Text(
          "Your Profile",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60,),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[200],
                  child: const Icon(Icons.person_outlined, size: 50, color: Colors.black,),
                ),
                const Positioned(
                    right: 4,
                    bottom: 4,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      child: const Icon(Icons.add, size: 18, color: Colors.white)
                      ))
              ],
            ),
          ),
          const SizedBox(height: 40,),
          TextFormField(
                  decoration: InputDecoration(
                      hintText: "First Name (Required)",
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
          ),
          const SizedBox(height: 16,),
          TextFormField(
              decoration: InputDecoration(
                  hintText: "Last Name (Optional)",
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
                "Save",
                style: TextStyle(fontSize: 18, color: Colors.white), )),
          const SizedBox(height: 30),
        ],
      ),),
    );
  }
}
