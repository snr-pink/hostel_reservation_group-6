import 'package:flutter/material.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Booking Receipt"), centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// LOGO
                  Image.asset("assets/logo.png", height: 80),

                  const SizedBox(height: 20),

                  const Text(
                    "HOSTEL BOOKING RECEIPT",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const Divider(height: 30, thickness: 1),

                  /// RECEIPT DETAILS
                  receiptRow("Student Name", "Victor"),
                  receiptRow("Student ID", "STU12345"),
                  receiptRow("Room Booked", "Block A - Room 12"),
                  receiptRow("Amount Paid", "₦50,000"),
                  receiptRow("Payment Method", "Card"),
                  receiptRow("Date", "18 Feb 2026"),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Print / Save as PDF"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget receiptRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(value),
        ],
      ),
    );
  }
}
