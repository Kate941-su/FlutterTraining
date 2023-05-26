import 'package:flutter/material.dart';
import 'search_result_list_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _goodNum = 0;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: Container(
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
        ),
        body: ListView.separated(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(5),
              child: SearchResultListTile(goodNum: _goodNum),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 0.5,
            );
          },
        ));
  }
}
