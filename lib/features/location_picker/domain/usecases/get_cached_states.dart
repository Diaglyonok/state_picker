import 'package:injectable/injectable.dart';

import '../entities/state.dart';
import '../repositories/location_repository.dart';

@injectable
class GetCachedStates {
  final LocationRepository _repository;

  GetCachedStates(this._repository);

  List<StateEntity>? call(String countryId) {
    return _repository.getCachedStates(countryId);
  }
}
