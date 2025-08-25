import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_picker_temp/core/utils/extensions.dart';
import 'package:state_picker_temp/features/location_picker/domain/entities/state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/location_picker_cubit/location_picker_state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/search_cubit/search_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/states_cubit/states_cubit.dart';
import 'package:state_picker_temp/features/location_picker/presentation/cubit/states_cubit/states_cubit_state.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/searchable_bottom_sheet.dart';
import 'package:state_picker_temp/features/location_picker/presentation/widgets/searchable_list.dart';
import 'package:state_picker_temp/injection/injection.dart';

class LocationStateBottomSheet extends StatelessWidget {
  final LocationPickerCubit cubit;
  const LocationStateBottomSheet({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final searchCubit = getIt<SearchCubit>();

    return BlocProvider<SearchCubit>(
      create: (context) => searchCubit,
      child: BlocBuilder<SearchCubit, String>(
        builder: (context, searchQuery) {
          return SearchableBottomSheet(
            title: 'Select State',
            searchHint: 'Search states...',
            searchQuery: searchQuery,
            onSearch: (query) => searchCubit.search(query),
            buildItemsView: (context) {
              return BlocProvider<StatesCubit>(
                create: (context) => StatesCubit.create(cubit.state.selectedCountry!.id),
                child: BlocBuilder<StatesCubit, StatesCubitState>(
                  builder: (context, state) {
                    return SearchableList<StateEntity>(
                      isLoading: state.isLoading,
                      searchQuery: searchQuery,
                      listItems: state.states,
                      filteredItems: state.states
                          ?.where(
                            (state) =>
                                state.value.toLowerCase().contains(searchQuery.toLowerCase()),
                          )
                          .toList(),
                      buildItem: (locationState) =>
                          BlocBuilder<LocationPickerCubit, LocationPickerState>(
                            bloc: cubit,
                            builder: (context, state) {
                              return ListTile(
                                title: Text(locationState.value),
                                trailing: locationState.id == state.selectedState?.id
                                    ? Icon(Icons.check, color: context.colorScheme.primary)
                                    : null,
                                onTap: () {
                                  cubit.selectState(locationState);
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
