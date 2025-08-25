import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_picker_temp/core/utils/extensions.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/country.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/countries_cubit/countries_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/countries_cubit/countries_cubit_state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/search_cubit/search_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/searchable_bottom_sheet.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/searchable_list.dart';
import 'package:state_picker_temp/injection/injection.dart';

class LocationCountryBottomSheet extends StatefulWidget {
  final LocationPickerCubit cubit;
  const LocationCountryBottomSheet({super.key, required this.cubit});

  @override
  State<LocationCountryBottomSheet> createState() => _LocationCountryBottomSheetState();
}

class _LocationCountryBottomSheetState extends State<LocationCountryBottomSheet> {
  final searchCubit = getIt<SearchCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => searchCubit,
      child: BlocBuilder<SearchCubit, String>(
        builder: (context, searchQuery) {
          return SearchableBottomSheet(
            title: 'Select Country',
            searchHint: 'Search countries...',
            searchQuery: searchQuery,
            onSearch: (query) => searchCubit.search(query),
            buildItemsView: (context) {
              return BlocProvider<CountriesCubit>(
                create: (context) => getIt<CountriesCubit>(),
                child: BlocBuilder<CountriesCubit, CountriesCubitState>(
                  builder: (context, state) {
                    return SearchableList<CountryEntity>(
                      isLoading: state.isLoading,
                      searchQuery: searchQuery,
                      listItems: state.countries,
                      filteredItems: state.countries
                          ?.where(
                            (country) =>
                                country.value.toLowerCase().contains(searchQuery.toLowerCase()),
                          )
                          .toList(),
                      buildItem: (country) => BlocBuilder<LocationPickerCubit, LocationPickerState>(
                        bloc: widget.cubit,
                        builder: (context, state) {
                          return ListTile(
                            title: Text(country.value),
                            trailing: country.id == state.selectedCountry?.id
                                ? Icon(Icons.check, color: context.colorScheme.primary)
                                : null,
                            onTap: () {
                              widget.cubit.selectCountry(country);
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
