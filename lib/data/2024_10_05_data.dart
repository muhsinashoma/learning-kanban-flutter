// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import '../models/models.dart';

class Data {
  static List<KColumn> getColumns([String? data]) {
    // print("Column Data");
    // print('----------------------------------');
    // print(data);
    // print('----------------------------------');

    // Decode the JSON data
    List<dynamic> jsonData = jsonDecode(data!);

    return jsonData.map((item) {
      print(item['id']);
      print(item['title']);

      // Fetching current column

      return KColumn(
        title: item['title'],
        children: [
          KTask(title: 'test purpose')
        ], // Ignoring children as per your requirement
      );
    }).toList();
  }
}
