import 'package:flutter/material.dart';

class OptionsButton extends StatefulWidget {
  const OptionsButton({super.key});

  @override
  State<OptionsButton> createState() => _OptionsButtonState();
}

class _OptionsButtonState extends State<OptionsButton> {
  bool lainnyaPressed = false;
  bool opt1 = false;
  bool opt2 = false;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (opt1 == false) {
                opt1 = true;
              } else if (opt1 == true) {
                opt1 = false;
              }
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.grey),
              color: opt1 ? const Color(0xFFCB1010) : Colors.white,
            ),
            child: Text(
              'Ada Ekstrakurikuler',
              style: TextStyle(
                  color: opt1 ? Colors.white : const Color(0xFFCB1010)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (opt2 == false) {
                opt2 = true;
              } else if (opt2 == true) {
                opt2 = false;
              }
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.grey),
              color: opt2 ? const Color(0xFFCB1010) : Colors.white,
            ),
            child: Text(
              'Perubahan Dari Sekolah',
              style: TextStyle(
                  color: opt2 ? Colors.white : const Color(0xFFCB1010)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (lainnyaPressed == false) {
                lainnyaPressed = true;
              } else if (lainnyaPressed == true) {
                lainnyaPressed = false;
              }
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.grey),
              color: lainnyaPressed ? const Color(0xFFCB1010) : Colors.white,
            ),
            child: Text(
              'Lainnya',
              style: TextStyle(
                  color:
                      lainnyaPressed ? Colors.white : const Color(0xFFCB1010)),
            ),
          ),
        ),
        if (lainnyaPressed)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: TextFormField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          )
      ],
    );
  }
}
