import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sswap_nft/utills/constants.dart';
import 'package:sswap_nft/utills/utils.dart';
import 'package:sswap_nft/widgets/body_dashboard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [AppbarDB(), const DashboardBody()],
        ),
      ),
    );
  }
}

class AppbarDB extends StatefulWidget {
  AppbarDB({
    Key? key,
  }) : super(key: key);

  @override
  State<AppbarDB> createState() => _AppbarDBState();
}

class _AppbarDBState extends State<AppbarDB> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            height: 45,
            child: Row(
              children: [
                MediaQuery.of(context).size.width < 1120
                    ? Container()
                    : Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey.shade50,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Center(
                                      child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 25.0,
                                    ),
                                    child: Text(
                                      "NIFTY",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      "17,897",
                                      style: TextStyle(
                                          color: red,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3, right: 5),
                                    child: Text(
                                      "-1.98%",
                                      style: TextStyle(
                                          color: grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ))),
                              Indexwidget(),
                            ],
                          ),
                        )),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        color: Colors.grey.shade50,
                        child: Row(
                          mainAxisAlignment:
                              MediaQuery.of(context).size.width < 750
                                  ? MainAxisAlignment.spaceBetween
                                  : MainAxisAlignment.end,
                          children: [
                            MediaQuery.of(context).size.width < 750
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0,
                                            right: 12,
                                            bottom: 22,
                                            top: 22),
                                        child: Icon(
                                          CupertinoIcons.bookmark,
                                          color: grey,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0,
                                            right: 12,
                                            bottom: 20,
                                            top: 20),
                                        child: Icon(CupertinoIcons.compass,
                                            color: grey, size: 20),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0,
                                            right: 12,
                                            bottom: 20,
                                            top: 20),
                                        child: Icon(CupertinoIcons.book,
                                            color: grey, size: 20),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0,
                                            right: 12,
                                            bottom: 20,
                                            top: 20),
                                        child: Icon(CupertinoIcons.doc_chart,
                                            color: grey, size: 20),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0,
                                            right: 12,
                                            bottom: 20,
                                            top: 20),
                                        child: Icon(CupertinoIcons.bag,
                                            color: red, size: 20),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0,
                                            right: 12,
                                            bottom: 20,
                                            top: 20),
                                        child: Icon(CupertinoIcons.creditcard,
                                            color: grey, size: 20),
                                      ),
                                    ],
                                  )
                                : Expanded(
                                    flex: 5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        DrawerListTile(
                                            title: "DashBoard", press: () {}),
                                        DrawerListTile(
                                            title: "Orders", press: () {}),
                                        InkWell(
                                          onTap: () {},
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 1, right: 1),
                                            child: SizedBox(
                                              width: 120,
                                              child: Center(
                                                child: Text(
                                                  "Holdings",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        DrawerListTile(
                                            title: "Positions", press: () {}),
                                        DrawerListTile(
                                            title: "Funds", press: () {}),
                                      ],
                                    )),
                            MediaQuery.of(context).size.width < 750
                                ? const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 12,
                                      child: Text(
                                        "RK",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, bottom: 10.0),
                                          child: Container(
                                            color: Colors.grey.shade400,
                                            width: 1,
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: CircleAvatar(
                                                radius: 12,
                                                child: Text(
                                                  "RK",
                                                  style: TextStyle(fontSize: 9),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "HF5467",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}

class Indexwidget extends StatelessWidget {
  Indexwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 1, right: 3),
          child: Text(
            "SENSEX",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(3.0),
          child: Text(
            "67,897",
            style: TextStyle(
                color: red, fontWeight: FontWeight.w500, fontSize: 13),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(3.0),
          child: Text(
            "-1.98%",
            style: TextStyle(
                color: grey, fontWeight: FontWeight.w500, fontSize: 13),
          ),
        ),
      ],
    )));
  }
}
