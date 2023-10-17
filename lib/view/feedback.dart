import 'package:flutter/material.dart';
import 'package:sport_apk/view/const/decoration.dart';
import 'package:sport_apk/view/widget/elevated_button.dart';
import 'package:sport_apk/view/widget/text_field.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({super.key});

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  Map<String, List> item = {
    "iconList": [
      "😍",
      "😒",
      "☹️",
      "😀",
      "😌",
    ],
    "textList": [
      "Love",
      "Sad",
      "Not much",
      "happy",
      "smooth",
    ],
  };

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.04, bottom: height * 0.02),
                    child: Center(
                      child: Text(
                        "Send us Your Feedback!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Do you have a suggestion or found some bug? let us know in the field below.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    child: Center(
                      child: Text(
                        "How was your experience?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04, vertical: height * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                            item["iconList"]!.length,
                            (index) => Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: Text(
                                    "${item["iconList"]![index]}",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                selected == index
                                    ? Text(
                                        item["textList"]![index],
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, top: height * 0.02),
                    child: Text(
                      "Your good name?",
                      style: FontTextStyle.kGrey16W600.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: "Enter Old Password",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Your email address?",
                      style: FontTextStyle.kGrey16W600.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: "Enter New Password",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Tell us something?",
                      style: FontTextStyle.kGrey16W600.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  CommonTextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.number,
                    hintText: "Tell us something....",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CommonElevetedButton(
                      text: "Send FeedBack",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(
                    height: height,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
