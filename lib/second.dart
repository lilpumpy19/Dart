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

          leading: IconButton(
            icon: const Icon(Icons.insert_drive_file_outlined),
            color: index % 2 == 0 ? Colors.white : Colors.white30, 
            onPressed: _incrementCounter,   
          ), 
          
          title: Text(
            'Задача: $index',
            style: index % 2 == 0
                ? Theme.of(context).textTheme.bodyMedium
                : Theme.of(context).textTheme.titleMedium,
          ),

          subtitle: Text(
            'Описание : $index',
            style: index % 2 == 0

                ? Theme.of(context).textTheme.bodySmall
                : Theme.of(context).textTheme.titleSmall,
          ),

          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: index % 2 == 0 ? Colors.white : Colors.white30, 
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
