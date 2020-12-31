import 'package:flutter/material.dart';
import 'package:app/models/data.dart';

class DataTile extends StatelessWidget {

  final Data data;
  DataTile({this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.blue[50],
          ),
          title: Text(data.name),
          subtitle: Text('Takes ${data.age}'),
        ),
      ),
    );
  }
}