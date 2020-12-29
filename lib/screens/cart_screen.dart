import 'package:BMtec_app/api/woo.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('CATEGORIAS'),
          ),
          FutureBuilder(
            future: categories(),
            builder: (context, snapshot) {
              final item = snapshot.data;
              return Column(
                children: [
                  ...item.map((category) {
                    return GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(category['id'].toString()),
                              Text(category['name']),
                              Text(category['count'].toString()),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
