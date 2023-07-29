import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_profile/colors_app.dart';
import 'package:my_web_profile/components/icons&images/svg_widget.dart';

class NavBar extends StatelessWidget {
  const NavBar(
      {super.key,
      this.onTapHome,
      this.onTapSkills,
      this.onTapProject,
      this.onTapLanguages,
      this.onTapResume});
  final Function()? onTapHome;
  final Function()? onTapSkills;
  final Function()? onTapProject;
  final Function()? onTapLanguages;
  final Function()? onTapResume;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 500 ? 5 : 50,
          vertical: 50),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          clipBehavior: Clip.antiAlias,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.center,
          runSpacing: 8,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          alignment: WrapAlignment.center,
          spacing: 25,
          children: [
            Row(
              children: [
                const SvgWidget(
                  size: 50,
                  path: 'logo.svg',
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Fahad Alazmi",
                  style: GoogleFonts.roboto(
                      fontSize:
                          MediaQuery.of(context).size.width < 500 ? 25 : 30,
                      fontWeight: FontWeight.bold,
                      color: ColorsApp.mainAppColor),
                )
              ],
            ),
            // TextNav(text: "Home", onTap: onTapHome),
            TextNav(text: "Skills", onTap: onTapSkills),
            // TextNav(text: "Projects", onTap: onTapProject),
            // TextNav(text: "Languages", onTap: onTapLanguages),
            TextNav(text: "Resume", onTap: onTapResume),
          ],
        ),
      ),
    );
  }
}

class TextNav extends StatelessWidget {
  const TextNav({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: ColorsApp.mainAppColor),
      ),
    );
  }
}
