import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/bloc/cinema_bloc.dart';
class DetailsPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cinemabloc = BlocProvider.of<CinemaBloc>(context);

    return Scaffold(
      backgroundColor: Color(0xff21242C),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(padding: const EdgeInsets.all(30.0),
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: [
                Container(
                height: size.height * .45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                        image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(cinemabloc.state.imageMovie)
                    )
                ),
                ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('DATE',style: TextStyle( color: Colors.grey, fontSize: 16),
                            ),
                            Text(cinemabloc.state.date),
                          ],
                        ),
                        Column(
                          children: [
                            Text('TICKETS', style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Text('${cinemabloc.state.selectedSeats.length}'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('TIME', style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Text(cinemabloc.state.time),
                          ],
                        ),
                        Column(
                          children: [
                            Text('SEATS', style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Row(
                              children: List.generate(cinemabloc.state.selectedSeats.length, (i){
                                return Text('${cinemabloc.state.selectedSeats[i]} ');

                              }),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(31, (index) => Text( '- ', style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: Image(
                        image: AssetImage('Assets/qr-code-github-frave.png')
                    ),
                  )

                ],
              ),
            ),
            ),

            Positioned(
                top: size.height * .695,
                left: 15,
                child: Icon(Icons.circle, color: Color(0xff21242C))
            ),

            Positioned(
                top: size.height * .695,
                right: 15,
                child: Icon(Icons.circle, color: Color(0xff21242C))
            ),

          ],
        ),
      ),
    );
  }
}