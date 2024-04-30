import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardBank extends StatelessWidget {
  final String image;
  final String title;
  const CardBank({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 343,
      height: 210,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/icons/$image.png")),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Image(
                  image: AssetImage("assets/icons/bank_icon.png"),
                  width: 25,
                  height: 25,
                )
              ],
            ),
            const Text(
              "8763 2736 9873 0329",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Card Holder Name",
                      style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                    ),
                    const Text(
                      "Mardon",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expired Date",
                      style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                    ),
                    const Text(
                      "10/28",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage("assets/icons/card.png"),
                  width: 45,
                  height: 45,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
