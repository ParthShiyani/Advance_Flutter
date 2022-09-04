import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosToday extends StatefulWidget {
  const IosToday({Key? key}) : super(key: key);

  @override
  State<IosToday> createState() => _IosTodayState();
}

class _IosTodayState extends State<IosToday> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CupertinoNavigationBar(
            leading: Text(
              "Today",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
              ),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/amazon.jpg"),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                height: 600,
                width: double.infinity,
                child: Image.asset(
                  "assets/iosimage/fruit.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "SERIOUSLY?",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fruit Ninja Games",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 22,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 480,
                    ),
                    Text(
                      "Anything can happen in ninja-these games prove it.Tap to play.",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        // fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                height: 600,
                width: double.infinity,
                child: Image.asset(
                  "assets/iosimage/sport.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "You Can Do it..",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sports Games",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 22,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 480,
                    ),
                    Text(
                      "Anything can happen in Sports-these games prove it.Tap to play.",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        // fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
