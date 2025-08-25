import 'package:dartz/dartz.dart';
import 'package:state_picker_temp/core/errors/failures.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';

abstract class LocationRepository {
  Future<Either<Failure, List<CountryEntity>>> getCountries();
  Future<Either<Failure, List<StateEntity>>> getStates(String countryId);

  List<CountryEntity>? getCachedCountries();
  List<StateEntity>? getCachedStates(String countryId);
}
