import 'package:flutter/material.dart';

commonMatchTeamRight() {
  return Row(
    children: [
      Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/splash_screen_background_image.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(width: 10),
      Text(
        "ENGW",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

commonMatchTeamleft() {
  return Row(
    children: [
      Text(
        "ENGW",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(width: 10),
      Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/splash_screen_background_image.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

commonMatchTeamSmall() {
  return Row(
    children: [
      Container(
        height: 35,
        width: 35,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/splash_screen_background_image.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(width: 10),
      Text(
        "ENGW",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

commonMatchVertical() {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/splash_screen_background_image.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 10),
      Text(
        "England",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
