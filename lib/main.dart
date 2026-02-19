import 'package:flutter/material.dart';
import 'models/receipt_model.dart';
import 'screens/receipt_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DummyDashboard());
  }
}

class DummyDashboard extends StatelessWidget {
  const DummyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final testReceipt = Receipt(
      userId: "FUTO12345",
      studentName: "Chinwuba Jeffrey",
      roomNumber: "A12",
      hostelName: "Block C",
      amountPaid: 85000,
      paymentDate: "15 Feb 2026",
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Center(
        child: ElevatedButton(
          child: const Text("View Receipt"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ReceiptScreen(receipt: testReceipt),
              ),
            );
          },
        ),
      ),
    );
  }
}
