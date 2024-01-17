// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/button.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';


class predictionPage extends StatelessWidget {
  const predictionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LeafDiseasePredictor(),
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
    const String apiUrl =
        "https://flask-production-4847.up.railway.app/predict"; 

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl))
        ..files.add(await http.MultipartFile.fromPath('img', imagePath));

      final response = await request.send();
      final Map<String, dynamic> data =
          json.decode(await response.stream.bytesToString());

      return data;
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<void> _testConnection() async {
    // Replace the API endpoint with your Flask API endpoint
    const testConnectionUrl =
        "https://flask-production-4847.up.railway.app/testConnection";

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
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

// Function to download an image from a URL
  Future<void> fetchImage(String imageUrl) async {
    try {
      final response = await http.get(Uri.parse(imageUrl));

      if (response.statusCode == 200) {
        final documentDirectory = await getApplicationDocumentsDirectory();
        final file = File('${documentDirectory.path}/temp_image.jpg');
        file.writeAsBytesSync(response.bodyBytes);

        setState(() {
          _image = file; // Update _image to display the downloaded image
        });

        // Now you can use this image for prediction
        await detectDisease(file.path);
      } else {
        // Handle server response error
        print('Failed to download the image: Server error');
      }
    } catch (e) {
      // Handle any other type of error
      print('Failed to download the image: $e');
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
        _prediction =
            "Prediction: ${result['Label Name']} (Accuracy: ${accuracy != null ? accuracy.toStringAsFixed(2) : 'N/A'})";
      });
    } catch (e) {
      // Handle errors
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 62, 54, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' P R E D I C T I O N'),
        toolbarHeight: 100,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:80.0),

          child: Column(
            children: [
              _image != null
                  ? Image.file(_image!, height: 200, width: 200)
                  : Container(child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Icon(Icons.upload,
                    size: 100,),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  ),

               SizedBox(height: 10),


               SizedBox(height: 20),

              
            buttonComp(onPressed: _getImageFromGallery, text: 'Gallery', icon: Icons.image),
            
            buttonComp(onPressed: () => fetchImage("https://www.planetnatural.com/wp-content/uploads/2012/12/anthracnose-1.jpg") , text: 'Browse', icon: Icons.web),
              const SizedBox(height: 50),

            buttonComp(onPressed: _predictLeafDisease, text: 'Predict', icon: Icons.search),

              const SizedBox(height: 20),
              Text(
                _prediction,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
              ),

            
            ],
          ),
            ),
      ) ,
    );
  }
}