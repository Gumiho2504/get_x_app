import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_x_app/controllers/job_application_controller.dart';
import 'package:get_x_app/page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class JobsDetaioPage extends StatefulWidget {
  const JobsDetaioPage({super.key});

  @override
  State<JobsDetaioPage> createState() => _JobsDetaioPageState();
}

class _JobsDetaioPageState extends State<JobsDetaioPage> {
  final JobApplicationController jobApplicationController =
      Get.put(JobApplicationController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.98),
        body: SafeArea(
          child: Stack(
            children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: Container(
                    //color: Colors.amber,
                    height: size.height* 0.3,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/Multinational_business_team.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 190,
                        //width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 0.2,
                                  blurRadius: 0.2,
                                  blurStyle: BlurStyle.solid)
                            ],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Senior UX Designer",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
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
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Full Time",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 10),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
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
                                              color:
                                                  Colors.black.withOpacity(0.2),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      ),
                      Positioned(
                          bottom: 30,
                          right: 30,
                          child: Text(
                            "4 Days Left",
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Obx(() {
                      if (jobApplicationController.jobApplication.value.jobId ==
                          '') {
                        return Center(child: CircularProgressIndicator());
                      } else {
                        var job = jobApplicationController.jobApplication.value;
                        return ListView(
                          padding: EdgeInsets.all(16.0),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Description',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              subtitle: Text(
                                job.description,
                                style: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 14),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Requirements',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: job.requirements
                                    .map((req) => Text(
                                          '• $req',
                                          style: GoogleFonts.poppins(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 14),
                                        ))
                                    .toList(),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Applicants',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: job.applicants
                                    .map((applicant) => ListTile(
                                          title: Text(
                                            applicant.name,
                                            style: GoogleFonts.poppins(),
                                          ),
                                          subtitle: Text(
                                            applicant.email,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                fontSize: 14),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ],
                        );
                      }
                    }),
                  ),
                )
              ]),
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
              )
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(child: Container(
          //color: Colors.amberAccent,
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0,-1),
                spreadRadius: 0.1,
                blurRadius: 0.1
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 6,bottom: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset.zero,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Icon(
                    Iconsax.save_21,
                    color: Colors.black,
                    size: 30,
                  )),
              Container(
                width: 250,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Background color
                    foregroundColor: Colors.white, // Text color
                    shadowColor: Colors.black, // Shadow color
                    elevation: 5, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),

                  ),

                  onPressed: () {},
                  child: Text('Apply Now',style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize: 18),),
                ),
              ),
            ],
          ),
        )));
  }
}
