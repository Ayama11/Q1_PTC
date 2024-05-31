import 'package:intl/intl.dart';

class Company {
  int? isActive;
  String? name;
  Address? address;
  DateTime? established;
  Availability? availability;
  List<Department>? departments;

  Company(
      {this.isActive,
      required this.name,
      required this.address,
      required this.established,
      this.departments});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      //  isActive: json['is_active'] ?? json['isActive'] == 1,
      isActive: (json['is_active'])?.toInt() ?? false,
      name: json["name"],
      address: json["address"],
      established: json["established"],
      departments: (json['departments'] as List)
          .map((deptJson) => Department.fromJson(deptJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'is_active': isActive != null ? 1 : 0,
      //'is_active': instance.isActive,
      'name': name,
      'address': address?.toJson(),
      'established': established!.toIso8601String(),
      'departments': departments!.map((dept) => dept.toJson()).toList(),
    };
  }
}

class Address {
  String? street;
  String? city;
  String? state;
  String? postalCode;

  Address({
    this.street,
    this.city,
    this.state,
    this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json["street"],
      city: json["city"],
      state: json["state"],
      postalCode: json["postalCode"],
    );
  }

  Map<String, dynamic> toJson() => {
        'street': street,
        'city': city,
        'state': state,
        'postalCode': postalCode,
      };
}

class Department {
  String? deptId;
  String? name;
  String? manager;
  double? budget;
  int? year;
  Map<String, dynamic>? availability;
  String? meetingTime;

  Department({
    this.deptId,
    this.name,
    this.manager,
    this.budget,
    this.year,
    this.availability,
    this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        deptId: json["deptId"],
        name: json["name"],
        manager: json["manager"],
        budget: json["budget"],
        year: json["year"],
        availability: json["availability"],
        meetingTime: json["meetingTime"]);
  }

  Map<String, dynamic> toJson() => {
        'deptId': deptId,
        'name': name,
        'manager': manager,
        'budget': budget,
        'year': year,
        'availability': availability,
        'meetingTime': meetingTime,
      };
}

class Availability {
  bool? online;
  bool? inStore;

  Availability({
    this.online,
    this.inStore,
  });

  factory Availability.fromJson(Map<String, bool> json) {
    return Availability(
      online: json['online'],
      inStore: json['inStore'],
    );
  }

  Map<String, dynamic> toJson() => {
        'online': online,
        'inStore': inStore,
      };
}

// utc

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
