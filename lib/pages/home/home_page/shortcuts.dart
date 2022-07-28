import 'package:akbank_clone/pages/home/home_page/PageContent.dart';
import 'package:flutter/material.dart';

class ShortCutsButtonAndTitle extends StatelessWidget {
  const ShortCutsButtonAndTitle({
    Key? key,
    required this.IconTitle,
    required this.icon,
  }) : super(key: key);
  final String IconTitle;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.ShortcutsButtonsAndContentsTopPadding,
      child: Row(
        children: [
          Padding(
            padding: PaddingStyle.ShortcutsButtonsPadding,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              elevation: 5,
              child: IconTheme(
                  data: const IconThemeData(color: Colors.red), child: icon),
            ),
          ),
          Padding(
            padding: PaddingStyle.ShortcutsContentsPadding,
            child: Text('$IconTitle'),
          ),
        ],
      ),
    );
  }
}

class ShortcutsButtonIcon {
  static final need = Icon(Icons.add);
}
