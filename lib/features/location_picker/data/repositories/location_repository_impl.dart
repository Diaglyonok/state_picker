import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:state_picker_temp/core/errors/exceptions.dart';
import 'package:state_picker_temp/core/errors/failures.dart';
import 'package:state_picker_temp/features/location_picker/data/models/country_model.dart';
import 'package:state_picker_temp/features/location_picker/data/models/state_model.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';
import 'package:state_picker_temp/features/location_picker/domain/repositories/location_repository.dart';
import '../datasources/location_remote_data_source.dart';

@Singleton(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository {
  final LocationRemoteDataSource _remoteDataSource;

  List<CountryEntity>? _cachedCountries;
  final Map<String, List<StateEntity>> _cachedStates = {};

  LocationRepositoryImpl(this._remoteDataSource) {
    getCountries();
  }

  @override
  Future<Either<Failure, List<CountryEntity>>> getCountries() async {
    try {
      final countryModels = await _remoteDataSource.getCountries();
      final countries = countryModels.map((model) => model.toEntity()).toList();
      _cachedCountries = countries;
      return Right(countries);
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: 'An unexpected error occurred'));
    }
  }

  @override
  Future<Either<Failure, List<StateEntity>>> getStates(String countryId) async {
    try {
      final stateModels = await _remoteDataSource.getStates(countryId);
      final states = stateModels.map((model) => model.toEntity()).toList();
      _cachedStates[countryId] = states;
      return Right(states);
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: 'An unexpected error occurred'));
    }
  }

  @override
  List<CountryEntity>? getCachedCountries() {
    return _cachedCountries;
  }

  @override
  List<StateEntity>? getCachedStates(String countryId) {
    return _cachedStates[countryId];
  }
}
