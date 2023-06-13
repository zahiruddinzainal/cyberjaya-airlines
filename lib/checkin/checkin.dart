import 'package:cyberjayaairlines/components/layout.dart';
import 'package:flutter/material.dart';

class Checkin extends StatefulWidget {
  @override
  _CheckinState createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  @override
  @override
  Widget build(BuildContext context) {
    return layout('Check-in', false, renderWidgetChild());
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
