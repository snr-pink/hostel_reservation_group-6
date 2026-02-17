import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfService {
  static Future<void> printReceipt({
    required String studentName,
    required String studentId,
    required String room,
    required String amount,
    required String date,
  }) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                "Hostel Booking Receipt",
                style: pw.TextStyle(fontSize: 20),
              ),

              pw.SizedBox(height: 20),

              pw.Text("Student Name: $studentName"),
              pw.Text("Student ID: $studentId"),
              pw.Text("Room Booked: $room"),
              pw.Text("Amount Paid: $amount"),
              pw.Text("Date: $date"),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(onLayout: (format) => pdf.save());
  }
}
