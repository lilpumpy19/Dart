import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> with AutomaticKeepAliveClientMixin {
  int itemCount = 0;

  void _incrementCounter() {
    setState(() {
      itemCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Practice'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _incrementCounter,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: itemCount, 
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.file_open),
          title: Text(
            'Задача: $index', 
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            'Описание : $index',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: _incrementCounter,
            ),
            
        ),
      
      ),
    );
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
