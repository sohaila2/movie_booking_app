import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_booking_app/models/movie.dart';
import 'package:page_indicator/page_indicator.dart';
class ItemsSoonMovie extends StatelessWidget {
  final MovieModel movieModel;
  const ItemsSoonMovie({Key? key, required this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 210,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(movieModel.image)
                    )
                ),
              ),
            SizedBox(height: 15.0),
            SizedBox(width: 160),

                Text( movieModel.name, style:TextStyle(color: Colors.white),
            ),
            SizedBox(height: 5.0),
            RatingBar.builder(
                itemSize: 22,
                initialRating: movieModel.qualification,
                itemBuilder: (_,i) => Icon(Icons.star_rate_rounded,color: Colors.amber),
                onRatingUpdate: (_){}
            )
          ],
        ),
      ),

    );
  }
}
