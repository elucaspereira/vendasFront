
import 'package:flutter/material.dart';
import 'package:vendas/src/pages/cart/cart_tab.dart';
import '../home/home_tab.dart';


class BaseScreen extends StatefulWidget {
    const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();//controla as paginas

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
           const HomeTab(),// tela home

          CartTab(),
          Container(color: Colors.blue),// tela pedidos
          Container(color: Colors.purpleAccent), // tela perfil
          
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState((){
          currentIndex = index;
          pageController.jumpToPage(index);
    });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
          ),
              BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos',
          ),
                 BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),

        ],
      ),

    );
  }
}
