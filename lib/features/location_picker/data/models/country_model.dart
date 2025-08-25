import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({required String id, required String value}) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}

extension CountryModelX on CountryModel {
  CountryEntity toEntity() => CountryEntity(id: id, value: value);
}
