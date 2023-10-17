import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatefulWidget {
  const NewsDetailsScreen({super.key});

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  Map<String, List> item = {
    "iconList": [
      Icons.person,
      Icons.calendar_month,
    ],
    "nameList": [
      "John Skillbeck",
      "18th February",
    ],
  };

  @override
  Widget build(BuildContext context) {
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
          "Latest News",
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
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                  child: Image.asset(
                    "assets/images/splash_screen_background_image.jpg",
                    isAntiAlias: true,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 30, top: 10),
                  child: Text(
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    "England just didnt like it: Legendary umpire Simon Taufel passes verdict on Jonny Bairstow's controversial dismissal",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: List.generate(
                      item["iconList"]!.length,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              item["iconList"]![index],
                              color: Colors.yellow.shade700,
                            ),
                            SizedBox(width: 5),
                            Text(
                              item["nameList"]![index],
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 30, top: 20),
                  child: const Text(
                    textAlign: TextAlign.left,
                    "While Bairstow's dismissal in the 2nd Ashes Test has still kept social media buzzing, legendary umpire Simon Taufel has shared his thoughts on the subject.\n\n The second Ashes Test at Lord's, which Australia won by 43 runs to go 2-0 up in the five-match series, witnessed a few moments, which overshadowed the intense competition the two sides produced. Instead, the “spirit of cricket” was intensely debated on social media with Jonny Bairstow's dismissal in the second innings being the most discussed topic. \n\n Bairstow was stumped for 10 by Australia keeper Alex Carey and although the dismissal was well within the rules, England players felt it lacked sportsmanship. England's Ben Stokes said as a captain he wouldn't have wanted to win a Test match in such a manner, before adding he would have withdrawn the run-out appeal. \n\n While Bairstow's dismissal in the 2nd Ashes Test has still kept social media buzzing, legendary umpire Simon Taufel has shared his thoughts on the subject.\n\n The second Ashes Test at Lord's, which Australia won by 43 runs to go 2-0 up in the five-match series, witnessed a few moments, which overshadowed the intense competition the two sides produced. Instead, the “spirit of cricket” was intensely debated on social media with Jonny Bairstow's dismissal in the second innings being the most discussed topic. \n\n Bairstow was stumped for 10 by Australia keeper Alex Carey and although the dismissal was well within the rules, England players felt it lacked sportsmanship. England's Ben Stokes said as a captain he wouldn't have wanted to win a Test match in such a manner, before adding he would have withdrawn the run-out appeal. \n\n",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
