import 'package:dynamic_theme_using_provider/speedDail.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shimmer Effect",
      debugShowCheckedModeBanner: false,
      home: SpeedDail(), //Change to Index() if you want to go for Shimmer
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
        child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,i){
                  return Shimmer.fromColors(
                      child:  ListTile(
                        title: Text("Hii every one this is title $i ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        subtitle: Text(i.toString()),
                      ),
                      baseColor:Colors.black,
                      highlightColor: Colors.grey
                  );
                }
            ),


      ),
    );
  }
}
