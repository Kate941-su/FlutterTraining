import 'package:flutter/material.dart';
import 'package:flutter_training/provider.dart';
import 'search_result_list_tile.dart';
import 'appbar_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'repository_api_client.dart';
import 'hole_view.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Github Repository List',
      theme: ThemeData.dark(),
      home: const HoleView(),
    );
  }
}
