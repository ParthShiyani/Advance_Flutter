import 'package:flutter/material.dart';
import 'package:play_app_store/globals.dart';
import 'package:play_app_store/screens/details_page.dart';

class TopchartPage extends StatefulWidget {
  const TopchartPage({Key? key}) : super(key: key);

  @override
  State<TopchartPage> createState() => _TopchartPageState();
}

class _TopchartPageState extends State<TopchartPage> {
  TextStyle title = const TextStyle(
      color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
  bool switchval = false;
  List buttons = [
    'Top free',
    'Top grossing',
    'Trending',
    'Top product',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "Show installed apps",
                          style: title,
                        ),
                        const Spacer(),
                        Switch(
                            value: switchval,
                            onChanged: (val) {
                              setState(() {
                                switchval = val;
                              });
                            }),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...buttons
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2,
                                          spreadRadius: 0.5,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.green.shade100,
                                    ),
                                    margin: const EdgeInsets.only(
                                        right: 5, left: 5),
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 5),
                                    height: 30,
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...Global.games
                      .map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(data: e),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(e['id']),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    e['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e['name'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      e['description'],
                                      style: const TextStyle(
                                          fontSize: 11, color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      e['rate'],
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList()
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, -0.5),
                  spreadRadius: 0.5,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.gamepad,
                      color: Colors.green,
                    ),
                    Text(
                      "Games",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.apps),
                    Text("Apps"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.local_movies),
                    Text("Movies & TV"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.book_sharp),
                    Text("Books"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
