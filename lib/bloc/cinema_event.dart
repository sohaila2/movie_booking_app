part of 'cinema_bloc.dart';

@immutable
abstract class CinemaEvent {}

class OnSelectedMovieEvent extends CinemaEvent{

  final String name;
  final String image;

  OnSelectedMovieEvent(this.name, this.image);

}

class OnSelectedDateEvent extends CinemaEvent{

  final String date;


  OnSelectedDateEvent(this.date);

}

class OnSelectedTimeEvent extends CinemaEvent{

  final String time;

  OnSelectedTimeEvent(this.time);

}

class OnSelectedSeatsEvent extends CinemaEvent{

  final String selectedSeats;

  OnSelectedSeatsEvent(this.selectedSeats);

}