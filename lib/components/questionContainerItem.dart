import 'package:epts/config/constants.dart';
import 'package:epts/config/pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionContainerItem extends StatelessWidget {
  final String content;
  final double height;
  final int maxLine;

  QuestionContainerItem({
    Key key,
    @required this.maxLine,
    @required this.height,
    @required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: Palette.yellow,
            boxShadow: shadow,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Palette.darkGreen, width: 1.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Center(
                    child: Text(content,
                        maxLines: maxLine,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: white,
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
