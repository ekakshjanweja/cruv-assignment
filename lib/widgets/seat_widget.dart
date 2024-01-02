import 'package:curv_assignment/models/seat_model.dart';
import 'package:curv_assignment/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeatWidget extends ConsumerStatefulWidget {
  final int seatIndex;
  final String seatType;
  const SeatWidget({
    super.key,
    required this.seatIndex,
    required this.seatType,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SeatWidgetState();
}

class _SeatWidgetState extends ConsumerState<SeatWidget> {
  SeatModel seat = SeatModel();

  @override
  void initState() {
    seat = SeatModel(
      seatIndex: widget.seatIndex,
      seatType: widget.seatType,
    );

    ref.read(seatsProvider).add(seat);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected = ref.read(selectedSeatsProvider).contains(seat);
    return GestureDetector(
      onTap: () {
        if (isSelected) {
          ref.read(selectedSeatsProvider).remove(seat);
          setState(() {
            isSelected = false;
          });
        } else {
          ref.read(selectedSeatsProvider).add(seat);
          setState(() {
            isSelected = true;
          });
        }
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.primaryContainer
              : Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.seatIndex.toString(),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: isSelected
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.seatType,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: isSelected
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
