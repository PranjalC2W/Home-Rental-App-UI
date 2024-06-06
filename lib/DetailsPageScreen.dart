import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}


List images=[
    "assets/images/pic11.png",
    "assets/images/pic12.png",
    "assets/images/pic13.png"
];

List names=[
  'Bedroom',
  'Bathrooms',
  'Square ft'
];

List numbers=[
  '5',
  '6',
  '7,000 sq ft'
];

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 237, 237, 1),

      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Details",style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500,color:const Color.fromRGBO(0, 0, 0, 1)),),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
           Stack(
             children:[
              Padding(
               padding: const EdgeInsets.only(left: 18),
               child: Container(
                height: 244,
                width: 346,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(254, 254, 254, 1)
                ),
                child: Image.asset("assets/images/pic10.png"),
               ),
             ),
               Positioned(
                                  top: 10,
                                  left: 30,
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
                                ),
             ]
           ),
           const SizedBox(height: 18,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: SizedBox(
                                        height: 33,
                                        width: 200,
                                        child: Text(
                                          "Night Hill Villa",
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(0, 0, 0, 1)),
                                        ),
                                      ),
                    ),
                 
                                 Padding(
                                   padding: const EdgeInsets.only(left: 35),
                                   child: SizedBox(
                                    height: 23,
                                    width: 200,
                                    child: Text(
                                      "London,Night Hill",
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(72, 72, 72, 1)),
                                    ),
                                                                 ),
                                 ),
                                const SizedBox(width: 30,),
                
                
                                
                                 ],
                ),
                const SizedBox(width: 20,),
                 SizedBox(
                                height: 24,
                                width: 115,
                                child: Text.rich(
                                  TextSpan(
                                      text: '5900',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              32, 169, 247, 1)),
                                      children: [
                                        TextSpan(
                                          text: '/Month',
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color:
                                                  const Color.fromRGBO(0, 0, 0, 1)),
                                        )
                                      ]),
                                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
        
        
             SizedBox(
              height: 141,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Container(
                      //margin: const EdgeInsets.all(10),
                      height: 141,
                      width: 112,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: SizedBox(
                                height: 30,
                                width: 30,
                                child:
                                    Image.asset(images[index % images.length]),
                              ),
                            ),
                          ),
                         const SizedBox(height: 10,),
                          SizedBox(
                            height: 21,
                            width: 90,
                            child: Text(
                              names[index%names.length],
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                          ),
                         const SizedBox(height: 10,),
                    
                          SizedBox(
                            height: 24,
                            width: 91,
                            child: Text(
                              numbers[index%numbers.length],
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 200,
              width: 346,
              child: Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 1)),),
            ),

            SizedBox(
              height: 55,
              width: 220,
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(32, 169, 247, 1)),
                onPressed:() {
                
              }, child:Text("Rent Now",style: GoogleFonts.poppins(fontSize:22,fontWeight:FontWeight.w400,color:const Color.fromRGBO(255, 255, 255,1)),)),
            )
          ],
        ),
      )
    );
  }
}