import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_booking_app/Helpers/painter.dart';
import 'package:movie_booking_app/models/arm_chairs.dart';
import 'package:movie_booking_app/models/data_time.dart';
import 'package:movie_booking_app/views/buy_ticket_page_components/item_date.dart';
import '../details_payment.dart';
import 'item_date.dart';
import 'item_description.dart';
import 'item_time.dart';
import 'package:movie_booking_app/widgets/seats_row.dart';

class BuyTicketPage extends StatelessWidget {
  final String titleMovie;
  final String imageMovie;

  const BuyTicketPage({Key? key,
    required this.titleMovie,
    required this.imageMovie
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Color(0xff21242C)
          ),

          Container(
            height: size.height * .7,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageMovie)
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Color(0xff21242C),
                    Color(0xff21242C).withOpacity(.9),
                    Color(0xff21242C).withOpacity(.1),
                  ]
                ),
            ),
    child: ClipRRect(
    child: BackdropFilter(
    filter: ImageFilter.blur(
    sigmaX: 20.0,
    sigmaY: 20.0,
    ),
    child: Container(
    color: Color(0xff21242C).withOpacity(0.1),
    ),
          ),
    ),
            ),
          ),

    Positioned(
      top: 30,
      child: Container(
        width: size.width,
        child: IconButton(
            onPressed: () => Navigator.pop(context),
       icon: Row(
          children: [
            Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white),
           SizedBox(width: 20.0),
      Text(titleMovie, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
      ),
      ],
      )
      ),
    )
    ),


    Positioned(
    top: 100,
    child:
    Container(
      child: Column(
        children:[
          Container(
        padding: EdgeInsets.only(left:  20.0),
        height: 90,
        width: size.width,
        child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: DateTimeModel.listDate.length,
        itemBuilder:(_, i)
        => ItemDate(date: DateTimeModel.listDate[i])
        ),
        ),
      SizedBox(height: 30.0),
      Container(
        padding: EdgeInsets.only(left:  20.0),
        height: 40,
        width: size.width,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: DateTimeModel.listTime.length,
            itemBuilder:(_, i)
            => ItemTime(time: DateTimeModel.listTime[i])
        ),
      ),
      SizedBox(height: 15.0),
      PainterScreenMovie(),
          Text( 'Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
      SizedBox(height: 40.0),
          Container(
              height: 240,
              width: size.width,
              child: Column(
                children: List.generate(ArmChairsModel.listChairs.length, (i) =>
                    SeatsRow(
                      numSeats: ArmChairsModel.listChairs[i].seats,
                      freeSeats: ArmChairsModel.listChairs[i].freeSeats,
                      rowseats: ArmChairsModel.listChairs[i].rowSeats,
                    )
                ),
              )
          ),
          SizedBox(height: 10.0),
          ItemsDescription(size: size)
          ],
      ),
      )
    ),
    Positioned(
    left: 60,
    right: 60,
    bottom: 20,
    child: InkWell(

    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_) => DetailsPaymentPage())),
   child: Container(
    alignment: Alignment.center,
    height: 55,
    decoration: BoxDecoration(
    color: Colors.amber,
    borderRadius: BorderRadius.circular(8.0)
    ),
    child:  Text('Buy Ticket \$ 55.0', style: TextStyle(fontWeight: FontWeight.bold),
   ),
    ),
    ),

    ),
      ],
      ),
    );
  }
}