
import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/providers.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<countProvider>(context, listen: false);
    // print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Center(
        child: Consumer<countProvider>(builder: (context, value, child)  {
          // print('Only this is running');
          return Text(value.count.toString(),
        style: TextStyle(fontSize: 50));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countprovider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );

  }
}
