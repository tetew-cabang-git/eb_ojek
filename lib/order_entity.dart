class OrderEntity {
  final String tikJem;
  final String dest;
  final String customer;
  final String? driver;
  final String? day;
  String waktu;
  final bool? pickedUp;
  final bool? status;
  final String? cancelReason;

  OrderEntity(
      {required this.tikJem,
      required this.dest,
      required this.customer,
      this.driver,
      this.pickedUp,
      this.status,
      required this.day,
      required this.waktu,
      this.cancelReason});
}
