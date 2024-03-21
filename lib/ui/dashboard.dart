import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Icon(Icons.shopping_bag),
        ),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Image(
                image: NetworkImage('https://picsum.photos/id/26/500/300')),
          ),
          ListProducts(),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0),
            child: Image(
                image: NetworkImage('https://picsum.photos/id/36/500/300')),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0),
            child: Image(
                image: NetworkImage('https://picsum.photos/id/79/500/300')),
          ),
        ],
      )),
    );
  }
}

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ProductImage(
            nomor: 1,
            nama: "produk 1",
            harga: 20000,
          ),
          ProductImage(
            nomor: 2,
            nama: "produk 2",
            harga: 10000,
          ),
          ProductImage(
            nomor: 3,
            nama: "produk 3",
            harga: 100000,
          ),
          ProductImage(
            nomor: 4,
            nama: "produk 4",
            harga: 300000,
          ),
          ProductImage(
            nomor: 5,
            nama: "produk 5",
            harga: 1000000,
          )
        ]),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int nomor;
  final String nama;
  final double harga;
  const ProductImage(
      {super.key,
      this.nomor = 1,
      this.nama = "Product Name",
      this.harga = 0.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          Image(
              image: NetworkImage('https://picsum.photos/150/?random=2$nomor')),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(nama), Text("Rp. $harga")])
        ],
      ),
    );
  }
}
