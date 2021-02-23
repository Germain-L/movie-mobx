import 'package:flutter/material.dart';
import 'package:movie_mobx/state/home_state.dart';
import 'package:provider/provider.dart';

class AppbarWidget extends StatefulWidget with PreferredSizeWidget {
  @override
  _AppbarWidgetState createState() => _AppbarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(50);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _textEditingController,
            onEditingComplete: () {
              state.search(_textEditingController.text);
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            state.search(_textEditingController.text);
          },
        ),
      ],
    );
  }
}
