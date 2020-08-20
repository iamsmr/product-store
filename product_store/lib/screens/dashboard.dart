import 'package:flutter/material.dart';
import 'package:product_store/screens/header.dart';
import 'package:product_store/screens/item_card.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderBar(icon: Icons.menu,image:'assets/images/menu.png',isDashboard:true),
              SizedBox(height: 20),
              Text(
                'Discover the\nnewest products',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search Products',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategory('Best Seller', true),
                    _buildCategory('Women', false),
                    _buildCategory('Men', false),
                    _buildCategory('Popular', false),
                    _buildCategory('Top Rated', false),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ListView(
                shrinkWrap: true,
                children: [
                  ItemCard(
                    title: 'Hand Shop',
                    quantity: '350ml',
                    price: '9',
                    image: 'assets/images/Hand-Soap.webp',
                  ),
                  ItemCard(
                    title: 'Deodorant',
                    quantity: '50ml',
                    price: '3',
                    image: 'assets/images/Deodorant.webp',
                  ),
                  ItemCard(
                    title: 'Body wash',
                    quantity: '80ml',
                    price: '4',
                    image: 'assets/images/body-wash.webp',
                  ),
                  ItemCard(
                    title: 'Toothpaste',
                    quantity: '110ml',
                    price: '2',
                    image: 'assets/images/Toothpaste.webp',
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  _buildCategory(String title, bool selected) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: selected ? Colors.black : Colors.grey[600],
            ),
          ),
          SizedBox(height: 6),
          selected
              ? Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
