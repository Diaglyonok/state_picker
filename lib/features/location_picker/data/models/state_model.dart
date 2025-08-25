import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';

part 'state_model.freezed.dart';
part 'state_model.g.dart';

@freezed
class StateModel with _$StateModel {
  const factory StateModel({required String id, required String value, required String countryId}) =
      _StateModel;

  factory StateModel.fromJson(Map<String, dynamic> json) => _$StateModelFromJson(json);
}

extension StateModelX on StateModel {
  StateEntity toEntity() => StateEntity(id: id, value: value, countryId: countryId);
}
