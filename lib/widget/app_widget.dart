import 'package:flutter/material.dart';

import '../pages/itemdetail_page.dart';

class AppWidget {
  static TextStyle boldText() {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20.0, fontFamily: 'Poppins');
  }

  static TextStyle headerText() {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22.0, fontFamily: 'Poppins');
  }

  static TextStyle lightText() {
    return TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        fontFamily: 'Poppins');
  }

  static TextStyle semiBoldText() {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16.0, fontFamily: 'Poppins');
  }
}

class ShowItem1{
  static showItem1(BuildContext context,String imagePath, String text1, String text2, String text3) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ItemDetailPage()));
      },
      child: Container(
        margin: EdgeInsets.all(4),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  height: 125,
                  width: 125,
                  fit: BoxFit.fill,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: AppWidget.semiBoldText(),
                    ),
                    Text(
                      text2,
                      style: AppWidget.lightText(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      text3,
                      style: AppWidget.semiBoldText(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShowItem extends StatefulWidget {
  const ShowItem({super.key});

  @override
  State<ShowItem> createState() => _ShowItemState();
}

class _ShowItemState extends State<ShowItem> {
  bool salad = false, icecream = false, pizza = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            pizza = true;
            burger = false;
            icecream = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'images/pizza.png',
                color: pizza ? Colors.white : Colors.black,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            pizza = false;
            burger = true;
            icecream = false;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'images/burger.png',
                color: burger ? Colors.white : Colors.black,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            pizza = false;
            burger = false;
            icecream = false;
            salad = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'images/salad.png',
                color: salad ? Colors.white : Colors.black,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            pizza = false;
            burger = false;
            icecream = true;
            salad = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'images/ice-cream.png',
                color: icecream ? Colors.white : Colors.black,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
