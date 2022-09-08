import 'package:device_details/pdf_view_test.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:get/get.dart';

class PdControll extends GetxController {
  generate() async {
    final pdf = pw.Document();

    pdf.addPage(pw.Page(
        pageFormat:
            PdfPageFormat.a4.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                "Gk Stores",
                style:
                    pw.TextStyle(fontSize: 15, fontBold: pw.Font.courierBold()),
              ),
              pw.Text(
                "Email: anasnaji2626@gmail.com",
                style: pw.TextStyle(fontSize: 7),
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Text(
                    "Tax Invoice",
                    style: pw.TextStyle(
                        fontSize: 13,
                        color: PdfColors.blue,
                        fontBold: pw.Font.courierBold()),
                  )
                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Bill To:",
                        style: pw.TextStyle(
                            fontSize: 8, fontBold: pw.Font.courierBold()),
                      ),
                      pw.Text(
                        "anas",
                        style: pw.TextStyle(
                            fontSize: 8, fontBold: pw.Font.courierBold()),
                      )
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        "Invoice No.: 67/jan",
                        style: pw.TextStyle(
                            fontSize: 8, fontBold: pw.Font.courierBold()),
                      ),
                      pw.Text(
                        "Date:25/09/2022",
                        style: pw.TextStyle(
                            fontSize: 8, fontBold: pw.Font.courierBold()),
                      )
                    ],
                  ),
                ],
              ),
              //next
              pw.SizedBox(
                height: 20,
              ),

//
              pw.Container(
                height: 15,
                color: PdfColors.blue,
                alignment: pw.Alignment.centerLeft,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.only(
                    left: 10,
                  ),
                  child: pw.Row(children: [
                    pw.Container(
                        width: 20,
                        child: pw.Text(
                          "#",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 90,
                        child: pw.Text(
                          "Item Name",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 45,
                        child: pw.Text(
                          "HSN/SAC",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 40,
                        child: pw.Text(
                          "Quantity",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 50,
                        child: pw.Text(
                          "Price/Unit",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 35,
                        child: pw.Text(
                          "CGST",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 35,
                        child: pw.Text(
                          "SGST",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                    pw.Container(
                        width: 45,
                        alignment: pw.Alignment.centerRight,
                        child: pw.Text(
                          "Amount",
                          style:
                              pw.TextStyle(color: PdfColors.white, fontSize: 7),
                        )),
                  ]),
                ),
              ),

              //
              for (int i = 0; i < 3; i++)
                pw.Column(
                  children: [
                    pw.Container(
                      height: 10,
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.only(
                          left: 10,
                        ),
                        child: pw.Row(children: [
                          pw.Container(
                              width: 20,
                              child: pw.Text(
                                (i + 1).toString(),
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 90,
                              child: pw.Text(
                                "Apple",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 45,
                              child: pw.Text(
                                "67578",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 40,
                              child: pw.Text(
                                "6",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 50,
                              child: pw.Text(
                                "100",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 35,
                              child: pw.Text(
                                "5",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 35,
                              child: pw.Text(
                                "5",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                          pw.Container(
                              width: 45,
                              alignment: pw.Alignment.centerRight,
                              child: pw.Text(
                                "110",
                                style: pw.TextStyle(fontSize: 7),
                              )),
                        ]),
                      ),
                    ),
                    pw.SizedBox(
                      height: 2,
                    ),
                    pw.Container(
                      height: 0.5,
                      color: PdfColors.grey,
                    )
                  ],
                ),
              //
              // total
              pw.Column(
                children: [
                  pw.Container(
                    height: 10,
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Padding(
                      padding: const pw.EdgeInsets.only(
                        left: 10,
                      ),
                      child: pw.Row(children: [
                        pw.Container(
                            width: 20,
                            child: pw.Text(
                              "",
                              style: pw.TextStyle(fontSize: 7),
                            )),
                        pw.Container(
                            width: 90,
                            child: pw.Text(
                              "Total",
                              style: pw.TextStyle(
                                  fontSize: 7, fontBold: pw.Font.courierBold()),
                            )),
                        pw.Container(
                            width: 45,
                            child: pw.Text(
                              "",
                              style: pw.TextStyle(fontSize: 7),
                            )),
                        pw.Container(
                            width: 40,
                            child: pw.Text(
                              "18",
                              style: pw.TextStyle(
                                  fontSize: 7, fontBold: pw.Font.courierBold()),
                            )),
                        pw.Container(
                            width: 50,
                            child: pw.Text(
                              "300",
                              style: pw.TextStyle(fontSize: 7),
                            )),
                        pw.Container(
                            width: 35,
                            child: pw.Text(
                              "15",
                              style: pw.TextStyle(
                                  fontSize: 7, fontBold: pw.Font.courierBold()),
                            )),
                        pw.Container(
                            width: 35,
                            child: pw.Text(
                              "15",
                              style: pw.TextStyle(
                                  fontSize: 7, fontBold: pw.Font.courierBold()),
                            )),
                        pw.Container(
                            width: 45,
                            alignment: pw.Alignment.centerRight,
                            child: pw.Text(
                              "330",
                              style: pw.TextStyle(
                                  fontSize: 7, fontBold: pw.Font.courierBold()),
                            )),
                      ]),
                    ),
                  ),
                  pw.SizedBox(
                    height: 2,
                  ),
                  pw.Container(
                    height: 0.5,
                    color: PdfColors.grey,
                  )
                ],
              ),
              pw.SizedBox(
                height: 20,
              ),
              //next

              pw.Row(
                children: [
                  pw.Expanded(
                    child: pw.Container(
                      height: 60,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Invoice Amount In Words".toUpperCase(),
                            style: pw.TextStyle(
                                fontSize: 9,
                                color: PdfColors.grey,
                                fontBold: pw.Font.courierBold()),
                          ),
                          pw.Container(
                            width: 150,
                            color: PdfColors.grey300,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(
                                  top: 2, bottom: 2, left: 5),
                              child: pw.Text("Three hundred thirty",
                                  style: pw.TextStyle(
                                      fontSize: 7,
                                      color: PdfColors.grey,
                                      fontBold: pw.Font.courierBold())),
                            ),
                          ),
                          pw.SizedBox(
                            height: 5,
                          ),
                          pw.Text(
                            "Terms and conditions".toUpperCase(),
                            style: pw.TextStyle(
                                fontSize: 9,
                                color: PdfColors.grey,
                                fontBold: pw.Font.courierBold()),
                          ),
                          pw.Container(
                            width: 150,
                            color: PdfColors.grey300,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(
                                  top: 2, bottom: 2, left: 5),
                              child: pw.Text("thank you for doing this",
                                  style: pw.TextStyle(
                                      fontSize: 7,
                                      color: PdfColors.grey,
                                      fontBold: pw.Font.courierBold())),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Container(
                      height: 60,
                      child: pw.Column(children: [
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text(
                              " Sub Total",
                              style: pw.TextStyle(
                                  fontBold: pw.Font.courierBold(), fontSize: 7),
                            ),
                            pw.Text(
                              "330",
                              style: pw.TextStyle(
                                  fontBold: pw.Font.courierBold(), fontSize: 7),
                            )
                          ],
                        ),
                        pw.Container(
                          color: PdfColors.blue,
                          child: pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Text(
                                " Total",
                                style: pw.TextStyle(
                                    fontBold: pw.Font.courierBold(),
                                    fontSize: 7,
                                    color: PdfColors.white),
                              ),
                              pw.Text(
                                "330",
                                style: pw.TextStyle(
                                    fontBold: pw.Font.courierBold(),
                                    fontSize: 7,
                                    color: PdfColors.white),
                              )
                            ],
                          ),
                        ),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text(
                              " Received",
                              style: pw.TextStyle(
                                  fontBold: pw.Font.courierBold(), fontSize: 7),
                            ),
                            pw.Text(
                              "0.00",
                              style: pw.TextStyle(
                                  fontBold: pw.Font.courierBold(), fontSize: 7),
                            )
                          ],
                        ),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text(
                              " Balance",
                              style: pw.TextStyle(
                                  fontBold: pw.Font.courierBold(), fontSize: 7),
                            ),
                            pw.Text(
                              "0.00",
                              style: pw.TextStyle(
                                  fontBold: pw.Font.courierBold(), fontSize: 7),
                            )
                          ],
                        ),
                      ]),
                    ),
                  )
                ],
              )
            ],
          );
        }));

    var bytes = await pdf.save();

    Get.to(ViewInvoice(byts: bytes));
  }
}
