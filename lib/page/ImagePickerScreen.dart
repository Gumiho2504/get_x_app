import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImagePickerScreen(),
    );
  }
}

class ImagePickerScreen extends StatefulWidget {
  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? _imageFiles;

  Future<void> _pickImages() async {
    // Request permission for iOS
    if (Platform.isIOS) {
      PermissionStatus status = await Permission.photos.request();
      if (status != PermissionStatus.granted) {
        print('Permission not granted.');
        return;
      }
    }

    // Request permission for Android
    else if (Platform.isAndroid) {
      PermissionStatus status = await Permission.storage.request();
      if (status != PermissionStatus.granted) {
        print('Permission not granted.');
        return;
      }
    }

    // Pick images
    try {
      final List<XFile>? pickedFiles = await _picker.pickMultiImage();
      if (pickedFiles != null) {
        setState(() {
          _imageFiles = pickedFiles;
        });
      }
    } catch (e) {
      print("Failed to pick images: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Demo'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _pickImages,
            child: Text('Pick Images from Gallery'),
          ),
          _imageFiles != null
              ? Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemCount: _imageFiles!.length,
                    itemBuilder: (context, index) {
                      return Image.file(
                        File(_imageFiles![index].path),
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                )
              : Text('No images selected.'),
        ],
      ),
    );
  }
}
