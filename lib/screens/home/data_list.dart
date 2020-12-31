import 'package:app/models/data.dart';
import 'package:app/screens/home/data_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataList extends StatefulWidget {
  @override
  _AppListState createState() => _AppListState();
}

class _AppListState extends State<DataList> {
  @override
  Widget build(BuildContext context) {

    final data = Provider.of<List<Data>>(context);
    

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index){
        return DataTile(data: data[index]);
      },
    );
  }
}