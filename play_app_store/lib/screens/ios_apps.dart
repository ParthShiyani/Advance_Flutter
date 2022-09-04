import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_app_store/globals.dart';

class IosApps extends StatefulWidget {
  const IosApps({Key? key}) : super(key: key);

  @override
  State<IosApps> createState() => _IosAppsState();
}

class _IosAppsState extends State<IosApps> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CupertinoNavigationBar(
            leading: Text(
              "Apps",
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.foryouapps1
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.all(10),
                        height: 280,
                        width: 370,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "NOW WITH SIRI",
                              style: TextStyle(
                                color: CupertinoColors.activeBlue,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              e['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              e['description'],
                              style: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 0.5,
                                fontSize: 22,
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                  top: 5,
                                ),
                                height: 200,
                                width: 390,
                                child: Image.asset(
                                  e['image'],
                                  fit: BoxFit.fill,
                                )),
                          ],
                        ),
                      ),
                    )
                    .toList()
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                const Text(
                  "12 Great Apps for IOS 12",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                ),
                const Spacer(),
                CupertinoButton(child: const Text("See All"), onPressed: () {}),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.foryouapps2
                    .map((e) => Container(
                          margin: const EdgeInsets.only(left: 10, top: 5),
                          height: 110,
                          width: 375,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(e['image']),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e['name'],
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    e['description'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      CupertinoButton(
                                          color: CupertinoColors.systemGrey2,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          padding: const EdgeInsets.only(
                                            left: 30,
                                            right: 30,
                                            top: 0.1,
                                            bottom: 0.1,
                                          ),
                                          child: const Text(
                                            "GET",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          onPressed: () {}),
                                      const Text(
                                        "  in-App\n  Purchases",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: CupertinoColors.systemGrey2),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.foryouapps3
                    .map((e) => Container(
                          margin: const EdgeInsets.only(left: 10, top: 5),
                          height: 110,
                          width: 375,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(e['image']),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e['name'],
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    e['description'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      CupertinoButton(
                                          color: CupertinoColors.systemGrey2,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          padding: const EdgeInsets.only(
                                            left: 30,
                                            right: 30,
                                            top: 0.1,
                                            bottom: 0.1,
                                          ),
                                          child: const Text(
                                            "GET",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          onPressed: () {}),
                                      const Text(
                                        "  in-App\n  Purchases",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: CupertinoColors.systemGrey2),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...Global.games
                    .map((e) => Container(
                          margin: const EdgeInsets.only(left: 10, top: 5),
                          height: 110,
                          width: 375,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(e['image']),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e['name'],
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    e['description'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      CupertinoButton(
                                          color: CupertinoColors.systemGrey2,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          padding: const EdgeInsets.only(
                                            left: 30,
                                            right: 30,
                                            top: 0.1,
                                            bottom: 0.1,
                                          ),
                                          child: const Text(
                                            "GET",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          onPressed: () {}),
                                      const Text(
                                        "  in-App\n  Purchases",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: CupertinoColors.systemGrey2),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
