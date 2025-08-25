import 'package:flutter/material.dart';

class SearchableBottomSheet extends StatefulWidget {
  final String title;
  final String searchHint;
  final String searchQuery;
  final Function(String) onSearch;
  final Widget Function(BuildContext context) buildItemsView;

  const SearchableBottomSheet({
    super.key,
    required this.title,
    required this.searchHint,
    required this.searchQuery,
    required this.onSearch,
    required this.buildItemsView,
  });

  @override
  State<SearchableBottomSheet> createState() => _SearchableBottomSheetState();
}

class _SearchableBottomSheetState extends State<SearchableBottomSheet> {
  late final TextEditingController _searchController = TextEditingController(
    text: widget.searchQuery,
  );

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Material(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _searchController,
                autofocus: true,

                decoration: InputDecoration(
                  hintText: widget.searchHint,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  suffixIcon: widget.searchQuery.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            widget.onSearch('');
                          },
                        )
                      : null,
                ),
                onChanged: widget.onSearch,
              ),
              const SizedBox(height: 16),
              const Divider(),
              Flexible(
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  child: widget.buildItemsView(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
