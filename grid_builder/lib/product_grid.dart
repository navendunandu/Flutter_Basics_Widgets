import 'package:flutter/material.dart';
import 'package:grid_builder/list_view.dart';
import 'package:grid_builder/mock_data.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Grid'),
      ),
      body: GridView.builder(gridDelegate:
       const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), 
        itemCount: mockProducts.length,
        itemBuilder: (context, index) {
          final product = mockProducts[index];
          return
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList(),));
            },
            child: (
              
              Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    product['imageUrl'],
                    fit: BoxFit.cover,
                    height: 100,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      product['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      product['description'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('\$${product['price'].toStringAsFixed(2)}'),
                  ),
                ],
              ),
            )
            ),
          );
        },)
    );
  }
}