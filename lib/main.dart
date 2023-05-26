import 'package:flutter/material.dart';

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
  int _goodNum = 0;
  // Stringのダミーデータ
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
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
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(),
                )
              ),
              child: Column(
                children: [
                  ListTile(
                        title: Text(
                          'dummy',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('簡単な説明簡単な説明簡単な説明簡単な説明'),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                ),
                                Text(_goodNum.toString()),
                              ],
                            )
                          ],
                        ),
                  ),
                ],
              ),
            );
          }
      )
    );
  }
}
