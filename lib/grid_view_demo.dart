import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
                childAspectRatio: 3),
            itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                    color: Color(0xffc9c6c6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add),
                    Text("All"),
                    Icon(Icons.add),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
