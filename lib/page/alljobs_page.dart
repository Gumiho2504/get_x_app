import 'package:flutter/material.dart';
import 'package:get_x_app/component/black_bigbox.dart';
import 'package:get_x_app/component/search.dart';
import 'package:get_x_app/component/white_bigbox.dart';
import 'package:iconsax/iconsax.dart';

class AllJobsPage extends StatefulWidget {
  const AllJobsPage({super.key});

  @override
  State<AllJobsPage> createState() => _AllJobsPageState();
}

class _AllJobsPageState extends State<AllJobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: SafeArea(
        child: Column(
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
                    child: Image.network("https://ajip.ai/storage/sitesetting_images/thumb/ajip-1704705721-725.png")
                ),
                Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(right: 20),
                    //child: Image.network("https://ajip.ai/storage/sitesetting_images/thumb/ajip-1704705721-725.png")
                ),
              ],
              
            ),

            SearchFiled(),
            Expanded(child: Container(//color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.vertical,

                children: [
                  for(int i = 0 ; i<5; i++)
                    (i%2 == 0) ?
                    BlackBigBox() : WhiteBigBox()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
