import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get_x_app/models/job_application.dart';
import 'package:get_x_app/page/JobApplicationScreen.dart';
import 'package:get_x_app/page/alljobs_page.dart';
import 'package:get_x_app/page/jobsdetail_page.dart';
import 'package:get_x_app/page/profile-page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.98),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset.zero,
                                blurRadius: 0.1,
                                spreadRadius: 0.1)
                          ]),
                      child: Icon(
                        Iconsax.menu,
                        color: Colors.black,
                      )),
                  Container(
                      width: 60,
                      height: 60,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(15),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(color: Colors.black.withOpacity(0.2),offset: Offset.zero,
                      //         blurRadius: 0.1,
                      //         spreadRadius: 0.1)
                      //   ]
                      // ),
                      child: Image.network(
                          "https://ajip.ai/storage/sitesetting_images/thumb/ajip-1704705721-725.png")),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()));
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
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
                      Positioned(
                          right: 0,
                          top: 5,
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                  style: BorderStyle.solid),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // app bar

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Good Morning Alex",
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Find Your",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Creative Jobs",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        //Search Text Filed
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                height: 60,
                                width: size.width - 130,
                                alignment: Alignment.center,
                                //color: Colors.amber,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 0.3,
                                        blurRadius: 0.1,
                                        offset: Offset.zero,
                                      )
                                    ]),
                                child: TextField(
                                  style: GoogleFonts.poppins(),
                                  decoration: InputDecoration(
                                    //fillColor: Colors.grey[200],
                                    border: InputBorder.none,
                                    hintStyle: GoogleFonts.poppins(),
                                    hintText: "Search for Jobs",
                                  ),
                                ),
                              ),
                              Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            offset: Offset.zero,
                                            blurRadius: 0.1,
                                            spreadRadius: 0.3)
                                      ]),
                                  child: Icon(
                                    Iconsax.setting_4,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),

                        // Section
                        _section("Popular Jobs"),
                        //BoxBlack

                        //White Box

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 180,
                            width: size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (int i = 0; i < 6; i++)
                                  (i % 2 == 0)
                                      ? GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        JobsDetaioPage()));
                                          },
                                          child: _black_box(),
                                        )
                                      : GestureDetector(
                                        onTap: (){
                                           Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        JobApplicationScreen()));
                                        },
                                        child: _white_box(),
                                      ) 
                              ],
                            ),
                          ),
                        ),

                        _section("Recent Jobs"),
                        _recentjobs_box(),
                        _recentjobs_box(),
                        _recentjobs_box(),
                        ElevatedButton(
                          onPressed: () {
                            print(
                                "w - ${size.width.toString()} - ${size.height.toString()}");
                          },
                          child: Container(
                            width: 150,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text('Button Text'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }

  _black_box() => Container(
        height: 180,
        width: MediaQuery.sizeOf(context).width * 0.65,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset.zero,
                  blurRadius: 0.6,
                  spreadRadius: 0.1,
                  blurStyle: BlurStyle.outer)
            ]),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Senior UX Designer",
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      Icon(
                        Iconsax.save_21,
                        color: Colors.grey,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(r"$40-90k/year",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Full Time",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              // Company
              Row(
                children: [
                  //icon company
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset.zero,
                                blurRadius: 0.1,
                                spreadRadius: 0.1)
                          ]),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/en/thumb/9/92/Chanel_logo_interlocking_cs.svg/2560px-Chanel_logo_interlocking_cs.svg.png")),
                  Container(
                    height: 50,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //company name
                        Text(
                          "Channel Inc. LLC",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          "San Diago",
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                "4 Days Left",
                style: GoogleFonts.poppins(color: Colors.red, fontSize: 12),
              ))
        ]),
      );

  _white_box() => Container(
        height: 180,
        width: MediaQuery.sizeOf(context).width * 0.65,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(
          right: 20,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset.zero,
                  blurRadius: 0.6,
                  spreadRadius: 0.1,
                  blurStyle: BlurStyle.outer)
            ]),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Full-Stuck Designer",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      Icon(
                        Iconsax.save_21,
                        color: Colors.grey,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(r"$30-70k/year",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Full Time",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              // Company
              Row(
                children: [
                  //icon company
                  Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset.zero,
                                blurRadius: 0.1,
                                spreadRadius: 0.1)
                          ]),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/en/thumb/9/92/Chanel_logo_interlocking_cs.svg/2560px-Chanel_logo_interlocking_cs.svg.png")),
                  Container(
                    height: 50,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //company name
                        Text(
                          "Uber Technologies Inc",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          "Son Francisco",
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                "2 Months Left",
                style: GoogleFonts.poppins(
                    color: Colors.red.withOpacity(0.8), fontSize: 12),
              ))
        ]),
      );

  _section(String sectionTitle) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sectionTitle,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AllJobsPage()));
              },
              child: Text("see all",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 16)),
            )
          ],
        ),
      );
  _recentjobs_box() => Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0.2,
                  blurRadius: 0.2,
                  blurStyle: BlurStyle.outer)
            ],
          ),
          child: Stack(children: [
            Center(
              child: Row(children: [
                Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset.zero,
                            blurRadius: 0.1,
                            spreadRadius: 0.1)
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/tik-tok.png",
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                          child: Container(
                              color: Colors.blue,
                              width: 200,
                              child: Text(
                                "Senior Product Desdddcccdi",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                              ))),
                      Row(
                        children: [
                          Text(r"TikTok",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(r".",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Full Time",
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Positioned(
                bottom: 20,
                right: 0,
                child: Text(
                  "4 Days Left",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                ))
          ]),
        ),
      );
}
