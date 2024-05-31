import 'package:darttest/Q1/freezed/availabitiy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.g.dart';
part 'department.freezed.dart';

@freezed
class Department with _$Department {
  const factory Department({
    String? deptId,
    String? name,
    String? manager,
    int? budget,
    int? year,
    Availabitiy? availability,
    String? meetingTime,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
