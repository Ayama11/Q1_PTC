// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyWidget());
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp();
//   }
// }
// import 'dart:convert';

// import 'package:darttest/Q1/manual.dart';

// void main() {
//   var json1 = {
//     "company": {
//       "is_active": 0,
//       "name": "Tech Innovators Inc.",
//       "address": {
//         "street": "123 Innovation Drive",
//         "city": "Techville",
//         "state": "CA",
//         "postalCode": "94043"
//       },
//       "established": "2023-05-24T00:00:00Z",
//       "departments": [
//         {
//           "deptId": "D001",
//           "name": "Engineering",
//           "manager": "Carol Davis",
//           "budget": 500000.00,
//           "year": 2023,
//           "availability": {"online": true, "inStore": false},
//           "meeting_time": "14:30"
//         },
//         {
//           "deptId": "D002",
//           "name": "Marketing",
//           "manager": "David Wilson",
//           "budget": 300000.00,
//           "meeting_time": "10:00 AM"
//         }
//       ]
//     }
//   };

//   var json2 = {
//     "company": {
//       "isActive": 1,
//       "name": "Tech Innovators Inc.",
//       "address": {},
//       "established": "2023-05-24T00:00:00Z",
//       "departments": []
//     }
//   };

//   var jsonMap1 = jsonDecode(json1 as String);
//   Company company1 = Company.fromJson(jsonMap1['company']);

//   var jsonMap2 = jsonDecode(json2 as String);
//   Company company2 = Company.fromJson(jsonMap2['company']);

//   print(company1.toJson());
//   print(company2.toJson());
// }

import 'dart:convert';

import 'package:darttest/Q1/json_to_dart/company.dart';

//import 'package:darttest/Q1/freezed/company.dart';

//import 'package:darttest/Q1/manual.dart';

//import 'package:darttest/Q1/json_serializable/company.dart';

//import 'package:darttest/Q1/json_serializable/company.dart';

void main() {
  String jsonString1 = '''{
    "company": {
      "is_active": 0,
      "name": "Tech Innovators Inc.",
      "address": {
        "street": "123 Innovation Drive",
        "city": "Techville",
        "state": "CA",
        "postalCode": "94043"
      },
      "established": "2023-05-24T00:00:00Z",
      "departments": [
        {
          "deptId": "D001",
          "name": "Engineering",
          "manager": "Carol Davis",
          "budget": 500000.00,
          "year": 2023,
          "availability": {
            "online": true,
            "inStore": false
          },
          "meeting_time": "14:30"
        },
        {
          "deptId": "D002",
          "name": "Marketing",
          "manager": "David Wilson",
          "budget": 300000.00,
          "meeting_time": "10:00 AM"
        }
      ]
    }
  }''';

  var jsonString2 = {
    "company": {
      "isActive": 1,
      "name": "Tech Innovators Inc.",
      "address": null,
      "established": "2023-05-24T00:00:00Z",
      "departments": []
    }
  };

  // var jsonMap1 = jsonDecode(jsonString1);
  // Company company1 = Company.fromJson(jsonMap1['company']);

  var jsonMap2 = jsonDecode(jsonString2 as String);
  Company company2 = Company.fromJson(jsonMap2['company']);

  //print(company1.toJson());
  print(company2.toJson());
}
