import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text("Search")),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.8),
                ),
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20, 8.0, 0),
            child: Image(
                image: NetworkImage('https://picsum.photos/500/300/?random=1')),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20, 8.0, 0),
            child: Image(
                image: NetworkImage('https://picsum.photos/500/300/?random=2')),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20, 8.0, 0),
            child: Image(
                image: NetworkImage('https://picsum.photos/500/300/?random=3')),
          ),
        ],
      )),
    );
  }
}
