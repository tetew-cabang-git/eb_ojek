import 'package:dotted_border/dotted_border.dart';
import 'package:eb_ojek_app/image_picker_widget.dart';
import 'package:eb_ojek_app/options.dart';
import 'package:eb_ojek_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:eb_ojek_app/order_entity.dart';
import 'package:provider/provider.dart';
import 'package:scroll_datetime_picker/scroll_datetime_picker.dart';
import 'package:intl/intl.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   void _showUbahJamBottomSheet(BuildContext context, OrderEntity order) {
//     bool lainnya = false;

//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//             left: 16,
//             right: 16,
//             top: 16,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Container(
//                   width: 40,
//                   height: 4,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[400],
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               const Center(
//                 child: Text(
//                   'Ubah Jam Penjemputan',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.grey),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Row(
//                       children: [
//                         Icon(Icons.motorcycle, color: Colors.lightBlue),
//                         SizedBox(width: 8),
//                         Text(
//                           'Ride',
//                           style: TextStyle(
//                             color: Colors.lightBlue,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       order.waktu,
//                       style: const TextStyle(
//                         color: Colors.red,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Divider(height: 32),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text(
//                     'Jam',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     'Menit',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),

//               ScrollDateTimePicker(
//                 itemBuilder: (context, pattern, text, isActive, isDisabled) {
//                   return Text(text);
//                 },
//                 itemExtent: 54,
//                 infiniteScroll: true,
//                 style: DateTimePickerStyle(
//                   activeStyle: const TextStyle(color: Colors.black),
//                   // activeDecoration: const BoxDecoration(color: Colors.yellow),
//                 ),
//                 dateOption: DateTimePickerOption(
//                   dateFormat: DateFormat('hh:mm'),
//                   minDate: DateTime(2000, 6),
//                   maxDate: DateTime(2024, 6),
//                   initialDate: DateTime.now(),
//                 ),
//                 onChange: (datetime) => setState(() {
//                   order.waktu = DateFormat('hh:mm').format(datetime);
//                 }),
//               ),

//               // Center(
//               //   child: Text(order.waktu),
//               // ),

//               // Center(
//               //   child: ElevatedButton(
//               //     onPressed: () {
//               //       _showTimePicker(context, order);
//               //     },
//               //     child: const Text('Pilih Waktu'),
//               //   ),
//               // ),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     DropdownButton<int>(
//               //       value: 13,
//               //       items: [12, 13, 14].map((int value) {
//               //         return DropdownMenuItem<int>(
//               //           value: value,
//               //           child: Text(value.toString()),
//               //         );
//               //       }).toList(),
//               //       onChanged: (value) {},
//               //     ),
//               //     const Text(':'),
//               //     DropdownButton<int>(
//               //       value: 20,
//               //       items: [10, 20, 30].map((int value) {
//               //         return DropdownMenuItem<int>(
//               //           value: value,
//               //           child: Text(value.toString().padLeft(2, '0')),
//               //         );
//               //       }).toList(),
//               //       onChanged: (value) {},
//               //     ),
//               //   ],
//               // ),

//               const SizedBox(height: 16),
//               const Text(
//                 'Beritahu kami alasan customer mengubah jadwal ini, pilih salah satu',
//                 textAlign: TextAlign.center,
//               ),
//               Wrap(
//                 spacing: 8,
//                 children: [
//                   ChoiceChip(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     label: const Text('Ada Ekstrakurikuler'),
//                     selected: false,
//                     selectedColor: Colors.red,
//                     onSelected: (selected) {
//                       setState(() {
//                         selected = true;
//                       });
//                       selected = true;
//                     },
//                   ),
//                   ChoiceChip(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     label: const Text('Perubahan dari sekolah'),
//                     selected: false,
//                     onSelected: (selected) {},
//                   ),
//                   ChoiceChip(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     label: const Text('Lainnya'),
//                     selected: false,
//                     onSelected: (selected) {
//                       lainnya = selected;
//                     },
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: Colors.grey),
//                     ),
//                     child: TextFormField(
//                       controller: TextEditingController(),
//                       decoration: const InputDecoration(
//                         contentPadding: EdgeInsets.all(8),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 16),
//               // DottedBorder(
//               //   // borderPadding: const EdgeInsets.all(2),
//               //   // borderType: BorderType.Circle,
//               //   radius: const Radius.circular(10),
//               //   color: const Color(0xFF8E8E8E),
//               //   child: Container(
//               //     color: const Color(0xFF8E8E8E),
//               //     child: Row(
//               //       children: [
//               //         IconButton(
//               //           icon: const Icon(Icons.camera_alt),
//               //           onPressed: () {},
//               //         ),
//               //         const Expanded(
//               //           child: Text(
//               //               'Lampirkan bukti percakapan dari customer atau wali'),
//               //         ),
//               //       ],
//               //     ),
//               //   ),
//               // ),
//               const ImagePickerWithDottedBorder(),
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Flexible(
//                     fit: FlexFit.tight,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         minimumSize: const Size(100, 40),
//                       ),
//                       child: const Text(
//                         'Batal',
//                         style: TextStyle(color: Color(0xFFCB1010)),
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     fit: FlexFit.tight,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           order = order;
//                         });
//                         Navigator.pop(context);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFFCB1010),
//                         minimumSize: const Size(100, 40),
//                       ),
//                       child: const Text(
//                         'Simpan',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _showOptionsDialog(BuildContext context, OrderEntity data) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           contentPadding: const EdgeInsets.all(16),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ListTile(
//                 title: const Text('Ganti driver lain'),
//                 onTap: () {
//                   // Tambahkan aksi di sini
//                   Navigator.pop(context);
//                   _showUbahJamBottomSheet(context, data);
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 title: const Text('Ubah jam'),
//                 onTap: () {
//                   // Tambahkan aksi di sini
//                   Navigator.pop(context);
//                   _showUbahJamBottomSheet(context, data);
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 title: const Text('Nonaktifkan jadwal'),
//                 onTap: () {
//                   // Tambahkan aksi di sini
//                   Navigator.pop(context);
//                   _showUbahJamBottomSheet(context, data);
//                 },
//               ),
//               const Divider(),
//               ListTile(
//                 title: const Text(
//                   'Batal',
//                   style: TextStyle(color: Colors.red),
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<OrderEntity> _listData = [
//       OrderEntity(
//         tikJem: 'SD Wachid Hasyim Surabaya',
//         dest: 'Undaan Wetan No. 42',
//         customer: 'Fizi Dwi Rusli',
//         day: 'Hari ini',
//         waktu: '13:20',
//       ),
//       OrderEntity(
//         tikJem: 'SD Wachid Hasyim Surabaya',
//         dest: 'Undaan Wetan No. 42',
//         customer: 'Fizi Dwi Rusli',
//         day: 'Hari ini',
//         waktu: '13:20',
//       ),
//       OrderEntity(
//         tikJem: 'SD Wachid Hasyim Surabaya',
//         dest: 'Undaan Wetan No. 42',
//         customer: 'Fizi Dwi Rusli',
//         day: 'Hari ini',
//         waktu: '13:20',
//         status: true,
//       ),
//       OrderEntity(
//         tikJem: 'SD Wachid Hasyim Surabaya',
//         dest: 'Undaan Wetan No. 42',
//         customer: 'Fizi Dwi Rusli',
//         day: 'Besok',
//         waktu: '13:20',
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Orderan Khusus Untukmu',
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 1,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.more_vert, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: _listData.length,
//         itemBuilder: (context, index) {
//           final data = _listData[index];
//           return Container(
//             margin: const EdgeInsets.only(bottom: 16),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(
//                 color: const Color(0xFFCAC6C6),
//               ),
//               color: Colors.white,
//             ),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 8,
//                               vertical: 4,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.lightBlueAccent,
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: const Row(
//                               children: [
//                                 Icon(
//                                   Icons.motorcycle,
//                                   color: Color(0xFF388BB1),
//                                 ),
//                                 Text(
//                                   'Ride',
//                                   style: TextStyle(
//                                     color: Color(0xFF388BB1),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Spacer(),
//                           Text(
//                             data.waktu,
//                             style: const TextStyle(
//                               color: Colors.red,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 8),
//                       Row(
//                         children: [
//                           const Icon(
//                             Icons.location_on,
//                             size: 24,
//                             color: Colors.grey,
//                           ),
//                           const SizedBox(width: 8),
//                           Expanded(
//                             child: Text(
//                               data.tikJem,
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 12),
//                       Row(
//                         children: [
//                           const Icon(
//                             Icons.location_on,
//                             size: 24,
//                             color: Color(0xFFEE4959),
//                           ),
//                           const SizedBox(width: 8),
//                           Expanded(
//                             child: Text(
//                               data.dest,
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 8),
//                       Row(
//                         children: [
//                           const Text('Pengorder: '),
//                           Text(
//                             data.customer,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: const Color(0xFFEFEEEE),
//                   width: double.infinity,
//                   child: Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         if (data.day == 'Hari ini') ...[
//                           const Text('Ada Perubahan  ?'),
//                           Flexible(
//                             fit: FlexFit.tight,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 SizedBox(
//                                   width: double.infinity,
//                                   child: ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor:
//                                           const Color(0xFFCB1010),
//                                       minimumSize: const Size.fromHeight(36),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(100),
//                                       ),
//                                     ),
//                                     onPressed: () {
//                                       _showOptionsDialog(context, data);
//                                     },
//                                     child: const Text(
//                                       'Ubah Orderan',
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                                 const Text(
//                                   '(Maksimal 1 jam sebelum penjemputan)',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Color(0xFF615555),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                         if (data.day == 'Besok') ...[
//                           const Text(
//                             'Hari penjemputan',
//                             style: TextStyle(color: Color(0xFF615555)),
//                           ),
//                           Text(
//                             data.day ?? 'Besok',
//                             style: const TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ],
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _showOptionsDialog(BuildContext context, int index, OrderEntity order) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.all(16),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Ganti driver lain'),
                onTap: () {
                  Navigator.pop(context);
                  _showUbahJamBottomSheet(context, index, order, 'Ubah Driver');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('Ubah jam'),
                onTap: () {
                  Navigator.pop(context);
                  _showUbahJamBottomSheet(
                      context, index, order, 'Ubah Jam Penjemputan');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('Nonaktifkan jadwal'),
                onTap: () {
                  Navigator.pop(context);
                  _showUbahJamBottomSheet(
                      context, index, order, 'Nonaktifkan Jadwal');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  'Batal',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _nonaktifkanJadwal(BuildContext context, int index) {
    final provider = Provider.of<OrderProvider>(context, listen: false);
    provider.nonaktifkanOrder(index); // Fungsi ini akan diperbarui di provider
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Jadwal berhasil dinonaktifkan')),
    );
  }

  void _showUbahJamBottomSheet(
      BuildContext context, int index, OrderEntity order, String title) {
    final provider = Provider.of<OrderProvider>(context, listen: false);
    String? newTime;
    bool pressed = false;
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16,
              right: 16,
              top: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.motorcycle, color: Colors.lightBlue),
                          SizedBox(width: 8),
                          Text(
                            'Ride',
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        order.waktu,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Jam',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Menit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ScrollDateTimePicker(
                    itemBuilder:
                        (context, pattern, text, isActive, isDisabled) {
                      return Text(text);
                    },
                    itemExtent: 54,
                    infiniteScroll: true,
                    style: DateTimePickerStyle(
                      activeStyle: const TextStyle(color: Colors.black),
                      // activeDecoration: const BoxDecoration(color: Colors.yellow),
                    ),
                    dateOption: DateTimePickerOption(
                      dateFormat: DateFormat('hh:mm'),
                      minDate: DateTime(2000, 6),
                      maxDate: DateTime(2024, 6),
                      initialDate: DateTime.now(),
                    ),
                    key: GlobalKey(),
                    onChange: (datetime) {
                      newTime = DateFormat('hh:mm').format(datetime);
                      debugPrint(newTime);
                    }),
                const SizedBox(height: 16),
                const Text(
                  'Beritahu kami alasan customer mengubah jadwal ini, pilih salah satu',
                  textAlign: TextAlign.center,
                ),
                const OptionsButton(),
                const SizedBox(height: 16),
                const ImagePickerWithDottedBorder(),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(100, 40),
                        ),
                        child: const Text(
                          'Batal',
                          style: TextStyle(color: Color(0xFFCB1010)),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: ElevatedButton(
                        onPressed: () {
                          provider.updateOrderTime(index, newTime!);
                          if (title.contains('Nonaktifkan')) {
                            _nonaktifkanJadwal(context, index);
                          }

                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFCB1010),
                          minimumSize: const Size(100, 40),
                        ),
                        child: const Text(
                          'Simpan',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Orderan Khusus Untukmu',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Consumer<OrderProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: provider.listData.length,
            itemBuilder: (context, index) {
              final data = provider.listData[index];
              return Opacity(
                opacity: data.isActive ? 1.0 : 0.5,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFCAC6C6),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.motorcycle,
                                        color: Color(0xFF388BB1),
                                      ),
                                      Text(
                                        'Ride',
                                        style: TextStyle(
                                          color: Color(0xFF388BB1),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  data.waktu,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 24,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    data.tikJem,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 24,
                                  color: Color(0xFFEE4959),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    data.dest,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Text('Pengorder: '),
                                Text(
                                  data.customer,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(0xFFEFEEEE),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (data.day == 'Hari ini' && data.isActive) ...[
                                const Text('Ada Perubahan  ?'),
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFCB1010),
                                            minimumSize:
                                                const Size.fromHeight(36),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                          onPressed: () {
                                            _showOptionsDialog(
                                                context, index, data);
                                          },
                                          child: const Text(
                                            'Ubah Orderan',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        '(Maksimal 1 jam sebelum penjemputan)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF615555),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              if (data.day == 'Besok') ...[
                                const Text(
                                  'Hari penjemputan',
                                  style: TextStyle(color: Color(0xFF615555)),
                                ),
                                Text(
                                  data.day,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
