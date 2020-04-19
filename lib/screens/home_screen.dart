import 'package:flutter/material.dart';
import 'package:gallary/api/image_api.dart';
import 'package:gallary/screens/loading_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getImagesData();
  }

  void getImagesData() async {
    try {
      print('hello bindesh');
      NetworkHelper networkHelper = NetworkHelper();
      var data = await networkHelper.fetchImage();
      print(data.page);
      print(data.totalResults);
      var images = data.photos;
      print(images[0]["url"]);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoadingScreen(
            imageData: data,
          ),
        ),
      );
    } catch (e) {
      print('error hello $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
