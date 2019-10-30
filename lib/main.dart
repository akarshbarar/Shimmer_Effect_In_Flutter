import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shimmer Effect",
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}
class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer"),
      ),
      body: Center(
        child: SizedBox(
          width: 200.0,
          height: 100.0,
          child: Shimmer.fromColors(
            baseColor: Colors.black,
            highlightColor: Colors.grey,
            child: Text(
              'Shimmer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight:
                FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
