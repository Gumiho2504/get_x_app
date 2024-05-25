import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class BlackBigBox extends StatelessWidget {
  const BlackBigBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.sizeOf(context).width * 0.65,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
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
  }
}
