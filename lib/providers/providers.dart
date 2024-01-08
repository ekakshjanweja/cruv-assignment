import 'package:curv_assignment/models/seat_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seatsProvider = StateProvider<List<SeatModel>>((ref) => []);

final selectedSeatsProvider = StateProvider<List<SeatModel>>((ref) => []);
