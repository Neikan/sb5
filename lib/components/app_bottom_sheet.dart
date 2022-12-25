// Flutter imports:
import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Colors.green,
                  ),
                  Text(' Total'),
                ],
              ),
              Text('200 \$'),
            ],
          ),
        ),
        ElevatedButton(
          child: Text('Pay'),
          onPressed: () {},
        )
      ],
    );
  }
}
