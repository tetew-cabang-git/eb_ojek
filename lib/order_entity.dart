class OrderEntity {
  String tikJem;
  String dest;
  String customer;
  String day;
  String waktu;
  bool status;

  OrderEntity({
    required this.tikJem,
    required this.dest,
    required this.customer,
    required this.day,
    required this.waktu,
    this.status = false,
  });
}