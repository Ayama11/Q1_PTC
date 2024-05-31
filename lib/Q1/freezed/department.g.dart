// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentImpl _$$DepartmentImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentImpl(
      deptId: json['deptId'] as String?,
      name: json['name'] as String?,
      manager: json['manager'] as String?,
      budget: (json['budget'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      availability: json['availability'] == null
          ? null
          : Availabitiy.fromJson(json['availability'] as Map<String, dynamic>),
      meetingTime: json['meetingTime'] as String?,
    );

Map<String, dynamic> _$$DepartmentImplToJson(_$DepartmentImpl instance) =>
    <String, dynamic>{
      'deptId': instance.deptId,
      'name': instance.name,
      'manager': instance.manager,
      'budget': instance.budget,
      'year': instance.year,
      'availability': instance.availability,
      'meetingTime': instance.meetingTime,
    };
