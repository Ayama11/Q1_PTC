import 'package:darttest/Q1/json_serializable/address.dart';
import 'package:darttest/Q1/json_serializable/department.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  String? name;
  @JsonKey(name: 'is_active', defaultValue: false)
  int? isActive;
  Address? address;
  DateTime? established;
  List<Department>? departments;

  Company({
    required this.name,
    required this.isActive,
    this.address,
    required this.established,
    this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
