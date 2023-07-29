import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_profile/colors_app.dart';
import 'package:my_web_profile/components/icons&images/svg_widget.dart';
import 'package:my_web_profile/components/navbar.dart';
import 'package:my_web_profile/utils/launch_url_method.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          NavBar(
            onTapSkills: () {
              Navigator.pushNamed(context, '/skills');
            },
            onTapResume: () {
              Navigator.pushNamed(context, '/resume');
            },
          ),
          const BodyOfHome()
        ],
      ),
    );
  }
}

class BodyOfHome extends StatelessWidget {
  const BodyOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 25,
            runSpacing: 25,
            children: [
              AnimatedContainer(
                width: 300,
                height: constraint.maxWidth >= 841 ? 500 : 400,
                // color: Colors.green,
                duration: const Duration(milliseconds: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi guys,",
                      style: GoogleFonts.roboto(
                          color: ColorsApp.mainAppColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "I am an application programmer",
                        style: GoogleFonts.roboto(
                            color: ColorsApp.mainAppColor,
                            fontSize: MediaQuery.of(context).size.width < 500
                                ? 25
                                : 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "About me:",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "I am a mobile application developer with expertise in Flutter and Swift. I have a keen interest in programming smart device applications and I am always eager to learn and grow in my field. I graduated from university in 2019 with a Bachelor's degree in Computer Science, specializing in Information Studies, with a GPA of 3.23. Currently, I am employed at the Saudi Federation for Cybersecurity, Programming, and Drones. Additionally, I contribute to the academic department at Tuwaiq Academy.",
                      style: GoogleFonts.roboto(
                          color: ColorsApp.mainAppColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    constraint.maxWidth >= 841
                        ? const Spacer()
                        : const SizedBox(
                            height: 10,
                          ),
                    ElevatedButton(
                      onPressed: () => launchUrlMethod(
                          url:
                              'mailto:en.fahad.work@gmail.com?subject=Hello Fahad &body=$messageBody'),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(250, 45),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text("Contact me",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SvgWidget(
                          path: 'phone.svg',
                          onTap: () =>
                              launchUrlMethod(url: "tel://+966501231240"),
                        ),
                        SvgWidget(
                          path: 'Linkedin.svg',
                          onTap: () => launchUrlMethod(
                              url: "https://www.linkedin.com/in/fahad-alazmi/"),
                        ),
                        SvgWidget(
                          path: 'Git.svg',
                          onTap: () => launchUrlMethod(
                              url: "https://github.com/fahad0100"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: constraint.maxWidth >= 841 ? 500 : 250,
                width: constraint.maxWidth >= 841 ? 500 : 250,
                child: const SvgWidget(
                  path: 'home.svg',
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

const messageBody = """
Dear Fahad Alazmi,

I hope this message finds you well. I am writing to reach out to you.

I came across your web, profile, and skills on your website, and I was impressed by your expertise, especially in application development.

I would be thrilled to engage in discussions, exchange ideas, and potentially collaborate on any exciting projects in the future.

If you are open to the idea, I would love to arrange a call, meet in person, or communicate through any preferred means of contact. Please feel free to let me know what works best for you.

Looking forward to the possibility of connecting with you and exploring potential avenues for collaboration.

Thank you for your time, and I hope to hear from you soon.

[Your Name]
[Your Contact Information]""";
