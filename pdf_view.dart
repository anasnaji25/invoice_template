import 'package:alh_pdf_view/lib.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewInvoice extends StatefulWidget {
  var file;
  var byts;
 
  ViewInvoice({Key? key, this.byts, this.file})
      : super(key: key);

  @override
  State<ViewInvoice> createState() => _ViewInvoiceState();
}

class _ViewInvoiceState extends State<ViewInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: AlhPdfView(
        bytes: widget.byts,
      )),
    );
  }
}
