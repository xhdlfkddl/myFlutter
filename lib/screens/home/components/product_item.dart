import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/screens/home/components/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  // 데이터를 받을 예정
  final Product product;
  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // 웹에 존재하는 이미지 들고오기
          ClipRect(child: Image.network(
            product.urlToImage,
            width: 115,
            height: 115,
            // 화면을 벗어나면 잘라내기
            fit: BoxFit.cover)
          ),
          const SizedBox(width: 16.0),
          ProductDetail(product: product)
        ],
      ),
    );
  }
}
