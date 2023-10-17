import 'package:flutter/material.dart';
import 'package:sport_apk/view/const/team_match.dart';

class LiveLineScreen extends StatefulWidget {
  const LiveLineScreen({super.key});

  @override
  State<LiveLineScreen> createState() => _LiveLineScreenState();
}

class _LiveLineScreenState extends State<LiveLineScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  int selectedIndex = 0;
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        TabBar(
          controller: controller,
          labelColor: Colors.yellow,
          unselectedLabelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.yellow,
          tabs: [
            Tab(
              text: "Live Rates",
            ),
            Tab(
              text: "Upcoming Rates",
            ),
          ],
        ),
        SizedBox(height: height * 0.02),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              child: TabBarView(
                controller: controller,
                children: [
                  buildLiveRates(height, width),
                  buildUpcomingRates(height, width),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  ListView buildLiveRates(double height, double width) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: Container(
            margin: EdgeInsets.only(bottom: height * 0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.02, bottom: height * 0.005),
                  child: Text(
                    "⠂LIVE",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                Text(
                  "The Ashes, 2023",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    commonMatchVertical(),
                    Container(
                      height: height * 0.03,
                      width: width * 0.06,
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.07, vertical: height * 0.06),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade700,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "VS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    commonMatchVertical(),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.015),
                      child: Text(
                        "Winner team name will be showed when match is finished.",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  ListView buildUpcomingRates(double height, double width) {
    return ListView.builder(
      itemCount: 100,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Container(
            margin: EdgeInsets.only(bottom: height * 0.03),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.01),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Afghanistan tour of BanglaDesh, 2023",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            commonMatchTeamSmall(),
                            SizedBox(height: height * 0.015),
                            commonMatchTeamSmall(),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Starting in:",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "0D :2H :59M :45S",
                              style: TextStyle(
                                color: Colors.yellow.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
