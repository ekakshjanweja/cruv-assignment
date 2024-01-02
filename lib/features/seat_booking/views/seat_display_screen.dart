import 'package:curv_assignment/features/seat_booking/views/confirmation_screen.dart';
import 'package:curv_assignment/widgets/berth_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class SeatDisplayScreen extends ConsumerStatefulWidget {
  static const routeName = '/seat-display-screen';

  const SeatDisplayScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeatDisplayScreenState();
}

class _SeatDisplayScreenState extends ConsumerState<SeatDisplayScreen> {
  TextEditingController searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: currentWidth * 0.08, vertical: currentHeight * 0.08),
          child: Column(
            children: [
              Text(
                'Seat finder',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              TextFormField(
                controller: searchController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  hintText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(200),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
                onFieldSubmitted: (value) {
                  int desiredSeatIndex = (int.parse(value) ~/ 8) + 1;

                  _scrollController.animateTo(
                    desiredSeatIndex * 100,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return BerthWidget(index: index);
                  },
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  Routemaster.of(context).push(ConfirmationScreen.routeName);
                },
                child: const Text('Confirm Seats'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
