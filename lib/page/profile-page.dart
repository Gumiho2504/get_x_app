import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentSelect  = 0;
  @override
  Widget build(BuildContext context) {
    _CustomButton(String title, int index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect = index;
              
            });
          },
          child: IntrinsicWidth(
            child: AnimatedContainer(
              curve: Curves.linear,
              duration: Duration(microseconds: 1000),
              margin: EdgeInsets.only(left: 20),
              height: 40,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: index == currentSelect
                      ? Colors.black
                      : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.0,
                        blurRadius: 0.01,
                        color: Colors.black.withOpacity(0.2),
                        blurStyle: BlurStyle.solid,
                        offset: Offset(0, 0))
                  ]),
              child: Center(
                  child: Text(
                title,
                style: GoogleFonts.poppins(
                    color: index == currentSelect
                        ? Colors.white
                        : Colors.black),
              )),
            ),
          ),
        );
    return Scaffold(
     backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
        
         Stack(
          children: [
            Padding(
                    padding: EdgeInsets.zero,
                    child: Container(
                      //color: Colors.amber,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/Multinational_business_team.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),

                   Positioned(
                top: 10,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset.zero,
                                blurRadius: 0.2,
                                spreadRadius: 0.2,
                                blurStyle: BlurStyle.solid)
                          ]),
                      child: Icon(
                        Iconsax.arrow_left4,
                        color: Colors.black,
                        size: 30,
                      )),
                ),
              ),

                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                  style: BorderStyle.solid,
                                  strokeAlign: BorderSide.strokeAlignInside
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg")),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: Offset.zero,
                                    blurRadius: 0.1,
                                    spreadRadius: 0.1,
                                  )
                                ]),
                          ),
                  ),
          ]
         ),

         Container(
          decoration: BoxDecoration(
            color: Colors.white,
                boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 0.2,
                                  blurRadius: 0.2,
                                  blurStyle: BlurStyle.solid)
                            ],
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              ),
           child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                //border: Border.all()
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Xuge Leang",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w600),),
                      Icon(Iconsax.edit)
                  
                    ],
                  ),
                  Text("Haward Univercity",style: GoogleFonts.poppins(color: Colors.grey),)
                ],
              ),
            )),
         ),
SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CustomButton("About", 0),
             _CustomButton("Your Post", 1),
              _CustomButton("information", 2),
                _CustomButton("Add Post", 3)
          ],
         )


        ],),
      ),
    );
  }
}