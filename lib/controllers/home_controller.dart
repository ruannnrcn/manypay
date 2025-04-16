import 'dart:ffi';
import '../models/item.dart';

class HomeController {
  late List<Item> arrayItem;

  HomeController() {
    arrayItem = [
      Item(id: 1, name: 'Mercado', description: 'Compras dia 2', value: 100.0),
      Item(id: 2, name: 'Mecanico', description: 'Troca de oleo', value: 20.0),
      Item(id: 3, name: 'Dentista', description: 'Limpeza  dia 8', value: 30.0),
    ];
  }
}
