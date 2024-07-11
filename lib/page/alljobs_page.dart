import 'package:flutter/material.dart';
import 'package:get_x_app/component/black_bigbox.dart';
import 'package:get_x_app/component/search.dart';
import 'package:get_x_app/component/white_bigbox.dart';
import 'package:get_x_app/controllers/job_application_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class AllJobsPage extends StatefulWidget {
  const AllJobsPage({super.key});

  @override
  State<AllJobsPage> createState() => _AllJobsPageState();
}

class _AllJobsPageState extends State<AllJobsPage> {
  int currentJobfilterSellected = 0;
  @override
  Widget build(BuildContext context) {
    _JobFilterBox(String title, int index) => GestureDetector(
          onTap: () {
            setState(() {
              currentJobfilterSellected = index;
              print("index ${index}");
            });
          },
          child: IntrinsicWidth(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              height: 40,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: index == currentJobfilterSellected
                      ? Colors.black
                      : Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.0,
                        blurRadius: 0.001,
                        color: Colors.black.withOpacity(0.1),
                        blurStyle: BlurStyle.solid,
                        offset: Offset(0, 0))
                  ]),
              child: Center(
                  child: Text(
                title,
                style: GoogleFonts.poppins(
                    color: index == currentJobfilterSellected
                        ? Colors.white
                        : Colors.black),
              )),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
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
                Container(
                    width: 60,
                    height: 60,
                    child: Image.network(
                        "https://ajip.ai/storage/sitesetting_images/thumb/ajip-1704705721-725.png")),
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20),
                  //child: Image.network("https://ajip.ai/storage/sitesetting_images/thumb/ajip-1704705721-725.png")
                ),
              ],
            ),
            SearchFiled(),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "32 Job Opportunity Found",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: jobFilter.length,
                  itemBuilder: (context, index) =>
                      _JobFilterBox(jobFilter[index].toString(), index)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              //color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  for (int i = 0; i < 5; i++)
                    (i % 2 == 0) ? BlackBigBox() : WhiteBigBox()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
