import 'package:flutter/material.dart';
import 'package:manypay/controllers/home_controller.dart';

var controller = HomeController();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Gastos')),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final item = controller.arrayItem;
          return ListTile(
            title: Text(controller.arrayItem[index].name),
            subtitle: Text(controller.arrayItem[index].description),
            trailing: Text('\$${controller.arrayItem[index].value.toString()}'),
          );
        },
        separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(10),
        itemCount: controller.arrayItem.length,
      ),
    );
  }
}
