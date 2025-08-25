import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:state_picker_temp/core/errors/failures.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/repositories/location_repository.dart';

@injectable
class GetCountries {
  final LocationRepository _repository;

  GetCountries(this._repository);

  Future<Either<Failure, List<CountryEntity>>> call() async {
    return await _repository.getCountries();
  }
}
