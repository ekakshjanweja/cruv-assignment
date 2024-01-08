import 'package:curv_assignment/widgets/custom_clip.dart';
import 'package:curv_assignment/widgets/seat_widget.dart';
import 'package:flutter/material.dart';

class BerthWidget extends StatelessWidget {
  const BerthWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: ClipTop(),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          SeatWidget(
                            seatIndex: 1 + index * 8,
                            seatType: "Upper",
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            seatIndex: 2 + index * 8,
                            seatType: "Middle",
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            seatIndex: 3 + index * 8,
                            seatType: "Lower",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipPath(
                      clipper: ClipTop(),
                      child: Container(
                        height: 60,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: SeatWidget(
                        seatIndex: 7 + index * 8,
                        seatType: "Upper",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipPath(
                      clipper: ClipBottom(),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          SeatWidget(
                            seatIndex: 4 + index * 8,
                            seatType: "Upper",
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            seatIndex: 5 + index * 8,
                            seatType: "Middle",
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SeatWidget(
                            seatIndex: 6 + index * 8,
                            seatType: "Lower",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipPath(
                      clipper: ClipBottom(),
                      child: Container(
                        height: 60,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SeatWidget(
                        seatIndex: 8 + index * 8,
                        seatType: "Lower",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 2),
      ],
    );
  }
}
