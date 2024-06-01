import 'package:darttest/Q1/manual.dart';

void main() {
  Map<String, dynamic> jsonData = {
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
          "availability": {"online": true, "inStore": false},
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
  };
  Map<String, dynamic> jsonD = {
    "company": {
      "isActive": 1,
      "name": "Tech Innovators Inc.",
      "address": null,
      "established": "2023-05-24T00:00:00Z",
      "departments": []
    }
  };

  CompanyModel company = CompanyModel.fromJson(jsonData);
  CompanyModel company2 = CompanyModel.fromJson(jsonD);
  print(company.toJson());
  print(company2.toJson());
}
