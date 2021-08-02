import 'package:flutter/material.dart';
import 'package:pos_system/widgets.dart';

class TablesScreen extends StatefulWidget {
  const TablesScreen();
  @override
  _TablesScreenState createState() => _TablesScreenState();
}

class _TablesScreenState extends State<TablesScreen> {
  final tempList = List.generate(5, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tables'),
        actions: const [
          Icon(Icons.monetization_on, color: Colors.white),
          SizedBox(width: 20)
        ],
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: MediaQuery.of(context).size.height - 250,
            child: GridView.builder(
              itemCount: tempList.length + 1,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (_, index) {
                if (index == tempList.length) {
                  return InkWell(
                    onTap: () => setState(() => tempList.add(index + 1)),
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.add,
                        size: 35,
                      ),
                    ),
                  );
                }
                return CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(fontSize: 35),
                  ),
                );
              },
            ),
          ),
          const IndicatorBox()
        ],
      ),
    );
  }
}
