import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/bloc/cinema_bloc.dart';
import 'package:movie_booking_app/models/data_time.dart';

class ItemTime extends StatelessWidget {
  final String time;
  const ItemTime({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cinemaBloc = BlocProvider.of<CinemaBloc>(context);

    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: InkWell(
          onTap: () => cinemaBloc.add(OnSelectedTimeEvent(time)),

            child: BlocBuilder<CinemaBloc, CinemaState>(
                builder: (context, state) =>
                    Container(
                     alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      decoration: BoxDecoration(
                          color: state.time == time ? Colors.amber : Color(0xff4D525A),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child:
                      Text( time, style: TextStyle(color: Colors.white, fontSize: 16)
                      ),
    ),
            ),
        ),

                      );
  }
}
