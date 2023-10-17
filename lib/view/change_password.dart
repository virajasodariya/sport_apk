import 'package:flutter/material.dart';
import 'package:sport_apk/view/widget/elevated_button.dart';
import 'package:sport_apk/view/widget/text_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final formKey = GlobalKey<FormState>();

  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
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
          "Change Password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 30),
                    child: Center(
                      child: Text(
                        "User name googletest",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Old Password:",
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: "Enter Old Password",
                    controller: oldPassword,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: Text(
                      "New Password:",
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: "Enter New Password",
                    controller: newPassword,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: Text(
                      "Re-enter New Password:",
                    ),
                  ),
                  CommonTextFormField(
                    keyboardType: TextInputType.number,
                    hintText: "Re-enter New Password",
                    controller: newPassword,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.03, bottom: height),
                    child: CommonElevetedButton(
                      text: "Save New Password",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
