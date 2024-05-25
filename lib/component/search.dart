import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SearchFiled extends StatefulWidget {
  const SearchFiled({super.key});

  @override
  State<SearchFiled> createState() => _SearchFiledState();
}

class _SearchFiledState extends State<SearchFiled> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
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
    );
  }
}
