import 'package:curv_assignment/features/seat_booking/views/confirmation_screen.dart';
import 'package:curv_assignment/features/seat_booking/views/seat_display_screen.dart';
import 'package:curv_assignment/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final route = RouteMap(
  routes: {
    HomeScreen.routeName: (_) => const MaterialPage(child: HomeScreen()),
    SeatDisplayScreen.routeName: (_) => const MaterialPage(
          child: SeatDisplayScreen(),
        ),
    ConfirmationScreen.routeName: (_) => const MaterialPage(
          child: ConfirmationScreen(),
        ),
  },
);
