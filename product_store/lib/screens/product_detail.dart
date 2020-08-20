import 'package:flutter/material.dart';
import 'package:product_store/screens/header.dart';

class DetailPage extends StatefulWidget {
  final String title;
  final String quantity;
  final String price;
  final String image;

  const DetailPage({Key key, this.title, this.quantity, this.price, this.image})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          HeaderBar(
            icon: Icons.arrow_back_ios,
            isDashboard: false,
            onPressed: () => Navigator.pop(context),
          ),
          SizedBox(height: 30),
          Container(
            height: 400,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                child: Image.asset('assets/images/Comb.png'),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Facilitates',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                child: Image.asset('assets/images/chair.png'),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Professional',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                child: Image.asset('assets/images/shampoo.png'),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Stylization',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.image))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, color: Colors.red[200]),
                      Icon(Icons.star, color: Colors.red[200]),
                      Icon(Icons.star, color: Colors.red[200]),
                      Icon(Icons.star, color: Colors.red[200]),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.quantity,
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  ),
                  Spacer(),
                  Text(
                    '55 Reviews',
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${widget.price} \$',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () => setState(() => quantity++),
                        child: Text('+'),
                      ),
                      Text(quantity.toString()),
                      FlatButton(
                        onPressed: () => setState(() => quantity++),
                        child: Text('-'),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 55,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff3D52FE).withOpacity(.2),
                          Color(0xff3D52FE),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
