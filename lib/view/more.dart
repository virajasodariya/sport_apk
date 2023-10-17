import 'package:flutter/material.dart';
import 'package:sport_apk/view/change_password.dart';
import 'package:sport_apk/view/const/decoration.dart';
import 'package:sport_apk/view/widget/more_list_tile.dart';
import 'package:sport_apk/view/contact_us.dart';
import 'package:sport_apk/view/feedback.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                child: Text(
                  "User",
                  style: FontTextStyle.kGrey16W600,
                ),
              ),
              buildUser(context),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Matches",
                  style: FontTextStyle.kGrey16W600,
                ),
              ),
              buildMatches(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Setting",
                  style: FontTextStyle.kGrey16W600,
                ),
              ),
              buildSetting(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "About",
                  style: FontTextStyle.kGrey16W600,
                ),
              ),
              buildAbout(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                child: Text(
                  "Support",
                  style: FontTextStyle.kGrey16W600,
                ),
              ),
              buildSupport(context),
            ],
          ),
        ),
      ),
    );
  }

  Container buildUser(BuildContext context) {
    return Container(
              decoration: BoxDecorationStyle.kgreyBoxShadow,
              child: Column(
                children: [
                  CommonMoreListTile(
                      onTap: () {},
                      leading: Icons.people,
                      title: "googletest",
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                      )),
                  CommonMoreListTile(
                      onTap: () {},
                      leading: Icons.mobile_friendly,
                      title: "LogOut",
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                      )),
                  CommonMoreListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangePassword(),
                            ));
                      },
                      leading: Icons.lock_clock_outlined,
                      title: "Change Password",
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                      )),
                ],
              ),
            );
  }

  Container buildMatches() {
    return Container(
              decoration: BoxDecorationStyle.kgreyBoxShadow,
              child: Column(
                children: [
                  CommonMoreListTile(
                      onTap: () {},
                      leading: Icons.sailing,
                      title: "Season",
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                      )),
                  CommonMoreListTile(
                      onTap: () {},
                      leading: Icons.telegram_sharp,
                      title: "Teams",
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                      )),
                ],
              ),
            );
  }

  Container buildSetting() {
    return Container(
              decoration: BoxDecorationStyle.kgreyBoxShadow,
              child: CommonMoreListTile(
                onTap: () {},
                leading: Icons.dark_mode,
                title: switchValue ? "Light Mode" : "Dark Mode",
                trailing: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ),
            );
  }

  Container buildAbout() {
    return Container(
      decoration: BoxDecorationStyle.kgreyBoxShadow,
      child: CommonMoreListTile(
          onTap: () {},
          leading: Icons.sports_baseball,
          title: "About Satsports News",
          trailing: Icon(
            Icons.arrow_forward_ios,
          )),
    );
  }

  Container buildSupport(BuildContext context) {
    return Container(
      decoration: BoxDecorationStyle.kgreyBoxShadow,
      child: Column(
        children: [
          CommonMoreListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUsScreen(),
                    ));
              },
              leading: Icons.people,
              title: "Rate us",
              trailing: Icon(
                Icons.arrow_forward_ios,
              )),
          CommonMoreListTile(
              onTap: () {},
              leading: Icons.share,
              title: "Share app",
              trailing: Icon(
                Icons.arrow_forward_ios,
              )),
          CommonMoreListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedBackScreen(),
                    ));
              },
              leading: Icons.feedback,
              title: "Feedback",
              trailing: Icon(
                Icons.arrow_forward_ios,
              )),
          CommonMoreListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUsScreen(),
                    ));
              },
              leading: Icons.contact_emergency,
              title: "Contact us",
              trailing: Icon(
                Icons.arrow_forward_ios,
              )),
        ],
      ),
    );
  }
}
