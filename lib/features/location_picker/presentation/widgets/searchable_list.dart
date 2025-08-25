import 'package:flutter/material.dart';

class SearchableList<T> extends StatelessWidget {
  final bool isLoading;
  final List<T>? listItems;
  final List<T>? filteredItems;
  final String searchQuery;
  final Widget Function(T) buildItem;

  const SearchableList({
    super.key,
    required this.isLoading,
    required this.searchQuery,
    this.listItems,
    this.filteredItems,
    required this.buildItem,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Text(
              'Loading countries...',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(width: 16),
            const CircularProgressIndicator(),
          ],
        ),
      );
    }

    if (listItems?.isEmpty ?? true) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          'No countries loaded',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        ),
      );
    }

    if (searchQuery.isNotEmpty && (filteredItems?.isEmpty ?? true)) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          'No countries found matching "$searchQuery"',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        ),
      );
    }

    final items = filteredItems != null && searchQuery.isNotEmpty ? filteredItems : listItems;

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: items!.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return buildItem(item);
      },
    );
  }
}
