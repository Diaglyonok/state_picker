import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:state_picker_temp/core/errors/failures.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';
import 'package:state_picker_temp/features/location_picker/domain/repositories/location_repository.dart';

@injectable
class GetStates {
  final LocationRepository _repository;

  GetStates(this._repository);

  Future<Either<Failure, List<StateEntity>>> call(String countryId) async {
    return await _repository.getStates(countryId);
  }
}
