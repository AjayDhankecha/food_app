import 'package:flutter/material.dart';

import '../widget/app_widget.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({super.key});

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  int itemAdd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 10),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'images/salad2.png',
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mediterranean',
                      style: AppWidget.semiBoldText(),
                    ),
                    Text(
                      'Veggie Taco Hash',
                      style: AppWidget.boldText(),
                    )
                  ],
                ),
                SizedBox(
                  width: 39,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (itemAdd > 0) itemAdd--;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    height: 25,
                    width: 30,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$itemAdd',
                  style: AppWidget.boldText(),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    setState(() {
                      itemAdd++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    height: 25,
                    width: 30,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Everything you love about the classic salad crunchy croutons! crisp '
                  'romaine! lots of Parmesan cheese! but with an easier homemade '
                  'Caesar dressing. Greek yogurt creates its creamy, tangy base.',
              style: AppWidget.lightText(),
              textAlign: TextAlign.justify,
              maxLines: 5,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Delivery Time',
                  style: AppWidget.semiBoldText(),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.watch_later_outlined),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '30 Min',
                  style: AppWidget.semiBoldText(),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Total Order',
                      style: AppWidget.boldText(),
                    ),
                    Text(
                      'Rs. 0',
                      style: AppWidget.semiBoldText(),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2.5,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),                  color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'Poppins'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
