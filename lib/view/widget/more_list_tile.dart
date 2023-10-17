import 'package:flutter/material.dart';

class CommonMoreListTile extends StatefulWidget {
  const CommonMoreListTile({
    required this.trailing,
    required this.onTap,
    super.key,
    required this.leading,
    required this.title,
  });
  final GestureTapCallback onTap;
  final IconData leading;
  final String title;
  final Widget trailing;

  @override
  State<CommonMoreListTile> createState() => _CommonMoreListTileState();
}

class _CommonMoreListTileState extends State<CommonMoreListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      leading: Icon(
        widget.leading,
      ),
      title: Text(widget.title),
      trailing: widget.trailing,
    );
  }
}


