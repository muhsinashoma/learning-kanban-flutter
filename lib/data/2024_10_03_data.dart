// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import '../models/models.dart';

class Data {
  static List<KColumn> getColumns([String? data]) {
    // Decode the JSON data
    List<dynamic> jsonData = jsonDecode(data!);

    return jsonData.map((item) {
      // Fetching tasks for the current column

      print('------------jsondata---------');

      print(jsonData);
      // print(jsonData);
      print(item['id']);
      print(item['title']);
      // print('----------------------------');

      List<KTask> tasks = [];
      if (item['tasks'] != null) {
        tasks = (item['tasks'] as List).map((task) {
          return KTask(title: task['title']);
        }).toList();
      }

      return KColumn(
        title: item['title'],
        children: tasks,
      );
    }).toList();
  }
}

// class Data {
//   static List<KColumn> getColumns([String? data]) {
//     // Decode the JSON data
//     List<dynamic> jsonData = jsonDecode(data!);

//     return jsonData.map((item) {
//       // Fetching tasks for the current column

//       // print('----------------------------');
//       // print(jsonData);
//       // print(item['id']);
//       // print('----------------------------');

//       List<KTask> tasks = [];
//       if (item['tasks'] != null) {
//         tasks = (item['tasks'] as List).map((task) {
//           return KTask(title: task['title']);
//         }).toList();
//       }

//       return KColumn(
//         title: item['title'],
//         children: tasks,
//       );
//     }).toList();
//   }
// }


// class Data {
//   static List<KColumn> getColumns() {
//     return List.from([
//       KColumn(
//         title: 'To Do',
//         children: [
//           KTask(title: 'ToDo 1'),
//           KTask(title: 'ToDo 2'),
//         ],
//       ),
//       KColumn(
//         title: 'In Progress',
//         children: [
//           KTask(title: 'ToDo 3'),
//         ],
//       ),
//       KColumn(
//         title: 'Done',
//         children: [
//           KTask(title: 'ToDo 4'),
//           KTask(title: 'ToDo 5'),
//         ],
//       )
//     ]);
//   }
// }
