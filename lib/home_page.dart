import 'package:flutter/material.dart';
import 'package:pradip_api_prac/map_exe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("API Examples"),centerTitle: true,),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MapExe(),));
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text("Map Examples")),
            ),
          )
        ],
      ),
    );
  }
}
