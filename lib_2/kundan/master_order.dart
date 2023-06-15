import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Order',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: MyHomePage(title: 'Order Procurement'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMasterTableVisible = false;
  bool isRecentlySoldTableVisible = false;
  bool isRecentlyWarrantiedTableVisible = false;
  bool isSubitemListTableVisible = false;
  List<RecentlySoldItem> recentlySoldItems = [];
  List<RecentlyWarrantiedItem> recentlyWarrantiedItems = [];
  List<SubitemListItem> subitemListItems = [];

  void showMasterTable() {
    setState(() {
      isMasterTableVisible = true;
    });
  }

  void showRecentlySoldTable() {
    setState(() {
      isRecentlySoldTableVisible = true;
    });
  }

  void showRecentlyWarrantiedTable() {
    setState(() {
      isRecentlyWarrantiedTableVisible = true;
    });
  }

  void showSubitemListTable() {
    setState(() {
      isSubitemListTableVisible = true;
    });
  }

  void addRecentlySoldItem() {
    setState(() {
      recentlySoldItems.add(RecentlySoldItem());
    });
  }

  void addRecentlyWarrantiedItem() {
    setState(() {
      recentlyWarrantiedItems.add(RecentlyWarrantiedItem());
    });
  }

  void addSubitemListItem() {
    setState(() {
      subitemListItems.add(SubitemListItem());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: showMasterTable,
                child: Text('Master Order'),
              ),
              SizedBox(height: 16),
              if (isMasterTableVisible) OrderTable(),
              SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: showRecentlySoldTable,
                child: Text('Recently Sold'),
              ),
              SizedBox(height: 16),
              if (isRecentlySoldTableVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RecentlySoldTable(recentlySoldItems),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: addRecentlySoldItem,
                      child: Text('Add'),
                    ),
                  ],
                ),
              SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: showRecentlyWarrantiedTable,
                child: Text('Recently Warrantied'),
              ),
              SizedBox(height: 16),
              if (isRecentlyWarrantiedTableVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RecentlyWarrantiedTable(recentlyWarrantiedItems),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: addRecentlyWarrantiedItem,
                      child: Text('Add'),
                    ),
                  ],
                ),
              SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: showSubitemListTable,
                child: Text('Subitem List'),
              ),
              SizedBox(height: 16),
              if (isSubitemListTableVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SubitemListTable(subitemListItems),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: addSubitemListItem,
                      child: Text('Add'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => Colors.white70),
        columns: [
          DataColumn(label: Text('Item No.')),
          DataColumn(label: Text('DESCRIPTION')),
          DataColumn(label: Text('COST')),
          DataColumn(label: Text('ONHAND')),
          DataColumn(label: Text('PACK')),
          DataColumn(label: Text('MIN')),
          DataColumn(label: Text('ORDER')),
          DataColumn(label: Text('SHIP')),
          DataColumn(label: Text('PROBLEMS')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
          ]),
          DataRow(cells: [
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
            DataCell(TextField()),
          ]),
          // Add more rows as needed
        ],
      ),
    );
  }
}

class RecentlySoldTable extends StatelessWidget {
  final List<RecentlySoldItem> recentlySoldItems;

  RecentlySoldTable(this.recentlySoldItems);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => Colors.white70),
        columns: [
          DataColumn(label: Text('Item No.')),
          DataColumn(label: Text('DESCRIPTION')),
          DataColumn(label: Text('Qty Sold')),
          DataColumn(label: Text('ONHAND')),
          DataColumn(label: Text('PACK')),
          DataColumn(label: Text('Avg. Cost')),
          DataColumn(label: Text('Stock')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Replacement Item')),
          DataColumn(label: Text('Warranty')),
        ],
        rows: recentlySoldItems.map((item) {
          return DataRow(cells: [
            DataCell(TextField(
              controller: TextEditingController(text: item.itemNo),
              onChanged: (value) {
                item.itemNo = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.description),
              onChanged: (value) {
                item.description = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.qtySold),
              onChanged: (value) {
                item.qtySold = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.onHand),
              onChanged: (value) {
                item.onHand = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.pack),
              onChanged: (value) {
                item.pack = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.avgCost),
              onChanged: (value) {
                item.avgCost = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.stock),
              onChanged: (value) {
                item.stock = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.status),
              onChanged: (value) {
                item.status = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.replacementItem),
              onChanged: (value) {
                item.replacementItem = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.warranty),
              onChanged: (value) {
                item.warranty = value;
              },
            )),
          ]);
        }).toList(),
      ),
    );
  }
}

class RecentlyWarrantiedTable extends StatelessWidget {
  final List<RecentlyWarrantiedItem> recentlyWarrantiedItems;

  RecentlyWarrantiedTable(this.recentlyWarrantiedItems);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => Colors.white70),
        columns: [
          DataColumn(label: Text('Item No.')),
          DataColumn(label: Text('DESCRIPTION')),
          DataColumn(label: Text('Qty Sold')),
          DataColumn(label: Text('ONHAND')),
          DataColumn(label: Text('PACK')),
          DataColumn(label: Text('Avg. Cost')),
          DataColumn(label: Text('Stock')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Replacement Item')),
          DataColumn(label: Text('Warranty')),
        ],
        rows: recentlyWarrantiedItems.map((item) {
          return DataRow(cells: [
            DataCell(TextField(
              controller: TextEditingController(text: item.itemNo),
              onChanged: (value) {
                item.itemNo = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.description),
              onChanged: (value) {
                item.description = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.qtySold),
              onChanged: (value) {
                item.qtySold = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.onHand),
              onChanged: (value) {
                item.onHand = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.pack),
              onChanged: (value) {
                item.pack = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.avgCost),
              onChanged: (value) {
                item.avgCost = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.stock),
              onChanged: (value) {
                item.stock = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.status),
              onChanged: (value) {
                item.status = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.replacementItem),
              onChanged: (value) {
                item.replacementItem = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.warranty),
              onChanged: (value) {
                item.warranty = value;
              },
            )),
          ]);
        }).toList(),
      ),
    );
  }
}

class SubitemListTable extends StatelessWidget {
  final List<SubitemListItem> subitemListItems;

  SubitemListTable(this.subitemListItems);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        dataRowColor:
            MaterialStateColor.resolveWith((states) => Colors.white70),
        columns: [
          DataColumn(label: Text('Item No.')),
          DataColumn(label: Text('DESCRIPTION')),
          DataColumn(label: Text('Qty Sold')),
          DataColumn(label: Text('ONHAND')),
          DataColumn(label: Text('PACK')),
          DataColumn(label: Text('Avg. Cost')),
          DataColumn(label: Text('Stock')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Replacement Item')),
          DataColumn(label: Text('Warranty')),
        ],
        rows: subitemListItems.map((item) {
          return DataRow(cells: [
            DataCell(TextField(
              controller: TextEditingController(text: item.itemNo),
              onChanged: (value) {
                item.itemNo = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.description),
              onChanged: (value) {
                item.description = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.qtySold),
              onChanged: (value) {
                item.qtySold = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.onHand),
              onChanged: (value) {
                item.onHand = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.pack),
              onChanged: (value) {
                item.pack = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.avgCost),
              onChanged: (value) {
                item.avgCost = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.stock),
              onChanged: (value) {
                item.stock = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.status),
              onChanged: (value) {
                item.status = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.replacementItem),
              onChanged: (value) {
                item.replacementItem = value;
              },
            )),
            DataCell(TextField(
              controller: TextEditingController(text: item.warranty),
              onChanged: (value) {
                item.warranty = value;
              },
            )),
          ]);
        }).toList(),
      ),
    );
  }
}

class RecentlySoldItem {
  String itemNo = '';
  String description = '';
  String qtySold = '';
  String onHand = '';
  String pack = '';
  String avgCost = '';
  String stock = '';
  String status = '';
  String replacementItem = '';
  String warranty = '';
}

class RecentlyWarrantiedItem {
  String itemNo = '';
  String description = '';
  String qtySold = '';
  String onHand = '';
  String pack = '';
  String avgCost = '';
  String stock = '';
  String status = '';
  String replacementItem = '';
  String warranty = '';
}

class SubitemListItem {
  String itemNo = '';
  String description = '';
  String qtySold = '';
  String onHand = '';
  String pack = '';
  String avgCost = '';
  String stock = '';
  String status = '';
  String replacementItem = '';
  String warranty = '';
}
