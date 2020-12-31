import 'package:app/models/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference appCollection = Firestore.instance.collection('data');


  Future updateUserData(String name, int age) async{
    return await appCollection.document(uid).setData({
      'name': name,
      'age': age,
    });
  }

  //data list from snapshot
  List<Data> _dataListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Data(
        name: doc.data['name'] ?? '',
        age: doc.data['age'] ?? 0,
      );
    }).toList();
  }

  
  //get data stream
  Stream<List<Data>> get data {
    return appCollection.snapshots()
    .map(_dataListFromSnapshot);
  }

}