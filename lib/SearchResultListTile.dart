import 'package:flutter/material.dart';

class SearchResultListTile extends StatelessWidget {
  // member variables
  final int goodNum;

  const SearchResultListTile({
    Key? key,
    required this.goodNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'dummy',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('簡単な説明簡単な説明簡単な説明簡単な説明'),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.grey,
              ),
              Text(goodNum.toString()),
            ],
          )
        ],
      ),
    );
  }
}
