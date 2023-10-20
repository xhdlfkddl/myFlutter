import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/screens/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('우동'),
            const SizedBox(width: 4.0),
            const Icon(CupertinoIcons.chevron_down)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
      ),
      // ListView 는 한번에 모든 정보를 가져옴
      // .separated: 화면에 렌더링 되는 것만 가져옴
      body: ListView.separated(
          itemBuilder: (context, index) => ProductItem(product: productList[index]),
          separatorBuilder: (context, Index) => Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          ),
          itemCount: productList.length),
    );
  }
}
