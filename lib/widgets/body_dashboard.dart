
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sswap_nft/utills/DB_table.dart';
import 'package:sswap_nft/utills/constants.dart';
import 'package:sswap_nft/utills/search_field.dart';

import '../size/size.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  var custompapadcolor;
  List papadcolor = [Colors.red, Colors.green.shade900];
  List<Numberlist> number = [
    Numberlist(name: 240, color: Colors.blueAccent.shade700),
    Numberlist(name: 150, color: Colors.blue),
    Numberlist(name: 110, color: Colors.purple.shade600),
    Numberlist(name: 90, color: Colors.deepPurple.shade900),
    Numberlist(name: 70, color: Colors.cyan),
    Numberlist(name: 70, color: Color.fromARGB(255, 155, 9, 165)),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 11,
        child: Row(
          children: [
            MediaQuery.of(context).size.width < 1255
                ? Container()
                : Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 65, bottom: 1, right: 1, top: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 45,
                              child: SearchField(),
                              color: Colors.white,
                            ),
                            const Watchlist(),
                            SingleChildScrollView(
                              child: SizedBox(
                                height: 40,
                                // color: Colors.green,
                                child: ListView.builder(
                                  itemCount: 7,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var no = index + 1;
                                    return Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                            height: 45,
                                            width: 40,
                                            color: Colors.white,
                                            child: Center(
                                                child: Text(no.toString()))));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top:0.0),
                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: MediaQuery.of(context).size.width < 850
                                ? Padding(
                                  padding:  EdgeInsets.fromLTRB(8, 18, 8, 5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MediaQuery.of(context)
                                                              .size
                                                              .width <
                                                          850
                                                      ? MainAxisAlignment
                                                          .spaceBetween
                                                      : MainAxisAlignment
                                                          .spaceBetween,
                                              children: [
                                                const Text("Holdings (74)",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 38.0),
                                                  child: Container(
                                                    height: 80,
                                                    width: 110,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey,
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                4)),
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: DropdownButton(
                                                      underline: const SizedBox(),
                                                      iconSize: 25,
                                                      isExpanded: true,
                                                      hint: const Center(
                                                        child: Text(
                                                          "Kite only",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      items: papadcolor
                                                          .map((valueitem) {
                                                        return DropdownMenuItem(
                                                          value: valueitem,
                                                          child: Container(
                                                            height: 20,
                                                            width: 20,
                                                            color: valueitem,
                                                          ),
                                                        );
                                                      }).toList(),
                                                      onChanged: (selected) {
                                                        setState(() {
                                                          custompapadcolor =
                                                              selected;
                                                          print(custompapadcolor);
                                                        });
                                                      },
                                                      value: custompapadcolor,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MediaQuery.of(context)
                                                              .size
                                                              .width >
                                                          860
                                                      ? MainAxisAlignment.end
                                                      : MainAxisAlignment.start,
                                              children: [
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        850
                                                    ? Container(
                                                        width: 120,
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8),
                                                        height: 35,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(5)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Icon(
                                                              Icons.search,
                                                              size: 19,
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          8.0),
                                                              child:
                                                                  Text("search"),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    : Container(),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 8, 8, 8),
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        CupertinoIcons
                                                            .lock_shield_fill,
                                                        color: blue,
                                                        size: 18,
                                                      ),
                                                      Text(
                                                        "Authorisation",
                                                        style: TextStyle(
                                                            color: blue,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: const [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Icon(
                                                          CupertinoIcons
                                                              .chat_bubble_text_fill,
                                                          color: blue,
                                                          size: 18,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Analytics",
                                                        style: TextStyle(
                                                            color: blue,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        CupertinoIcons.person_2,
                                                        color: blue,
                                                        size: 18,
                                                      ),
                                                      Text(
                                                        "Family",
                                                        style: TextStyle(
                                                            color: blue,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        550
                                                    ? Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8, 8, 38, 8),
                                                        child: Row(
                                                          children: const [
                                                            Icon(
                                                              CupertinoIcons
                                                                  .cloud_download,
                                                              color: blue,
                                                              size: 18,
                                                            ),
                                                            Text(
                                                              "Download",
                                                              style: TextStyle(
                                                                  color: blue,
                                                                  fontSize: 12),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    : Container(),
                                              ],
                                            )),
                                      ],
                                    ),
                                )
                                : Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Text("Holdings (7)",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 38.0),
                                                child: Container(
                                                  height: 35,
                                                  width: 110,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: DropdownButton(
                                                    underline: const SizedBox(),
                                                    iconSize: 35,
                                                    isExpanded: true,
                                                    hint: const Center(
                                                      child: Text(
                                                        "Kite only",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    items: papadcolor
                                                        .map((valueitem) {
                                                      return DropdownMenuItem(
                                                        value: valueitem,
                                                        child: Container(
                                                          height: 20,
                                                          width: 20,
                                                          color: valueitem,
                                                        ),
                                                      );
                                                    }).toList(),
                                                    onChanged: (selected) {
                                                      setState(() {
                                                        custompapadcolor =
                                                            selected;
                                                        print(custompapadcolor);
                                                      });
                                                    },
                                                    value: custompapadcolor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 120,
                                                padding:
                                                    const EdgeInsets.all(8),
                                                height: 35,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: const [
                                                    Icon(
                                                      Icons.search,
                                                      size: 19,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 8.0),
                                                      child: Text("search"),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    40, 8, 8, 8),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .lock_shield_fill,
                                                      color: blue,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      "Authorisation",
                                                      style: TextStyle(
                                                          color: blue,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: const [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Icon(
                                                        CupertinoIcons
                                                            .chat_bubble_text_fill,
                                                        color: blue,
                                                        size: 18,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Analytics",
                                                      style: TextStyle(
                                                          color: blue,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons.person_2,
                                                      color: blue,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      "Family",
                                                      style: TextStyle(
                                                          color: blue,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    8, 8, 38, 8),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      CupertinoIcons
                                                          .cloud_download,
                                                      color: blue,
                                                      size: 18,
                                                    ),
                                                    Text(
                                                      "Download",
                                                      style: TextStyle(
                                                          color: blue,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                          )),
                      //need to do listtable
                      Expanded(
                          flex: 5,
                          child: MediaQuery.of(context).size.width > 450
                              ? DBrow()
                              : DBListviewstocks()),
                      MediaQuery.of(context).size.width > 850
                          ? Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Total investment",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: grey),
                                                  ),
                                                ),
                                                Text(
                                                  "23,23,342",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                )
                                              ],
                                            )),
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Current value",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: grey),
                                                  ),
                                                ),
                                                Text(
                                                  "2,19,342",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                )
                                              ],
                                            )),
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Day's P&L",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: grey),
                                                  ),
                                                ),
                                                Text(
                                                  "- 166",
                                                  style: TextStyle(
                                                      fontSize: 25, color: red),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "(-0.06%)",
                                                    style: TextStyle(
                                                        color: red,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            )),
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Total P&L",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: grey),
                                                  ),
                                                ),
                                                Text(
                                                  "1,971",
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      color: green),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "(-0.068%)",
                                                    style: TextStyle(
                                                        color: green,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            )),
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80.0),
                                              child: Container(
                                                width: double.maxFinite,
                                                // color: Colors.amberAccent,
                                                height: 50,
                                                child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: number.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    //eeee
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5.0,
                                                              bottom: 5),
                                                      child: Container(
                                                        height: 40,
                                                        width: number[index]
                                                            .name
                                                            .toDouble(),
                                                        color:
                                                            number[index].color,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 32),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Radio(
                                                          splashRadius: 12,
                                                          value: 3,
                                                          groupValue: 3,
                                                          onChanged:
                                                              (value) {}),
                                                      const Text(
                                                        "Current Value",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: grey),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Radio(
                                                          value: 3,
                                                          groupValue: 2,
                                                          onChanged:
                                                              (value) {}),
                                                      const Text(
                                                        "Investment Value",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: grey),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Radio(
                                                          value: 3,
                                                          groupValue: 2,
                                                          onChanged:
                                                              (value) {}),
                                                      const Text(
                                                        "P&L",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: grey),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ))
                          : Container(),
                    ],
                  ),
                ))
          ],
        ));
  }
}

class Watchlist extends StatelessWidget {
  const Watchlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Listmodel> companylist = [
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "Tata Motor",
          color: Colors.red,
          price: "234",
          pricechange: "0.234"),
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "Adani Gas",
          color: Colors.red,
          price: "2374",
          pricechange: "0.013"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "Adani Ports",
          color: Colors.green,
          price: "734",
          pricechange: "0.94"),
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "Adani Wimar",
          color: Colors.red,
          price: "24",
          pricechange: "1.234"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "RIL",
          color: Colors.green,
          price: "975",
          pricechange: "2.67"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "KPIT",
          color: Colors.green,
          price: "567",
          pricechange: "0.098"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "Zomato",
          color: Colors.green,
          price: "35667",
          pricechange: "1.34"),
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "Echier Motor",
          color: Colors.red,
          price: "445",
          pricechange: "0.34"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "RITES",
          color: Colors.green,
          price: "833",
          pricechange: "3.39"),
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "IEX",
          color: Colors.red,
          price: "875",
          pricechange: "0.78"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "Adani Ports",
          color: Colors.green,
          price: "734",
          pricechange: "0.94"),
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "Adani Wimar",
          color: Colors.red,
          price: "24",
          pricechange: "1.234"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "RIL",
          color: Colors.green,
          price: "975",
          pricechange: "2.67"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "KPIT",
          color: Colors.green,
          price: "567",
          pricechange: "0.098"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "Zomato",
          color: Colors.green,
          price: "35667",
          pricechange: "1.34"),Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "RITES",
          color: Colors.green,
          price: "833",
          pricechange: "3.39"),
      Listmodel(
          iconData: Icons.keyboard_arrow_down_sharp,
          name: "IEX",
          color: Colors.red,
          price: "875",
          pricechange: "0.78"),
      Listmodel(
          iconData: Icons.keyboard_arrow_up_rounded,
          name: "Adani Ports",
          color: Colors.green,
          price: "734",
          pricechange: "0.94"),
    ];

    return SizedBox(
      height: 750,
      child: ListView.builder(
        itemCount: companylist.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 45,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 45,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(8, 15, 8, 8),
                            child: Text(
                              companylist[index].name,
                              style: TextStyle(
                                  color: companylist[index].color,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Text("${companylist[index].pricechange} %"),
                              Icon(
                                companylist[index].iconData,
                                color: companylist[index].color,
                              )
                            ],
                          )),
                          Expanded(
                              child: Container(
                                  child: Center(
                                      child: Text(
                            companylist[index].price,
                            style: TextStyle(color: companylist[index].color),
                          )))),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}

class Listmodel {
  String name;
  String pricechange;
  String price;
  Color color;
  IconData iconData;
  Listmodel(
      {required this.name,
      required this.iconData,
      required this.color,
      required this.price,
      required this.pricechange});
}

class Numberlist {
  int name;
  Color color;
  Numberlist({
    required this.name,
    required this.color,
  });
}
