import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/Helpers/paint_chair.dart';
import 'package:movie_booking_app/bloc/cinema_bloc.dart';
class SeatsRow extends StatelessWidget {
  final int numSeats;
  final List<int> freeSeats;
  final String rowseats;

  const SeatsRow({Key? key, required this.numSeats,
    required this.freeSeats,
    required this.rowseats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cinemaBloc = BlocProvider.of<CinemaBloc>(context);
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(numSeats, (i) {
            if(freeSeats.contains(i + 1)){
              return  InkWell(
              onTap: () => cinemaBloc.add(OnSelectedSeatsEvent('$rowseats${i+1}')),
            child: BlocBuilder<CinemaBloc, CinemaState>(
            builder: (_, state) =>
            PaintChair(
            color: state.selectedSeats.contains('$rowseats${i+1}') ? Colors.amber : Colors.white
            )
            )
            );
            }
            return PaintChair();
    }
            ),
    ),
    );

  }
}
