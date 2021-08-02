import 'package:flutter/material.dart';
import 'package:pos_system/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Stack(
          children: [
            FloatingActionButton(
                backgroundColor: Colors.black,
                onPressed: () {},
                child: const Icon(Icons.shopping_cart)),
            Positioned(
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue,
                child: Center(
                  child: Text(3.toString()),
                ),
              ),
            ),
          ],
        ),
        drawer: const AppDrawer(),
        appBar: AppBar(
          title: const Text('Categories'),
          actions: const [
            Icon(Icons.edit, color: Colors.white),
            SizedBox(width: 20)
          ],
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ExpansionTile(
                  title: Text(
                    data[index].title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                  collapsedBackgroundColor: Colors.black,
                  children: data[index]
                      .children
                      .map((e) => ListTile(
                            title: Text(data[index].children[index].title),
                            tileColor: Colors.grey,
                            trailing: const Text('19\$'),
                          ))
                      .toList(),
                ),
              ),
            );
          },
        ));
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Item A0.1'),
          Entry('Item A0.2'),
          Entry('Item A0.3'),
        ],
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
  Entry(
    'Chapter C',
    <Entry>[
      Entry('Section C0'),
      Entry('Section C1'),
      Entry(
        'Section C2',
        <Entry>[
          Entry('Item C2.0'),
          Entry('Item C2.1'),
          Entry('Item C2.2'),
          Entry('Item C2.3'),
        ],
      ),
    ],
  ),
];
