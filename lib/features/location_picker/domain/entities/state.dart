import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class StateEntity with _$StateEntity {
  const factory StateEntity({
    required String id,
    required String value,
    required String countryId,
  }) = _StateEntity;
}