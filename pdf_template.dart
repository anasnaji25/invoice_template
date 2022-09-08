import 'dart:ffi';

import 'package:flutter/material.dart';

class PdfView extends StatefulWidget {
  const PdfView({super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gk Stores",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "Email: anasnaji2626@gmail.com",
                style: TextStyle(fontSize: 7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tax Invoice",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bill To:",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "anas",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Invoice No.: 67/jan",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Date:25/09/2022",
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              //next
              SizedBox(
                height: 20,
              ),

//
              Container(
                height: 15,
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(children: [
                    Container(
                        width: 20,
                        child: Text(
                          "#",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 90,
                        child: Text(
                          "Item Name",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 45,
                        child: Text(
                          "HSN/SAC",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 40,
                        child: Text(
                          "Quantity",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 50,
                        child: Text(
                          "Price/Unit",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 35,
                        child: Text(
                          "CGST",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 35,
                        child: Text(
                          "SGST",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                    Container(
                        width: 45,
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Amount",
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        )),
                  ]),
                ),
              ),

              //
              for (int i = 0; i < 3; i++)
                Column(
                  children: [
                    Container(
                      height: 10,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Row(children: [
                          Container(
                              width: 20,
                              child: Text(
                                (i + 1).toString(),
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 90,
                              child: Text(
                                "Apple",
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 45,
                              child: Text(
                                "67578",
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 40,
                              child: Text(
                                "6",
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 50,
                              child: Text(
                                "100",
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 35,
                              child: Text(
                                "5",
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 35,
                              child: Text(
                                "5",
                                style: TextStyle(fontSize: 7),
                              )),
                          Container(
                              width: 45,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "110",
                                style: TextStyle(fontSize: 7),
                              )),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 0.5,
                      color: Colors.grey,
                    )
                  ],
                ),
              //
              // total
              Column(
                children: [
                  Container(
                    height: 10,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(children: [
                        Container(
                            width: 20,
                            child: Text(
                              "",
                              style: TextStyle(fontSize: 7),
                            )),
                        Container(
                            width: 90,
                            child: Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 7, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 45,
                            child: Text(
                              "",
                              style: TextStyle(fontSize: 7),
                            )),
                        Container(
                            width: 40,
                            child: Text(
                              "18",
                              style: TextStyle(
                                  fontSize: 7, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 50,
                            child: Text(
                              "300",
                              style: TextStyle(fontSize: 7),
                            )),
                        Container(
                            width: 35,
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontSize: 7, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 35,
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontSize: 7, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 45,
                            alignment: Alignment.centerRight,
                            child: Text(
                              "330",
                              style: TextStyle(
                                  fontSize: 7, fontWeight: FontWeight.bold),
                            )),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 0.5,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //next

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invoice Amount In Words".toUpperCase(),
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 150,
                            color: Colors.grey[300],
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 5),
                              child: Text("Three hundred thirty",
                                  style: TextStyle(
                                      fontSize: 7,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Terms and conditions".toUpperCase(),
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 150,
                            color: Colors.grey[300],
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 5),
                              child: Text("thank you for doing this",
                                  style: TextStyle(
                                      fontSize: 7,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " Sub Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            ),
                            Text(
                              "330",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            )
                          ],
                        ),
                        Container(
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " Total",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7,
                                    color: Colors.white),
                              ),
                              Text(
                                "330",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " Received",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            ),
                            Text(
                              "0.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            )
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " Balance",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            ),
                            Text(
                              "0.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            )
                          ],
                        ),
                      ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
