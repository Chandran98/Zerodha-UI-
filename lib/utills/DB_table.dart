import 'package:flutter/material.dart';
import 'package:sswap_nft/utills/constants.dart';

class DBrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: DataTable(
              columnSpacing: 65,
              border: TableBorder.all(
                  color: Colors.grey.shade300,
                  style: BorderStyle.solid,
                  width: 1),

              columns: const [
                DataColumn(
                    label: Text(
                      'Instrument',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents if user is verified.'),
                DataColumn(
                    label: Text(
                      'Qty',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents first name of the user'),
                DataColumn(
                    label: Text(
                      'Avg.cost',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents last name of the user'),
                DataColumn(
                    label: Text(
                      'LTP',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents email address of the user'),
                DataColumn(
                    label: Text(
                      'Cur.val',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents phone number of the user'),
                DataColumn(
                    label: Text(
                      'P&L',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents phone number of the user'),
                DataColumn(
                    label: Text(
                      'Net chg',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents phone number of the user'),
                DataColumn(
                    label: Text(
                      'Day chg.',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                    tooltip: 'represents phone number of the user'),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text(
                    "SGBJUB28-GB",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "10")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "3,452")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "7,345")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "63,063")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "8,445")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+2.27%")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "+3.06%")),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "SGBJUB28-GB")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "5")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "5,412")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "1,345")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "34,763")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "4,445")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "+4.67%")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+5.06%")),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "SGBJUB28-GB")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "67")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "1,413")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "3,345")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "14,763")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "2,345")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "+6.67%")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "+1.06%")),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "SGBJUB28-GB")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "23")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "8,413")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "7,945")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "84,763")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "4,345")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+9.37%")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+0.56%")),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "SGBJUB28-GB")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "89")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "2,413")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "3,945")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "31,063")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "4,045")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "+3.67%")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+1.26%")),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "SGBJUB28-GB")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "130")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "5,639")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "5,639")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "76,063")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "1,045")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+8.67%")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+1.06%")),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "SGBJUB28-GB")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "89")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "2,413")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "3,945")),
                  DataCell(Text(
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      "31,063")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "4,045")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: red),
                      "+3.67%")),
                  DataCell(Text(
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: green),
                      "+1.26%")),
                ]),
              ],
              // rows:
              // // provider.data.results
              // //     .map((data) =>
              //         // we return a DataRow every time
              //         DataRow(
              //             // List<DataCell> cells is required in every row
              //             cells: [
              //               DataCell((data.verified)
              //                   ? Icon(
              //                       Icons.verified_user,
              //                       color: Colors.green,
              //                     )
              //                   : Icon(Icons.cancel, color: Colors.red)),
              //               // I want to display a green color icon when user is verified and red when unverified
              //               DataCell(Text(data.firstName)),
              //               DataCell(Text(data.lastName)),
              //               DataCell(Text(data.email)),
              //               DataCell(Text(data.phone)),
              //             ]))
              //     .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class DBListviewstocks extends StatelessWidget {
  const DBListviewstocks({super.key});

  @override
  Widget build(BuildContext context) {
    List<Holdingsmodel> holdingslist = [
      Holdingsmodel(
          color: Colors.red,
          companyname: "SGBJUB28-GB",
          qty: "87",
          ltp: "3,323",
          price: "₹ 7,890",
          profit: "1,212",
          percentage: "2.34%"),
      Holdingsmodel(
          color: Colors.green,
          companyname: "SGBJUB223-GB",
          qty: "12",
          ltp: "8,123",
          price: "₹ 2,890",
          profit: "8,212",
          percentage: "4.34%"),
      Holdingsmodel(
          color: Colors.green,
          companyname: "SGBJUB218-GB",
          qty: "187",
          ltp: "1,323",
          price: "₹ 3,890",
          profit: "2,212",
          percentage: "1.54%"),
      Holdingsmodel(
          color: Colors.red,
          companyname: "SGBJUB118-GB",
          qty: "78",
          ltp: "6,323",
          price: "₹ 9,890",
          profit: "4,212",
          percentage: "0.54%"),Holdingsmodel(
          color: Colors.green,
          companyname: "SGBJUB218-GB",
          qty: "187",
          ltp: "1,323",
          price: "₹ 3,890",
          profit: "2,212",
          percentage: "1.54%"),
      Holdingsmodel(
          color: Colors.red,
          companyname: "SGBJUB118-GB",
          qty: "78",
          ltp: "6,323",
          price: "₹ 9,890",
          profit: "4,212",
          percentage: "0.54%"),
      Holdingsmodel(
          color: Colors.green,
          companyname: "DDBJUB218-GB",
          qty: "54",
          ltp: "6,323",
          price: "₹ 1,890",
          profit: " 6,212",
          percentage: "2.54%"),
      Holdingsmodel(
          color: Colors.green,
          companyname: "SGBJUB218-GB",
          qty: "187",
          ltp: "1,323",
          price: "₹ 3,890",
          profit: "2,212",
          percentage: "1.54%"),
      Holdingsmodel(
          color: Colors.red,
          companyname: "SGBJUB118-GB",
          qty: "78",
          ltp: "6,323",
          price: "₹ 9,890",
          profit: "4,212",
          percentage: "0.54%"),
    ];
    return ListView.builder(
      itemCount: holdingslist.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Container(
            height: 65,
            color: Colors.white,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(" Qty.",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: grey)),
                        Text("${holdingslist[index].qty}",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("LTP ",
                            style: const TextStyle(fontSize: 8, color: grey)),
                        Text("${holdingslist[index].ltp}",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(" ${holdingslist[index].companyname}",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                        const Text(" NSE",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: grey)),
                      ],
                    ),
                    Text("    ${holdingslist[index].price} ",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("${holdingslist[index].percentage} ",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: holdingslist[index].color)),
                        Text("${holdingslist[index].profit} ",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class Holdingsmodel {
  late String companyname, qty, ltp, price, percentage, profit;
  Color color;
  Holdingsmodel({
    required this.color,
    required this.companyname,
    required this.qty,
    required this.ltp,
    required this.price,
    required this.profit,
    required this.percentage,
  });
}
