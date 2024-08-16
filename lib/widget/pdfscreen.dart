import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatelessWidget {
  const PdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset("assets/Khalid Elmaria resume.pdf",),
    );
  }
}