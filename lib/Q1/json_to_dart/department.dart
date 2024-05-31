import 'availability.dart';

class Department {
  String? deptId;
  String? name;
  String? manager;
  int? budget;
  int? year;
  Availability? availability;
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

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        deptId: json['deptId'] as String?,
        name: json['name'] as String?,
        manager: json['manager'] as String?,
        budget: json['budget'] as int?,
        year: json['year'] as int?,
        availability: json['availability'] == null
            ? null
            : Availability.fromJson(
                json['availability'] as Map<String, dynamic>),
        meetingTime: json['meeting_time'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'deptId': deptId,
        'name': name,
        'manager': manager,
        'budget': budget,
        'year': year,
        'availability': availability?.toJson(),
        'meeting_time': meetingTime,
      };

  Department copyWith({
    String? deptId,
    String? name,
    String? manager,
    int? budget,
    int? year,
    Availability? availability,
    String? meetingTime,
  }) {
    return Department(
      deptId: deptId ?? this.deptId,
      name: name ?? this.name,
      manager: manager ?? this.manager,
      budget: budget ?? this.budget,
      year: year ?? this.year,
      availability: availability ?? this.availability,
      meetingTime: meetingTime ?? this.meetingTime,
    );
  }
}
