import 'package:curv_assignment/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfirmationScreen extends ConsumerWidget {
  static const routeName = '/confirmation-screen';

  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;

    final selectedSeats = ref.watch(selectedSeatsProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: currentWidth * 0.08, vertical: currentHeight * 0.08),
          child: Column(
            children: [
              Text(
                'Selected Seats',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: currentHeight * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: selectedSeats.length,
                  itemBuilder: (context, index) => SizedBox(
                    height: currentHeight * 0.15,
                    child: Container(
                      margin: EdgeInsets.only(bottom: currentHeight * 0.02),
                      padding: EdgeInsets.all(currentHeight * 0.02),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Seat: ${selectedSeats[index].seatIndex}',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text('Berth: ${selectedSeats[index].seatType!}'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Price',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              const Text('1600'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
