import 'package:epts/config/constants.dart';
import 'package:epts/config/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConcluseContainer extends StatelessWidget {
  final String content;
  final double height;
  final double fontSize;
  final Color borderColor;

  ConcluseContainer(
      {Key key,
      @required this.content,
      @required this.height,
      @required this.borderColor,
      @required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 30),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: shadow,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: borderColor, width: 2.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(content,
                        maxLines: 10,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: fontSize,
                            color: black2,
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
