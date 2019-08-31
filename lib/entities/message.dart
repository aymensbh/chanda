
import 'package:firebase_database/firebase_database.dart';
import 'package:chanda_pfe/util/timeUtiles.dart';

class Message {

  String from;
  String to;
  String text;
  String imageUrl;
  String dateString;

  Message(DataSnapshot snapshot) {
    Map value = snapshot.value;
    from = value["from"];
    to = value["to"];
    text = value["text"];
    imageUrl = value["imageUrl"];
    String date = value["dateString"];
    dateString = DateHelper().getDate(date);
  }
}