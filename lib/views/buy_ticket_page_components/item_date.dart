import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/bloc/cinema_bloc.dart';
import 'package:movie_booking_app/views/buy_ticket_page_components/BuyTicketPage.dart';
import 'package:movie_booking_app/models/data_time.dart';


class ItemDate extends StatelessWidget {
  final DateTimeModel date;
  const ItemDate({Key? key,required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cinemaBloc = BlocProvider.of<CinemaBloc>(context);

    return InkWell(
         onTap: () => cinemaBloc.add( OnSelectedDateEvent(date.number)),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: BlocBuilder<CinemaBloc, CinemaState>(
          builder: (context, state) =>
              Container(
                height: 100,
                width: 75,
                decoration: BoxDecoration(
                  color: state.date == date.number ? Colors.amber : Color(0xff4A5660),
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, color: Color(0xff21242C).withOpacity(.8), size: 12),
                    SizedBox(height: 10.0),
                    Text(date.day, style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(height: 10.0),
                    Text(date.number, style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              )
        ),
        
      ),
    );
  }
}
