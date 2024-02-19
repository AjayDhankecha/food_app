import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/signup_page.dart';

import '../widget/app_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List onBoardingData = [
    {
      'image': 'images/screen1.png',
      'title': 'Select from Our\n  Best Menu',
      'description': 'Pick your food from our menu\n More then 35 times'
    },
    {
      'image': 'images/screen2.png',
      'title': 'Easy and Online Payment',
      'description':
      'You can pay cash on delivery and\n Card payment is available'
    },
    {
      'image': 'images/screen3.png',
      'title': 'Quick Delivery at Your Doorstep',
      'description': 'Deliver your food at your\n Doorstep'
    }
  ];

  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: onBoardingData.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        Image.asset(
                          onBoardingData[index]['image'],
                          height: 450,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          onBoardingData[index]['title'],
                          style: AppWidget.boldText(),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          onBoardingData[index]['description'],
                          style: AppWidget.lightText(),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoardingData.length,
                    (index) => buildDot(index, context),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == onBoardingData.length - 1) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              }
              pageController.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,end: Alignment.bottomCenter,
                      colors: [Colors.deepOrangeAccent, Colors.orange]),
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              height: 60,
              margin:
              EdgeInsets.only(top: 665, left: 40, right: 40, bottom: 25),
              width: double.infinity,
              child: Center(
                child: Text(
                  currentIndex == onBoardingData.length - 1 ? "Start" : "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }
}
