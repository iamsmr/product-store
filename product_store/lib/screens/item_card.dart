import 'package:flutter/material.dart';
import 'package:product_store/screens/product_detail.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String quantity;
  final String price;
  final String image;

  const ItemCard({Key key, this.title, this.quantity, this.price, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailPage(
            image: image,
            title: title,
            price: price,
            quantity: quantity,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 150,
        child: Row(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Colors.grey[300],
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
            ),
            SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  quantity,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              '\$ $price',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
