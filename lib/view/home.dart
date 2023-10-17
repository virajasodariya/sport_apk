import 'package:flutter/material.dart';
import 'package:sport_apk/view/const/team_match.dart';
import 'package:sport_apk/view/news_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, List> item = {
    "itemColor": [
      Colors.cyanAccent,
      Colors.purpleAccent,
      Colors.greenAccent,
      Colors.redAccent,
      Colors.orangeAccent,
      Colors.blueAccent,
    ],
    "itemText": [
      "Live Line",
      "Curent Matches",
      "Recent Matches",
      "Upcoming Matches",
      "News",
      "Blogs",
    ],
    "itemIcon": [
      Icons.live_help,
      Icons.currency_bitcoin,
      Icons.recent_actors,
      Icons.calendar_month,
      Icons.newspaper,
      Icons.block,
    ],
  };

  PageController pageController = PageController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.03),
          child: Column(
            children: [
              buildPageViewLiveMatch(width, height),
              buildListOfCurrentIndex(height, width),
              buildGridViewTopContain(width, height),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Headlines",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsDetailsScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Read More",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      )),
                ],
              ),
              buildListViewTopHeadlines(height, width),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildPageViewLiveMatch(double width, double height) {
    return SizedBox(
      height: 200,
      width: width,
      child: PageView.builder(
        allowImplicitScrolling: true,
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            selected = value;
          });
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
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
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "5th July 2023 11:30:00 PM",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        commonMatchTeamRight(),
                        Container(
                          height: height * 0.03,
                          width: height * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade700,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "VS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        commonMatchTeamleft(),
                      ],
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Match start in",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "0D :12H :59M :50s",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Center(
                    child: Text(
                      "The Scorecard will appear once the match starts.",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Row buildListOfCurrentIndex(double height, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Container(
          height: height * 0.007,
          width: height * 0.007,
          margin: EdgeInsets.symmetric(horizontal: width * 0.01),
          decoration: BoxDecoration(
            color: selected == index ? Colors.amber : Colors.grey.shade400,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  GridView buildGridViewTopContain(double width, double height) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: width * 0.02,
        mainAxisSpacing: height * 0.012,
        childAspectRatio: 2 / 0.75,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: item["itemColor"]![index],
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                bottom: 0,
                top: 0,
                child: Icon(
                  item["itemIcon"]![index],
                  color: Colors.white.withOpacity(0.5),
                  size: 50,
                ),
              ),
              Positioned(
                bottom: 0,
                top: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      item["itemIcon"]![index],
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      item["itemText"]![index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  ListView buildListViewTopHeadlines(double height, double width) {
    return ListView.builder(
      itemCount: 100,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.09,
              width: width * 0.25,
              margin:
                  EdgeInsets.only(bottom: height * 0.02, right: width * 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/splash_screen_background_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              child: Text(
                maxLines: 3,
                "Broad hails great leader anderson as England pair topple warne and McGrath rest of series.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
