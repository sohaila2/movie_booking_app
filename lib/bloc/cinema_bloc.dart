import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cinema_event.dart';
part 'cinema_state.dart';

class CinemaBloc extends Bloc<CinemaEvent, CinemaState> {
  CinemaBloc() : super(CinemaState()) {
    on<OnSelectedMovieEvent>(_onSelectedMovie);
    on<OnSelectedDateEvent>(_onSelectedDate);
    on<OnSelectedTimeEvent>(_onSelectedTime);
    on<OnSelectedSeatsEvent>(_onSelectedSeats);
  }
  List<String> seats = [];

  Future<void> _onSelectedDate(OnSelectedDateEvent event, Emitter<CinemaState> emit) async{
    emit (state.copyWith(date: event.date));
  }

  Future<void> _onSelectedTime(OnSelectedTimeEvent event, Emitter<CinemaState> emit) async{
    emit (state.copyWith(time: event.time));
  }

  Future<void> _onSelectedMovie(OnSelectedMovieEvent event, Emitter<CinemaState> emit) async{
    emit (state.copyWith(nameMovie: event.name, imageMovie: event.image));
  }

  Future<void> _onSelectedSeats(OnSelectedSeatsEvent event, Emitter<CinemaState> emit) async{
   if(seats.contains(event.selectedSeats)){
     seats.remove(event.selectedSeats);
     emit (state.copyWith(selectedSeats: seats));
   }
   else
     {
       seats.add(event.selectedSeats);
       emit (state.copyWith(selectedSeats: seats));
     }
  }
}
