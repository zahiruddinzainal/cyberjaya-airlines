import 'package:cyberjayaairlines/components/layout.dart';
import 'package:flutter/material.dart';

class Trip extends StatefulWidget {
  @override
  _TripState createState() => _TripState();
}

class _TripState extends State<Trip> {
  @override
  @override
  Widget build(BuildContext context) {
    return layout('Book Flight', false, renderWidgetChild());
  }
}

renderWidgetChild() {
  return Column(
    children: [
      Container(
          height: 400,
          width: double.infinity,
          color: Colors.grey[50],
          child: Column(
            children: [
              SizedBox(
                height: 230,
                child: Image.asset(
                  'assets/trip.png',
                ),
              ),
              const Text("data"),
            ],
          )),
    ],
  );
}

getHexColor(hexColor) {
  Color color =
      Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
  return color;
}
