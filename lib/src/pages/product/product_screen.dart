import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vendas/src/config/custom_colors.dart';
import 'package:vendas/src/models/item_model.dart';
import 'package:vendas/src/services/utils_service.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          //conteudo
          Column(
            children: [
              Expanded(
                child: Hero(
                  tag: item.imgUrl,
                  child: Image.asset(item.imgUrl),
                  ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(32),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Nome - Quantidade
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.itemName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          color: Colors.red,
                        ),
                      ],
                    ),

                    //preço
                    Text(
                      utilsServices.priceToCurrency(item.price),
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.customSwatchColor,
                      ),
                    ),

                    //descrição
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SingleChildScrollView(
                          child: Text(
                            item.description,
                            style: const TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //botão
                    SizedBox(
                      height: 55,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        label: Text(
                          'Add ao Carrinho',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),

          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
