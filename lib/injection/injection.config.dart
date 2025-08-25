// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:state_picker_temp/core/network/dio_client.dart' as _i762;
import 'package:state_picker_temp/features/location_picker/data/datasources/location_remote_data_source.dart'
    as _i293;
import 'package:state_picker_temp/features/location_picker/data/repositories/location_repository_impl.dart'
    as _i954;
import 'package:state_picker_temp/features/location_picker/domain/repositories/location_repository.dart'
    as _i861;
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_cached_countries.dart'
    as _i663;
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_cached_states.dart'
    as _i860;
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_countries.dart'
    as _i309;
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_states.dart'
    as _i284;
import 'package:state_picker_temp/features/location_picker/presentation/cubit/countries_cubit/countries_cubit.dart'
    as _i709;
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_cubit.dart'
    as _i96;
import 'package:state_picker_temp/features/location_picker/presentation/cubit/search_cubit/search_cubit.dart'
    as _i115;
import 'package:state_picker_temp/features/location_picker/presentation/cubit/states_cubit/states_cubit.dart'
    as _i440;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i96.LocationPickerCubit>(() => _i96.LocationPickerCubit());
    gh.factory<_i115.SearchCubit>(() => _i115.SearchCubit());
    gh.lazySingleton<_i762.DioClient>(() => _i762.DioClient());
    gh.factory<_i293.LocationRemoteDataSource>(
      () => _i293.LocationRemoteDataSourceImpl(gh<_i762.DioClient>()),
    );
    gh.singleton<_i861.LocationRepository>(
      () => _i954.LocationRepositoryImpl(gh<_i293.LocationRemoteDataSource>()),
    );
    gh.factory<_i284.GetStates>(
      () => _i284.GetStates(gh<_i861.LocationRepository>()),
    );
    gh.factory<_i309.GetCountries>(
      () => _i309.GetCountries(gh<_i861.LocationRepository>()),
    );
    gh.factory<_i663.GetCachedCountries>(
      () => _i663.GetCachedCountries(gh<_i861.LocationRepository>()),
    );
    gh.factory<_i860.GetCachedStates>(
      () => _i860.GetCachedStates(gh<_i861.LocationRepository>()),
    );
    gh.factoryParam<_i440.StatesCubit, String, dynamic>(
      (countryId, _) => _i440.StatesCubit(
        countryId,
        gh<_i284.GetStates>(),
        gh<_i860.GetCachedStates>(),
      ),
    );
    gh.factory<_i709.CountriesCubit>(
      () => _i709.CountriesCubit(
        gh<_i309.GetCountries>(),
        gh<_i663.GetCachedCountries>(),
      ),
    );
    return this;
  }
}
