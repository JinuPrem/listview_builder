import 'package:flutter/material.dart';
import 'package:listview_builder/listview_datamodel.dart';

class ResultPage extends StatelessWidget {
  final SeaDataModel seaDataModel;
  const ResultPage({Key? key, required this.seaDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(seaDataModel.seaname),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(seaDataModel.image))),
          ),
          Text(seaDataModel.prop),
        ],
      ),
    );
  }
}
