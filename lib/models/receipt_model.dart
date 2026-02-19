class Receipt {
  final String userId;
  final String studentName;
  final String roomNumber;
  final String hostelName;
  final double amountPaid;
  final String paymentDate;

  Receipt({
    required this.userId,
    required this.studentName,
    required this.roomNumber,
    required this.hostelName,
    required this.amountPaid,
    required this.paymentDate,
  });
}
