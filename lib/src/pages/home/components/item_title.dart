import 'package:flutter/material.dart';
import 'package:vendas/src/models/item_model.dart';

class ItemTitle extends StatelessWidget {
  final ItemModel item;

  const ItemTitle({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Imagem
          Image.asset(item.imgUrl),

          // Nome
          Text(item.itemName),


          // Preço - Unidade de Medida
        ],
      ),
    );
  }
}
