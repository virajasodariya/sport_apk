import 'package:flutter/material.dart';

Center buildApkLogo(double height, double width) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "SAT",
              style: TextStyle(
                fontSize: 50,
                color: Colors.yellow,
              ),
            ),
            Text(
              "SPORT",
              style: TextStyle(
                fontSize: 30,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.33, bottom: height * 0.02),
          child: Container(
            height: height * 0.028,
            width: width * 0.13,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "NEWS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
