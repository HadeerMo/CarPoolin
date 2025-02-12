import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmationPart extends StatelessWidget {
  const ConfirmationPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Column(
        children: [
          CustomButton(
            child: 'Order Now',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.confirmationPagePath);
            },
          ),
          const SizedBox(height: 17),
          SizedBox(
            width: MediaQuery.of(context).size.width * .73,
            child: const Opacity(
              opacity: .3,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'By clicking on "Order Now" button I agree with Terms and Policies of using Carpoolin.',
                  softWrap: true,
                  style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold,height: 1.7),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
