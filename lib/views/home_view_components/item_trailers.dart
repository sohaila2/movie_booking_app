import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_booking_app/models/trailers_model.dart';

class ItemTrailers extends StatelessWidget {
  final TrailersMovie trailers;
  const ItemTrailers({Key? key, required this.trailers
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(
        children: [
          Container(
           width: 300,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(trailers.image)
            )
        ),
      ),
        Container(
          width: 300,
          child: Center(
          child: ClipRRect(

            borderRadius: BorderRadius.circular(50.0),
            child: BackdropFilter(
    filter: ImageFilter.blur(
    sigmaX: 10.0,
    sigmaY: 10.0,
    ),
    child: Container(
    padding: EdgeInsets.all(15),
    color: Colors.white.withOpacity(0.3),
    child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 45,),
    ),
        ),
        )
      ),
        )
        ],
      ),
    );
  }
}
