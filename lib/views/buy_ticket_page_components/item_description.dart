import 'package:flutter/material.dart';
class ItemsDescription extends StatelessWidget {
  const ItemsDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(Icons.circle, color: Colors.white, size: 10),
              SizedBox(width: 10.0),
              Text('Free', style: TextStyle(fontSize: 20, color: Colors.white)
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.circle, color: Color(0xff4A5660), size: 10),
              SizedBox(width: 10.0),
              Text('Reserved', style: TextStyle(fontSize: 20, color: Color(0xff4A5660))
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.circle, color: Colors.amber, size: 10),
              SizedBox(width: 10.0),
              Text('Selected',style: TextStyle( fontSize: 20, color: Colors.amber)
              ),
            ],
          ),
        ],
      ),
    );
  }
}