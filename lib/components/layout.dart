import 'package:flutter/material.dart';

layout(title, leading, widgetChild) {
  return Scaffold(
      body: Column(
    children: [
      Stack(children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/banner.png',
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.transparent,
                  size: 30,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
        )
      ]),
      SingleChildScrollView(child: widgetChild)
    ],
  ));
}

getHexColor(hexColor) {
  Color color =
      Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
  return color;
}
