class OrderEntity {
  String tikJem;
  String dest;
  String customer;
  String day;
  String waktu;
  bool isActive;

  OrderEntity({
    required this.tikJem,
    required this.dest,
    required this.customer,
    required this.day,
    required this.waktu,
    this.isActive = true,
  });
}