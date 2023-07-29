import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_profile/colors_app.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: ColorsApp.mainAppColor,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(children: [
        Center(
          child: SizedBox(
            width: 650,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Image.asset(
                    'myImage.png',
                    width: 183,
                    height: 183,
                  ),
                  const NameWidget(
                    firstWord: 'Fahad',
                    lastName: 'Alazmi',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "I possess strong skills in application development, logical analysis, problem-solving, and error debugging, coupled with a rapid ability for self-learning. Additionally, I am proficient in both front-end and back-end programming, enabling me to efficiently craft comprehensive solutions. My passion for staying up-to-date with the latest advancements in the field ensures that my skills continue to evolve, allowing me to deliver innovative solutions effectively.",
                    softWrap: true,
                    style: GoogleFonts.roboto(
                        color: ColorsApp.mainAppColor,
                        fontSize: 12,
                        wordSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const NameWidget(
                    firstWord: 'Hard',
                    lastName: 'Skills',
                  )
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Center(
            child: SizedBox(
              width: 1000,
              child: Wrap(
                alignment: WrapAlignment.center,
                clipBehavior: Clip.antiAlias,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.spaceBetween,
                spacing: 25,
                runSpacing: 25,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                children: [
                  SkillsWidget(
                    title: "Flutter & Dart",
                    grade: 5,
                  ),
                  SkillsWidget(
                    title: "Dart Build API",
                    grade: 5,
                  ),
                  SkillsWidget(
                    title: "Git & Github",
                    grade: 5,
                  ),
                  SkillsWidget(
                    title: "APIs",
                    grade: 5,
                  ),
                  SkillsWidget(
                    title: "Firebase",
                    grade: 5,
                  ),
                  SkillsWidget(
                    title: "Supabase",
                    grade: 5,
                  ),
                  SkillsWidget(
                    title: "Swift & SwiftUI",
                    grade: 4,
                  ),
                  SkillsWidget(
                    title: "Python",
                    grade: 4,
                  ),
                  SkillsWidget(
                    title: "MySQL",
                    grade: 4,
                  ),
                  SkillsWidget(
                    title: "Command line",
                    grade: 4,
                  ),
                  SkillsWidget(
                    title: "Postgres",
                    grade: 4,
                  ),
                  SkillsWidget(
                    title: "Linux",
                    grade: 4,
                  ),
                  SkillsWidget(
                    title: "Docker",
                    grade: 3,
                  ),
                  SkillsWidget(
                    title: "JavaScript",
                    grade: 2,
                  ),
                  SkillsWidget(
                    title: "React native",
                    grade: 2,
                  ),
                  SkillsWidget(
                    title: "Java",
                    grade: 2,
                  ),
                  SkillsWidget(
                    title: "React",
                    grade: 2,
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key, required this.isTrue});
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            border: Border.all(
                color: ColorsApp.mainAppColor.withOpacity(isTrue ? 1 : 0.2),
                width: isTrue ? 10 : 1),
            borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.grade, required this.title});
  final int grade;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 58,
      child: Column(
        children: [
          Center(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                  color: ColorsApp.mainAppColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleContainer(
                isTrue: grade >= 1 ? true : false,
              ),
              CircleContainer(
                isTrue: grade >= 2 ? true : false,
              ),
              CircleContainer(
                isTrue: grade >= 3 ? true : false,
              ),
              CircleContainer(
                isTrue: grade >= 4 ? true : false,
              ),
              CircleContainer(
                isTrue: grade >= 5 ? true : false,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget(
      {super.key, required this.firstWord, required this.lastName});
  final String firstWord;
  final String lastName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstWord,
          style: GoogleFonts.roboto(
              color: ColorsApp.mainAppColor,
              fontSize: MediaQuery.of(context).size.width < 500 ? 25 : 35,
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          lastName,
          style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width < 500 ? 25 : 35,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
