import 'package:injectable/injectable.dart';

import '../entities/country.dart';
import '../repositories/location_repository.dart';

@injectable
class GetCachedCountries {
  final LocationRepository _repository;

  GetCachedCountries(this._repository);

  List<CountryEntity>? call() {
    return _repository.getCachedCountries();
  }
}
