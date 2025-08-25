import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:state_picker_temp/core/errors/failures.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/domain/repositories/location_repository.dart';
import 'package:state_picker_temp/features/location_picker/domain/usecases/get_countries.dart';

import 'get_countries_test.mocks.dart';

@GenerateMocks([LocationRepository])
void main() {
  late GetCountries usecase;
  late MockLocationRepository mockLocationRepository;

  setUp(() {
    mockLocationRepository = MockLocationRepository();
    usecase = GetCountries(mockLocationRepository);
  });

  const testCountries = [
    CountryEntity(id: '1', value: 'Sudan'),
    CountryEntity(id: '2', value: 'Eswatini'),
    CountryEntity(id: '3', value: 'Malawi'),
  ];

  test('should get countries from the repository', () async {
    // arrange
    when(mockLocationRepository.getCountries()).thenAnswer((_) async => const Right(testCountries));

    // act
    final result = await usecase();

    // assert
    expect(result, const Right(testCountries));
    verify(mockLocationRepository.getCountries());
    verifyNoMoreInteractions(mockLocationRepository);
  });

  test('should return failure when repository fails', () async {
    // arrange
    const testFailure = Failure.network(message: 'Network error');
    when(mockLocationRepository.getCountries()).thenAnswer((_) async => const Left(testFailure));

    // act
    final result = await usecase();

    // assert
    expect(result, const Left(testFailure));
    verify(mockLocationRepository.getCountries());
    verifyNoMoreInteractions(mockLocationRepository);
  });
}
