import 'package:b2w_marketplace/app/modules/dashboard/dashboard_page.dart';
import 'package:b2w_marketplace/app/modules/pedidos/pedidos_page.dart';
import 'package:b2w_marketplace/app/modules/produtos/produtos_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'principal_controller.dart';

class PrincipalPage extends StatefulWidget {
  final String title;
  const PrincipalPage({Key key, this.title = "Principal"}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends ModularState<PrincipalPage, PrincipalController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  final List<Widget> _children = [
    DashboardPage(),
    PedidosPage(),
    ProdutosPage(),
    Container(),
  ];

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void onTabTapped(int index) {
    setState(() {
      if (index == 3) {
        _openEndDrawer();
      } else {
        _currentIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        actions: [Container()],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Modular.to.pop();
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Modular.to.pop();
              },
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        selectedFontSize: 18,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 18,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text('Vendas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('Produtos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('Mais'),
          ),
        ],
      ),
    );
  }
}
