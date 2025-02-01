import 'package:car_screen/widget/custom_card.dart';
import 'package:car_screen/widget/custom_text_filed.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextFormField(
              prefixIcon: Icon(Icons.search),
              hintText: 'Tachometer',
            ),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.builder(
                itemCount:
                    4, // Since each row contains two items, the count is halved
                itemBuilder: (context, index) {
                  int oddImageIndex = (index * 2) + 1;
                  int evenImageIndex = (index * 2) + 2;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        CustomCard(
                          image: 'assets/$oddImageIndex.jpg',
                        ),
                        const SizedBox(width: 16),
                        CustomCard(
                          image: 'assets/$evenImageIndex.jpg',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
