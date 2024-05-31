import 'package:json_annotation/json_annotation.dart';
part 'availability.g.dart';

@JsonSerializable()
class Availability {
  bool? online;
  bool? inStore;

  Availability({
    required this.online,
    required this.inStore,
  });

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}
