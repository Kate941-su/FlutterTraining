import 'package:flutter/material.dart';

class AppbarTextField extends StatelessWidget {
  // member variables
  final int goodNum;

  const AppbarTextField({
    Key? key,
    required this.goodNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          // TextFieldの見た目の設定
            suffixIcon: IconButton(
              onPressed: () {
                _controller.clear();
              },
              icon: const Icon(Icons.clear),
            )),
        onChanged: (value) {},
      ),
    ),
  }
}
