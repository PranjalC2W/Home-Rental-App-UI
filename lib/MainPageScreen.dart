import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DetailsPageScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

List images = [
  "assets/images/pic3.png",
  "assets/images/picc.jpg",
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 21,
                  width: 90,
                  child: Text(
                    "Hey Dravid,",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(101, 101, 101, 1)),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: 48,
                  width: 48,
                  child: Image.asset("assets/images/pic2.png"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 66,
            width: 355,
            child: Text(
              "Let’s find your best                        residence ",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 46,
            width: 346,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search your favourite paradise',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(33, 33, 33, 1)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(33, 33, 33, 1),
                    size: 25,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none)),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: SizedBox(
                  height: 33,
                  width: 200,
                  child: Text(
                    "Most popular",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
              ),
              const SizedBox(
                width: 110,
              ),
              SizedBox(
                height: 24,
                width: 60,
                child: Text(
                  "See All",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 306,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 306,
                    width: 211,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) {
                          return const DetailsPage();
                        },));
                      },
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6),
                                child: SizedBox(
                                  height: 196,
                                  width: 189,
                                  child:
                                      Image.asset(images[index % images.length]),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 140,
                                child: Container(
                                  height: 21.56,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:
                                          const Color.fromRGBO(112, 200, 250, 1)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: SizedBox(
                                          height: 12.63,
                                          width: 13.28,
                                          child: Image.asset(
                                              "assets/images/pic5.png"),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      SizedBox(
                                        height: 18.75,
                                        width: 20,
                                        child: Text(
                                          "4.9",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                            width: 180,
                            child: Text(
                              "Night Hill Villa",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                            width: 180,
                            child: Text(
                              "London,Night Hill",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(72, 72, 72, 1)),
                            ),
                          ),
                          SizedBox(
                              height: 21,
                              width: 180,
                              child: Text.rich(
                                TextSpan(
                                    text: '5900',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            32, 169, 247, 1)),
                                    children: [
                                      TextSpan(
                                        text: '/Month',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                const Color.fromRGBO(0, 0, 0, 1)),
                                      )
                                    ]),
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: SizedBox(
                  height: 36,
                  width: 250,
                  child: Text(
                    "Nearby your location",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
              ),
              const SizedBox(width: 60,),
              SizedBox(
                height: 27,
                width: 60,
                child: Text(
                  "More",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(32, 169, 247, 1)),
                ),

              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 108,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 108,
                    width: 346,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/images/pic6.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                height: 21,
                                width: 200,
                                child: Text("Jumeriah Golf Estates Villa",style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w600,color:const Color.fromRGBO(0, 0, 0, 1)),),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 14,
                                    width: 14,
                                    child: Image.asset("assets/images/pic7.png"),
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(
                                    height: 17,
                                    width: 170,
                                    child: Text("London,Area Plam Jumeriah",style: GoogleFonts.poppins(fontSize:11,fontWeight:FontWeight.w600,color:const Color.fromRGBO(90, 90, 90, 1)),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset("assets/images/pic8.png"),
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(
                                    height: 14,
                                    width:65,
                                    child: Text("4 Bedrooms",style: GoogleFonts.poppins(fontSize:9,fontWeight:FontWeight.w600,color:const Color.fromRGBO(90, 90, 90, 1)),),
                                  ),
                                   SizedBox(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset("assets/images/pic9.png"),
                                  ),
                                  const SizedBox(width: 5,),
                                  SizedBox(
                                    height: 14,
                                    width:67,
                                    child: Text("5 Bathrooms",style: GoogleFonts.poppins(fontSize:9,fontWeight:FontWeight.w600,color:const Color.fromRGBO(90, 90, 90, 1)),),
                                  ),
                               
                                ],
                              ),
                            ),
                            const SizedBox(height: 4,),
                             Row(
                               children: [
                                const SizedBox(width: 110,),
                                 SizedBox(
                                                             height: 21,
                                                             width: 90,
                                                             child: Text.rich(
                                  TextSpan(
                                      text: '4500',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              32, 169, 247, 1)),
                                      children: [
                                        TextSpan(
                                          text: '/Month',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  const Color.fromRGBO(0, 0, 0, 1)),
                                        )
                                      ]),
                                                             )),
                               ],
                             ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
