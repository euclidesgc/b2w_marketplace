import 'package:flutter/material.dart';

class B2wAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final Widget iconeTitulo;
  final List<Widget> actions;
  final String title;

  ///Definido no theme
  final Color tituloCor;

  /// Padrão = true
  final bool centralizar;

  /// Padrào: definido no ThemeData
  final Color corBgBarra;

  /// Padrào: Colors.black
  final Color corBgTitulo;

  const B2wAppBar({
    Key key,
    this.leading,
    @required this.title,
    this.centralizar = true,
    this.corBgBarra,
    this.corBgTitulo,
    this.iconeTitulo,
    this.actions,
    this.tituloCor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading == null ? null : leading,
      backgroundColor: corBgBarra == null ? Theme.of(context).appBarTheme.color : corBgBarra,
      actions: actions == null ? <Widget>[Container()] : actions,
      title: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment:
              (centralizar == null || centralizar == true) ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: <Widget>[
            iconeTitulo == null ? Container() : iconeTitulo,
            SizedBox(width: 10),
            Text(title,
                style: TextStyle(color: tituloCor == null ? Theme.of(context).accentColor : tituloCor, fontSize: 16)),
          ],
        ),
        decoration: BoxDecoration(
          color: corBgTitulo == null ? Colors.black : corBgTitulo,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
