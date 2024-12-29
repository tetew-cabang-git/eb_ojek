import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWithDottedBorder extends StatefulWidget {
  const ImagePickerWithDottedBorder({super.key});

  @override
  _ImagePickerWithDottedBorderState createState() =>
      _ImagePickerWithDottedBorderState();
}

class _ImagePickerWithDottedBorderState
    extends State<ImagePickerWithDottedBorder> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      radius: const Radius.circular(10),
      color: const Color(0xFF8E8E8E),
      child: GestureDetector(
        onTap: _pickImage,
        child: Container(
          padding: const EdgeInsets.all(8),
          // color: const Color(0xFF8E8E8E),
          child: Row(
            children: [
              if (_selectedImage == null)
                IconButton(
                  icon: const Icon(Icons.camera_alt, color: Colors.grey),
                  onPressed: _pickImage,
                )
              else
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      _selectedImage!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              const SizedBox(width: 8),
              if (_selectedImage == null)
                const Expanded(
                  child: Text(
                    'Lampirkan bukti percakapan dari customer atau wali',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
