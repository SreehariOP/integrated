import 'package:flutter/material.dart';

void main() {
  runApp(ProductDashboardApp());
}

class ProductDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            final product = productList[index];

            return Container(
              height: 80.0, // Adjust the height as per your requirements

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    product.imagePath,
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailsPage(product: product),
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.grey[200],
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            product.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool takeOrderFlag = false;

  @override
  void initState() {
    super.initState();

    takeOrderFlag = widget.product.takeOrderFlag;
  }

  void toggleTakeOrderFlag() {
    setState(() {
      takeOrderFlag = !takeOrderFlag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.product.imagePath,
              width: 270,
              height: 270,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildQuantityInfo(
                    'On Hand:', '${widget.product.qtyOnHand} pcs'),
                _buildQuantityInfo(
                  'Warehouse Inventory:',
                  '${widget.product.qtyAtWarehouse} pcs',
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReplacementItemsPage(
                          replacementItems: widget.product.replacementItems,
                          components: widget.product.components,
                        ),
                      ),
                    );
                  },
                  child: Text('View Replacement Items'),
                ),
                SizedBox(width: 430),
                Text(
                  '\$${widget.product.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Take Order Flag:'),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: toggleTakeOrderFlag,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: takeOrderFlag ? Colors.green : Colors.red,
                    ),
                    child: Icon(
                      takeOrderFlag ? Icons.check : Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuantityInfo(String label, String value) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
              child: Icon(
                Icons.filter_hdr,
                color: Colors.black87,
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReplacementItem {
  final String name;

  final int qty;

  final double price;

  ReplacementItem({
    required this.name,
    required this.qty,
    required this.price,
  });
}

class Component {
  final String name;

  final int qty;

  final double price;

  Component({
    required this.name,
    required this.qty,
    required this.price,
  });
}

class ReplacementItemsPage extends StatelessWidget {
  final List<ReplacementItem> replacementItems;

  final List<Component> components;

  ReplacementItemsPage({
    required this.replacementItems,
    required this.components,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Replacement Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Replacement Items:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: replacementItems.length,
                itemBuilder: (context, index) {
                  final item = replacementItems[index];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${item.qty} pcs',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '\$${item.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Components:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: components.length,
                itemBuilder: (context, index) {
                  final component = components[index];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          component.name,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${component.qty} pcs',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '\$${component.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildQuantityAndPrice(int quantity, double price) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          '$quantity pcs',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(width: 8.0),
      Text(
        '\$${price.toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    ],
  );
}

class Product {
  final String name;

  final String imagePath;

  final int qtyOnHand;

  final int qtyAtWarehouse;

  final double price;

  final bool takeOrderFlag;

  final List<ReplacementItem> replacementItems;

  final List<Component> components;

  final int selectedItemIndex = -1;

  Product(
      {required this.name,
      required this.imagePath,
      required this.qtyOnHand,
      required this.qtyAtWarehouse,
      required this.price,
      required this.takeOrderFlag,
      required this.replacementItems,
      required this.components,
      required});
}

List<Product> productList = [
  Product(
    name: 'Product 1',
    imagePath: 'assets/product1.png',
    qtyOnHand: 100,
    qtyAtWarehouse: 200,
    price: 10.99,
    takeOrderFlag: true,
    replacementItems: [
      ReplacementItem(name: 'Item 1', qty: 5, price: 1.99),
      ReplacementItem(name: 'Item 2', qty: 10, price: 3.99),
    ],
    components: [
      Component(name: 'Component X', qty: 2, price: 5.99),
      Component(name: 'Component Y', qty: 3, price: 7.99),
    ],
  ),
  Product(
    name: 'Product 2',
    imagePath: 'assets/product2.png',
    qtyOnHand: 50,
    qtyAtWarehouse: 150,
    price: 15.99,
    takeOrderFlag: false,
    replacementItems: [
      ReplacementItem(name: 'Item 3', qty: 2, price: 2.49),
      ReplacementItem(name: 'Item 4', qty: 7, price: 4.99),
    ],
    components: [
      Component(name: 'Component Z', qty: 1, price: 9.99),
    ],
  ),
];
