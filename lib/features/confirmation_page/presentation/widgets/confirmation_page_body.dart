import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmationPageBody extends StatelessWidget {
  const ConfirmationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .33,
                height: MediaQuery.of(context).size.width * .3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/okSign.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                child: const Column(
                  children: [
                    Text(
                      'Your order has been confirmed',
                      style: TextStyle(
                        fontSize: 15.5,
                        color: Color.fromARGB(185, 0, 0, 0),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'by the driver!',
                      style: TextStyle(
                          fontSize: 15.5, color: Color.fromARGB(185, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          CustomButton(
            child: 'Go Home',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.homePath);
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
