import 'package:flutter/material.dart';
import 'package:listview_builder/listview_datamodel.dart';
import 'package:listview_builder/resultpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 static List seaname = ['Sea 1', 'Sea 2', 'Sea 3'];
  static List prop = [
    "Ocean view for Sea 1",
    "Ocean view for Sea 2",
    "Ocean view for Sea 3"
  ];
  static List image = ["images/sea1.jpeg", "images/sea2.jpeg", "images/sea3.jpeg"];
  final List<SeaDataModel>SeaData=List.generate(
      seaname.length, (index)
  => SeaDataModel('${seaname[index]}', '${prop[index]}', '${image[index]}'));



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Un-Named Routes"),
      ),
      body: ListView.builder(
          itemCount: SeaData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultPage(seaDataModel: SeaData[index],)));
                },
                child: Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(SeaData[index].image),
                    ),
                    title: Text(SeaData[index].seaname),
                    subtitle: Text(SeaData[index].prop),
                  ),
                  height: 70,
                  color: Colors.white,
                ),
              ),
            );
          }),
    );
  }
}
