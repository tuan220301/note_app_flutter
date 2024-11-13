// main.dart
import 'package:flutter/material.dart';
import 'package:note_app/bottomSheet.dart';

// ignore: use_key_in_widget_constructors
class SearchableBottomSheetDemo extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "SubID": 208,
      "SubCD": "000207",
      "Description": "Phí B/L ( Bill Of Loading )"
    },
    {
      "SubID": 209,
      "SubCD": "000208",
      "Description": "Phí D/O ( Delivery Oder )"
    },
    {"SubID": 210, "SubCD": "000209", "Description": "Phí vệ sinh"},
    {
      "SubID": 211,
      "SubCD": "000210",
      "Description": "Phí THC ( Terminal Handling Charges )"
    },
    {"SubID": 214, "SubCD": "000213", "Description": "Phí nâng container rổng"},
    {"SubID": 215, "SubCD": "000214", "Description": "Phí hạ containerrổng"},
    {"SubID": 216, "SubCD": "000215", "Description": "Phí nâng container hàng"},
    {"SubID": 217, "SubCD": "000216", "Description": "Phí hạ container hàng"},
    {"SubID": 234, "SubCD": "000233", "Description": "Phí lưu ca xe"},
    {"SubID": 235, "SubCD": "000234", "Description": "Phí cân hàng"},
    {"SubID": 237, "SubCD": "000236", "Description": "Phí quá tải"},
  ];

  void showSearchableBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SearchableBottomSheet(data: data),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Searchable Bottom Sheet Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showSearchableBottomSheet(context),
          child: const Text("Open Bottom Sheet"),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: SearchableBottomSheetDemo(),
    ));
