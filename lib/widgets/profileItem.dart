import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masflu/app_theme.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Function callback;
  final bool withTrailing;

  ProfileItem(
      {@required this.icon,
      @required this.title,
      @required this.subtitle,
      @required this.callback,
      this.withTrailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primaryColor,
      child: ListTile(
        leading: GestureDetector(
          onTap: () => callback(),
          child: Container(
            width: 30,
            height: 30,
            padding: EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: Icon(icon, color: Theme.of(context).primaryColor),
          ),
        ),
        trailing: withTrailing == false
            ? null
            : Icon(
                EvaIcons.arrowIosForward,
                color: Theme.of(context).primaryColor,
                size: 30
              ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () => callback(),
      ),
    );
  }
}
