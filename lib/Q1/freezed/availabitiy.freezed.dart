// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availabitiy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Availabitiy _$AvailabitiyFromJson(Map<String, dynamic> json) {
  return _Availabitiy.fromJson(json);
}

/// @nodoc
mixin _$Availabitiy {
  bool? get online => throw _privateConstructorUsedError;
  bool? get inStore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabitiyCopyWith<Availabitiy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabitiyCopyWith<$Res> {
  factory $AvailabitiyCopyWith(
          Availabitiy value, $Res Function(Availabitiy) then) =
      _$AvailabitiyCopyWithImpl<$Res, Availabitiy>;
  @useResult
  $Res call({bool? online, bool? inStore});
}

/// @nodoc
class _$AvailabitiyCopyWithImpl<$Res, $Val extends Availabitiy>
    implements $AvailabitiyCopyWith<$Res> {
  _$AvailabitiyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = freezed,
    Object? inStore = freezed,
  }) {
    return _then(_value.copyWith(
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool?,
      inStore: freezed == inStore
          ? _value.inStore
          : inStore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabitiyImplCopyWith<$Res>
    implements $AvailabitiyCopyWith<$Res> {
  factory _$$AvailabitiyImplCopyWith(
          _$AvailabitiyImpl value, $Res Function(_$AvailabitiyImpl) then) =
      __$$AvailabitiyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? online, bool? inStore});
}

/// @nodoc
class __$$AvailabitiyImplCopyWithImpl<$Res>
    extends _$AvailabitiyCopyWithImpl<$Res, _$AvailabitiyImpl>
    implements _$$AvailabitiyImplCopyWith<$Res> {
  __$$AvailabitiyImplCopyWithImpl(
      _$AvailabitiyImpl _value, $Res Function(_$AvailabitiyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = freezed,
    Object? inStore = freezed,
  }) {
    return _then(_$AvailabitiyImpl(
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool?,
      inStore: freezed == inStore
          ? _value.inStore
          : inStore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabitiyImpl implements _Availabitiy {
  const _$AvailabitiyImpl({this.online, this.inStore});

  factory _$AvailabitiyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabitiyImplFromJson(json);

  @override
  final bool? online;
  @override
  final bool? inStore;

  @override
  String toString() {
    return 'Availabitiy(online: $online, inStore: $inStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabitiyImpl &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.inStore, inStore) || other.inStore == inStore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, online, inStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabitiyImplCopyWith<_$AvailabitiyImpl> get copyWith =>
      __$$AvailabitiyImplCopyWithImpl<_$AvailabitiyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabitiyImplToJson(
      this,
    );
  }
}

abstract class _Availabitiy implements Availabitiy {
  const factory _Availabitiy({final bool? online, final bool? inStore}) =
      _$AvailabitiyImpl;

  factory _Availabitiy.fromJson(Map<String, dynamic> json) =
      _$AvailabitiyImpl.fromJson;

  @override
  bool? get online;
  @override
  bool? get inStore;
  @override
  @JsonKey(ignore: true)
  _$$AvailabitiyImplCopyWith<_$AvailabitiyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
