import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  bool hideSearch = false;
  bool showDrawer = false;
  bool showBack = false;

  CustomAppBar({
    Key? key,
    this.title,
    bool showDrawer = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconButton drawerIcon = IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
      iconSize: 30,
      color: Colors.black,
    );
    IconButton backIcon = IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back),
      iconSize: 30,
      color: Colors.black,
    );

    IconButton? leadingButton;
    if (showDrawer) {
      leadingButton = drawerIcon;
    }
    if (showBack) {
      leadingButton = backIcon;
    }

    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontFamily: 'Helvetica Neue', fontSize: 20),
      ),
      leading: leadingButton,
      actions: [
        !hideSearch
            ? IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ))
            : Container()
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
