import 'package:eb_ojek_app/order_entity.dart';
import 'package:flutter/material.dart';

class OrderProvider with ChangeNotifier {
  List<OrderEntity> _listData = [
    OrderEntity(
      tikJem: 'SD Wachid Hasyim Surabaya',
      dest: 'Undaan Wetan No. 42',
      customer: 'Fizi Dwi Rusli',
      day: 'Hari ini',
      waktu: '13:20',
    ),
    OrderEntity(
      tikJem: 'SD Wachid Hasyim Surabaya',
      dest: 'Undaan Wetan No. 42',
      customer: 'Fizi Dwi Rusli',
      day: 'Hari ini',
      waktu: '13:20',
    ),
    OrderEntity(
      tikJem: 'SD Wachid Hasyim Surabaya',
      dest: 'Undaan Wetan No. 42',
      customer: 'Fizi Dwi Rusli',
      day: 'Hari ini',
      waktu: '13:20',
      isActive: true,
    ),
    OrderEntity(
      tikJem: 'SD Wachid Hasyim Surabaya',
      dest: 'Undaan Wetan No. 42',
      customer: 'Fizi Dwi Rusli',
      day: 'Besok',
      waktu: '13:20',
    ),
  ];
  OrderEntity? _order;

  OrderEntity? get order => _order;
  List<OrderEntity> get listData => _listData;

  void updateOrderTime(int index, String newTime) {
    _listData[index].waktu = newTime;
    notifyListeners();
  }

  void setOrder(OrderEntity data) {
    _order = data;
    notifyListeners();
  }

  void resetOrder() {
    _order = null;
    notifyListeners();
  }

  void nonaktifkanOrder(int index) {
    listData[index].isActive = false;
    notifyListeners();
  }
}
