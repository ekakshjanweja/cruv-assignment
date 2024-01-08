import 'package:curv_assignment/features/seat_booking/views/seat_display_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home Screen'),
              const SizedBox(height: 20),
              IconButton.filledTonal(
                onPressed: () {
                  Routemaster.of(context).push(SeatDisplayScreen.routeName);
                },
                icon: const Text('Book a seat'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
