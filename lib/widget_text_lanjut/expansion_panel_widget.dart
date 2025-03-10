import 'package:flutter/material.dart';

class ExpansionPanelWidget extends StatefulWidget {
  const ExpansionPanelWidget({super.key});

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  // List untuk menyimpan state dari setiap panel (apakah sedang diperluas atau tidak)
  final List<bool> _isExpandedList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Panel')),
      body: ListView(
        children: [
          // Panel pertama
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: const EdgeInsets.all(0),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isExpandedList[0] = !_isExpandedList[0];
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(title: Text('Panel 1'));
                },
                body: const ListTile(
                  title: Text('Konten Panel 1'),
                  subtitle: Text('Ini adalah konten detail dari Panel 1.'),
                ),
                isExpanded: _isExpandedList[0], // State panel pertama
              ),
            ],
          ),
          // Panel kedua
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: const EdgeInsets.all(0),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isExpandedList[1] = !_isExpandedList[1];
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(title: Text('Panel 2'));
                },
                body: const ListTile(
                  title: Text('Konten Panel 2'),
                  subtitle: Text('Ini adalah konten detail dari Panel 2.'),
                ),
                isExpanded: _isExpandedList[1], // State panel kedua
              ),
            ],
          ),
          // Panel ketiga
          ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: const EdgeInsets.all(0),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _isExpandedList[2] = !_isExpandedList[2];
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(title: Text('Panel 3'));
                },
                body: const ListTile(
                  title: Text('Konten Panel 3'),
                  subtitle: Text('Ini adalah konten detail dari Panel 3.'),
                ),
                isExpanded: _isExpandedList[2], // State panel ketiga
              ),
            ],
          ),
        ],
      ),
    );
  }
}
