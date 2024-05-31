import 'package:freezed_annotation/freezed_annotation.dart';

part 'availabitiy.freezed.dart';
part 'availabitiy.g.dart';

@freezed
class Availabitiy with _$Availabitiy {
  const factory Availabitiy({
    bool? online,
    bool? inStore,
  }) = _Availabitiy;

  factory Availabitiy.fromJson(Map<String, dynamic> json) =>
      _$AvailabitiyFromJson(json);
}
