import 'package:vendas/src/models/cart_item_model.dart';
import 'package:vendas/src/models/item_model.dart';

ItemModel smartphone = ItemModel(
  description: 'O melor smartphone',
  itemName: 'Xiaome redmi note 10',
  imgUrl: "assets/eletronicos/note10.png",
  price: 1550.89,
  unit: 'UN',
);
ItemModel smartTv = ItemModel(
  description: 'a melhor Smart Tv de todas',
  itemName: 'Xiaomi Mi tv 4s',
  imgUrl: "assets/eletronicos/tv.png",
  price: 5850.00,
  unit: 'UN',
);
ItemModel geladeira = ItemModel(
  description: 'A melhor geladeira turbo do mercado',
  itemName: 'Geladeira doble frost free',
  imgUrl: "assets/eletronicos/geladeira.png",
  price: 5658.98,
  unit: 'UN',
);
ItemModel escrivaninha = ItemModel(
    description: 'Escrivaninha multiuso',
    itemName: 'Escrivaninha Mdf',
    imgUrl: "assets/eletronicos/mesa.png",
    price: 859.95,
    unit: 'UN');
ItemModel placaMae = ItemModel(
  description: 'Placa mae ultima geração',
  itemName: 'placa mae',
  imgUrl: "assets/eletronicos/placa_mae.png",
  price: 855.60,
  unit: 'PC',
);
ItemModel mousePad = ItemModel(
  description: 'Mousepad gamer',
  itemName: 'Mousepad hoopson 30 x 20',
  imgUrl: "assets/eletronicos/mousepad.png",
  price: 90.00,
  unit: 'UN',
);

List<ItemModel> items = [
  smartphone,
  smartTv,
  geladeira,
  escrivaninha,
  placaMae,
  mousePad,
];
List<String> categories = [
  'Eletronicos',
  'Smartphones',
  'Eletrodomésticos',
  'Acessórios',
  'Escritório',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: smartTv,
    quantity: 1,
  ),
    CartItemModel(
    item: smartphone,
    quantity: 3,
  ),
    CartItemModel(
    item: geladeira,
    quantity: 2,
  ),
];
