import 'package:flutter/material.dart';
import 'package:movie_booking_app/models/movie.dart';
import 'package:movie_booking_app/models/trailers_model.dart';
import 'package:movie_booking_app/views/home_view_components/item_title.dart';
import 'package:movie_booking_app/views/home_view_components/item_trailers.dart';
import 'package:movie_booking_app/views/home_view_components/items_now_cinemas.dart';
import 'package:movie_booking_app/views/home_view_components/items_soon_movie.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21242C),
      appBar: AppBar(
        backgroundColor: Color(0xff21242C),
        leading: Icon(Icons.menu, color: Colors.white, size: 30),
        elevation: 0,
        actions: [
          Icon(Icons.search, size: 30),
          SizedBox(width: 10.0),
          Icon(Icons.notifications_rounded, size: 30),
          SizedBox(width: 15.0),
          //momken a4el el container dah

          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              image: DecorationImage(
              fit : BoxFit.contain,
              image: AssetImage('Assets/logo-white.png')
            )
          ),
          ),

          SizedBox(width: 15.0),


        ],
      ),

      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        children: [
          ItemTitle(title: 'Trailers'),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 200,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: TrailersMovie.listTrailers.length,
                  itemBuilder:(context, i)
              => ItemTrailers(trailers: TrailersMovie.listTrailers[i])
              ),
          ),
          SizedBox(height: 20.0),

          ItemTitle(title: 'Now cinema'),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: MovieModel.listMovie.length,
                itemBuilder:(context, i)
                => ItemsNowCinemas(movieModel: MovieModel.listMovie[i])
            ),
          ),
          SizedBox(height: 20.0),

          ItemTitle(title: 'Coming Soon'),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder:(context, i)
                => ItemsSoonMovie(movieModel: MovieModel.listMovie[i+2])
            ),
          ),
        ],
      ),
    );
  }
}
