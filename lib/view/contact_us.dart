import 'package:flutter/material.dart';
import 'package:sport_apk/view/widget/elevated_button.dart';
import 'package:sport_apk/view/widget/text_field.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  List textList = [
    "satsportnews.com",
    "info@satsportnews.com",
  ];
  List iconList = [
    Icons.earbuds_battery_sharp,
    Icons.message_sharp,
  ];

  List socialMediaIcon = [
    Icons.facebook,
    Icons.transfer_within_a_station,
    Icons.insert_page_break_rounded,
    Icons.youtube_searched_for,
    Icons.whatshot,
  ];
  List socialMediaColor = [
    Colors.purple,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
          "Contact Us",
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
                    padding: const EdgeInsets.only(top: 40, bottom: 30),
                    child: Center(
                      child: Text(
                        "Fill Free To Contact Us",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.name,
                    hintText: "Enter your first name",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CommonTextFormField(
                      keyboardType: TextInputType.name,
                      hintText: "Enter your last name",
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: "Enter your email address",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CommonTextFormField(
                      keyboardType: TextInputType.number,
                      hintText: "Enter your contact number",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CommonTextFormField(
                      keyboardType: TextInputType.text,
                      hintText: "write your msg",
                    ),
                  ),
                  CommonElevetedButton(
                    text: "Contact Us Now",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Column(
                    children: List.generate(
                      iconList.length,
                      (index) => Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                iconList[index],
                              ),
                              SizedBox(width: 10),
                              Text(
                                textList[index],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      socialMediaColor.length,
                      (index) => Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          color: socialMediaColor[index],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Icon(
                            socialMediaIcon[index],
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
