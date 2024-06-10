import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapExe extends StatefulWidget {
  const MapExe({super.key});

  @override
  State<MapExe> createState() => _MapExeState();
}

class _MapExeState extends State<MapExe> {


  Map m1 = {
    "key_1":"value_1",
    "key_2":"value_2",
    "key_3":"value_3",
    "key_4":"value_4",
  };

  Map apiTemp = {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  };

  TestMap testMap = TestMap(age: 21,name: "", mobile: "");
  List<TestMap> tempList = [TestMap(name: "name", mobile: "mobile", age: 1)];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("${m1['key_1']}",style: TextStyle(fontSize: 22),),
                Text("${testMap.mobile}",style: TextStyle(fontSize: 22),),
                Text("${tempList[0].name}",style: TextStyle(fontSize: 22),),
                Text("userId : ${apiTemp['userId']}",style: TextStyle(fontSize: 22),),
                Text("title : ${apiTemp['title']}",style: TextStyle(fontSize: 22),),
                SizedBox(height: 10,),
                Text("body : ${apiTemp['body']}",style: TextStyle(fontSize: 22),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TestMap {
  String? name;
  int? age;
  String? mobile;

  TestMap({required this.name, required this.mobile, required this.age});

}