import 'package:darttest/Q1/freezed/address.dart';
import 'package:darttest/Q1/freezed/department.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'isActive') required int isactive,
    required String name,
    Address? address,
    required DateTime established,
    List<Department>? departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
