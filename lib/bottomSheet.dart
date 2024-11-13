// searchable_bottom_sheet.dart
import 'package:flutter/material.dart';

class SearchableBottomSheet extends StatefulWidget {
  final List<Map<String, dynamic>> data;

  const SearchableBottomSheet({super.key, required this.data});

  @override
  // ignore: library_private_types_in_public_api
  _SearchableBottomSheetState createState() => _SearchableBottomSheetState();
}

class _SearchableBottomSheetState extends State<SearchableBottomSheet> {
  late List<Map<String, dynamic>> filteredData;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredData = List.from(widget.data);
  }

  void onSearch(String text) {
    setState(() {
      filteredData = widget.data
          .where((item) =>
              item["Description"].toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: searchController,
            onChanged: onSearch,
            decoration: const InputDecoration(
              labelText: "Search Description",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (context, index) {
                final item = filteredData[index];
                return ListTile(
                  title: Text(item["Description"]),
                  subtitle: Text("Mã: ${item["SubCD"]}"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
