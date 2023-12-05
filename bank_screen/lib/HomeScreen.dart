import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var orange = const Color(0xfff18151);
  var pink = const Color(0xFFee528c);
  var blue = const Color(0xFF8bccd6);
  var darkBlue = const Color(0xFF60a0d7);
  var valueBlue = const Color(0xFF5fa0d6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Statement",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Current Balance",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text("\$4373.23",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ),
          getCards("Cards", "Last 6 months", "\$ 3284.00", orange, pink),
          getCards("Bank", "Last 6 months", "\$ 3284.00", blue, darkBlue),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  getRowItem("Bank America", "12-03-2019", "\$ 3284.00",
                      "DBBL- City Bank"),
                  getRowItem("Bank America", "12-03-2019", "\$ 3284.00",
                      "DBBL- City Bank"),
                  getRowItem("Bank America", "12-03-2019", "\$ 3284.00",
                      "DBBL- City Bank"),
                  getRowItem("Bank America", "12-03-2019", "\$ 3284.00",
                      "DBBL- City Bank"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getRowItem(
      String title, String subtitle, String balance, String transaction) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      balance,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      transaction,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              height: 4,
            ),
          )
        ],
      ),
    );
  }

  Widget getCards(String title, String subtitle, String balance, Color color1,
      Color color2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1, color2]),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                  ),
                ],
              ),
              Text(
                balance,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
