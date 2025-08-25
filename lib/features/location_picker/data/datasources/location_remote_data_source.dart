import 'package:injectable/injectable.dart';
import 'package:state_picker_temp/core/errors/exceptions.dart';
import 'package:state_picker_temp/core/network/dio_client.dart';
import 'package:state_picker_temp/features/location_picker/data/models/country_model.dart';
import 'package:state_picker_temp/features/location_picker/data/models/state_model.dart';

abstract class LocationRemoteDataSource {
  Future<List<CountryModel>> getCountries();
  Future<List<StateModel>> getStates(String countryId);
}

@Injectable(as: LocationRemoteDataSource)
class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  final DioClient _client;

  LocationRemoteDataSourceImpl(this._client);

  @override
  Future<List<CountryModel>> getCountries() async {
    final response = await _client.get('/countries');

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => CountryModel.fromJson(json)).toList();
    } else {
      throw NetworkException(message: 'Failed to fetch countries', statusCode: response.statusCode);
    }
  }

  @override
  Future<List<StateModel>> getStates(String countryId) async {
    final response = await _client.get('/countries/$countryId/states');

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((json) => StateModel.fromJson(json)).toList();
    } else {
      throw NetworkException(message: 'Failed to fetch states', statusCode: response.statusCode);
    }
  }
}
