import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
            Image.asset(
              'assets/hero.png',
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 30, right: 30),
              child: Container(
                color: Colors.transparent,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    Image.asset(
                      'assets/cyberjayaairlines_white.png',
                      height: 50,
                    ),
                    const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              height: 20,
              width: 430,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0)),
                  color: Colors.grey[50],
                ),
                height: 10,
              ),
            ),
          ]),
          SizedBox(
              height: 600,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      renderIcon('assets/icon_flypass.png', 'MHflypass'),
                      renderIcon('assets/icon_voucher.png', 'MHVoucher'),
                      renderIcon('assets/icon_info.png', 'Travel Info'),
                      renderIcon('assets/icon_more.png', 'More'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Promotions For You",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "View All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: getHexColor('#273f6e'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          renderPromotion(
                            'assets/promotion_1.png',
                            'Exclusive deal for you this week',
                            'limited time only',
                          ),
                          renderPromotion(
                            'assets/promotion_2.png',
                            'Cyberjaya Flypass',
                            'Enjoy travel passes like Cyberjaya Flypass for flexible travelling. Purchase now',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    ));
  }

  renderIcon(iconImageUrl, iconLabel) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: getHexColor('#273f6e'),
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              iconImageUrl,
              width: 35,
              height: 35,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          iconLabel,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  getHexColor(hexColor) {
    Color color =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return color;
  }
}

renderPromotion(imageUrl, title, label) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: 350,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 9,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: SizedBox.fromSize(
              child: Image.asset(imageUrl,
                  width: double.infinity, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(label),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [Text('Explore'), Icon(Icons.arrow_forward)],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
