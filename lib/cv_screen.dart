import 'package:flutter/material.dart';
import 'package:my_web_profile/utils/launch_url_method.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181518),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff181518),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 500, minHeight: MediaQuery.of(context).size.height),
          child: InkWell(
            onTap: () => launchUrlMethod(
                url:
                    "https://www.canva.com/design/DAEqF2T85fo/CRfoyyEZznVGCNfmVYb7Tg/view?utm_content=DAEqF2T85fo&utm_campaign=designshare&utm_medium=link&utm_source=viewer"),
            child: Image.asset(
              "cv.png",
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        )
      ]))),
    );
  }
}
