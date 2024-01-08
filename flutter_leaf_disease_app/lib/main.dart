import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LeafDiseasePredictor(),
    );
  }
}

class LeafDiseasePredictor extends StatefulWidget {
  @override
  _LeafDiseasePredictorState createState() => _LeafDiseasePredictorState();
}

class _LeafDiseasePredictorState extends State<LeafDiseasePredictor> {
  File? _image;
  String _prediction = "Prediction will appear here";

  Future<Map<String, dynamic>> detectDisease(String imagePath) async {
    final String apiUrl = 'http://10.0.2.2:5000/predict'; // Replace with your Flask API endpoint

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl))
        ..files.add(await http.MultipartFile.fromPath('img', imagePath));

      final response = await request.send();
      final Map<String, dynamic> data = json.decode(await response.stream.bytesToString());

      return data;
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<void> _testConnection() async {
    // Replace the API endpoint with your Flask API endpoint
    const testConnectionUrl = "http://10.0.2.2:5000/testConnection";

    try {
      final response = await http.get(Uri.parse(testConnectionUrl));

      if (response.statusCode == 200) {
        print("Connection Successful");
      } else {
        print("Connection Failed");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> _getImageFromGallery() async {
    final image = await ImagePicker().getImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

Future<void> _predictLeafDisease() async {
  if (_image == null) {
    return;
  }

  try {
    final result = await detectDisease(_image!.path);

    setState(() {
      final accuracy = result['Accuracy'];
      _prediction = "Prediction: ${result['Label Name']} (Accuracy: ${accuracy != null ? accuracy.toStringAsFixed(2) : 'N/A'})";
    });
  } catch (e) {
    // Handle errors
    print(e.toString());
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaf Disease Predictor"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!, height: 200, width: 200)
                : const Text("No image selected"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _testConnection,
              child: const Text("Test Connection"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getImageFromGallery,
              child: const Text("Choose from Gallery"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _predictLeafDisease,
              child: const Text("Predict Disease"),
            ),
            const SizedBox(height: 20),
            Text(
              _prediction,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}