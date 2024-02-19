import 'package:flutter/material.dart';
import '../widget/app_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Ajay,',
                      style: AppWidget.boldText(),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Food',
                      style: AppWidget.headerText(),
                    ),
                    Text(
                      'Discover and Get Great Food',
                      style: AppWidget.lightText(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ShowItem(),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      ShowItem1.showItem1(context, 'images/salad2.png',
                          'Veggie Taco Hash', 'Fresh and Healthy', 'Rs 149'),
                      ShowItem1.showItem1(context, 'images/salad3.png',
                          'Mix Veg Salad', 'Spicy with Onion', 'Rs. 199'),
                      ShowItem1.showItem1(
                          context,
                          'images/salad4.png',
                          'Italian Chopped Salad',
                          'Punchy with Cheese',
                          'Rs. 249'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/salad2.png',
                          height: 125,
                          width: 125,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              child: Text(
                                'Arugula Salad with Lemon Vinaigrette',
                                style: AppWidget.semiBoldText(),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              child: Text(
                                'Fresh and Healthy',
                                style: AppWidget.lightText(),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              child: Text(
                                'Rs. 149',
                                style: AppWidget.semiBoldText(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/salad2.png',
                          height: 125,
                          width: 125,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              child: Text(
                                'Arugula Salad with Lemon Vinaigrette',
                                style: AppWidget.semiBoldText(),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              child: Text(
                                'Fresh and Healthy',
                                style: AppWidget.lightText(),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.1,
                              child: Text(
                                'Rs. 149',
                                style: AppWidget.semiBoldText(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
