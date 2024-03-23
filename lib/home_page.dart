import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRCodeDartScanView(
        scanInvertedQRCode: true,
        typeScan: TypeScan.live,
        onCapture: (Result result) {
          showSnackBar(context, result.text);
        },
      ),
    );
  }

  void showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
