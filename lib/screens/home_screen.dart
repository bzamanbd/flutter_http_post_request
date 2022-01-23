import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  Future postData ()async{
    try {
      final rspns = await http.post(Uri.parse(url),
          body: {"title": "Covid", 
          "body": "Post body", 
          "userId": "44"
          });
          // ignore: avoid_print
          print(rspns.body);
    // ignore: empty_catches
    } catch (e) {}
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http Get Request'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: postData, 
          child: const Text('Click to Post',
          textScaleFactor: 1.2, textAlign: TextAlign.center,
          )
          ),
      ),
    );
  }
}