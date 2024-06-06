import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainPageScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 631,
              width: 390,
              child: Image.asset("assets/images/pic1.png"),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 33,
              width: 260,
              child: Text("Lets find your Paradise",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1))),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 46,
              width: 240,
              child: Text(
                  "Find your perfect dream space with just a few clicks",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(101, 101, 101, 1))),
            ),
            // const SizedBox(height: 10,),
            SizedBox(
              height: 55,
              width: 232,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      backgroundColor: const Color.fromRGBO(32, 169, 247, 1)),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) {
                      return const MainPage();
                    },));
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
