import 'package:intl/intl.dart';

mixin DateHelper {
  String formatDate(DateTime date) {
    return DateFormat('d-MMM, yyyy').format(date);
  }
}

class CompanyModel with DateHelper {
  final bool isActive;
  final String name;
  final Map<String, dynamic>? address;
  final DateTime established;
  final List<Department> departments;

  CompanyModel({
    required this.isActive,
    required this.name,
    this.address,
    required this.established,
    required this.departments,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      isActive: json['company']['is_active'] == 1,
      name: json['company']['name'],
      address: json['company']['address'],
      established: DateTime.parse(json['company']['established']),
      departments: (json['company']['departments'] as List)
          .map((dept) => Department.fromJson(dept))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'company': {
        'is_active': isActive ? 1 : 0,
        'name': name,
        'address': address,
        'established': formatDate(established),
        'departments': departments.map((dept) => dept.toJson()).toList(),
      },
    };
  }

  String getFormattedEstablishedDate() {
    return formatDate(established);
  }
}

class Department {
  final String deptId;
  final String name;
  final String manager;
  final double budget;
  final int? year;
  final Map<String, bool>? availability;
  final String? meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    required this.year,
    this.availability,
    this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      deptId: json['deptId'],
      name: json['name'],
      manager: json['manager'],
      budget: json['budget'],
      year: json['year'],
      availability: json['availability'] != null
          ? Map<String, bool>.from(json['availability'])
          : null,
      meetingTime: json['meeting_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deptId': deptId,
      'name': name,
      'manager': manager,
      'budget': budget,
      'year': year,
      'availability': availability,
      'meeting_time': meetingTime,
    };
  }
}

// utc

// void convertToUtc(Map<String, dynamic> data) {
//   data['company']['established'] = DateFormat("yyyy-MM-ddTHH:mm:ss'Z'")
//       .format(DateTime.parse(data['company']['established']).toUtc());

//   for (var department in data['company']['departments']) {
//     if (department.containsKey('meeting_time')) {
//       department['meeting_time'] = DateFormat("HH:mm")
//           .format(DateFormat("h:mm a").parse(department['meeting_time']))
//           .toString();
//     }
//   }
// }

//***** */
mixin UtcConverter {
  void convertToUtc(Map<String, dynamic> data) {
    data['company']['established'] = DateFormat("yyyy-MM-ddTHH:mm:ss'Z'")
        .format(DateTime.parse(data['company']['established']).toUtc());

    for (var department in data['company']['departments']) {
      if (department.containsKey('meeting_time')) {
        department['meeting_time'] = DateFormat("HH:mm")
            .format(DateFormat("h:mm a").parse(department['meeting_time']))
            .toString();
      }
    }
  }
}
