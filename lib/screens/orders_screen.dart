import 'package:first_app/providers/orders.dart' show Orders;
import 'package:first_app/widgets/OrderItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: ordersData.orders.length,
        itemBuilder: (context, index) => OrderItem(ordersData.orders[index]),
      ),
    );
  }
}
