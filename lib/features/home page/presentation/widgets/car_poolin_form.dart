import 'package:car_pooling/core/widgets/custom_map_divider.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_divider.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_input_form.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_swap_button.dart';
import 'package:flutter/material.dart';

class CarPoolinForm extends StatefulWidget {
  const CarPoolinForm({
    super.key,
  });

  @override
  State<CarPoolinForm> createState() => _CarPoolinFormState();
}

class _CarPoolinFormState extends State<CarPoolinForm> {
   final TextEditingController fromController =
      TextEditingController(text: 'Cairo');
  final TextEditingController toController =
      TextEditingController(text: 'Alex');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: Row(
        children: [
          const CustomMapDivider(
            color: Colors.white,
            borderColor: Color.fromARGB(255, 217, 242, 250),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomInputForm(
                labelValue: 'From',
                controller: fromController,
                onChanged: (value) {},
              ),
              const CustomDivider(),
              CustomInputForm(
                labelValue: 'To',
                controller: toController,
                onChanged: (value) {},
              ),
            ],
          ),
          CustomSwapButton(
            onPressed: () {
              setState(() {
              swap();
              });
            },
          ),
        ],
      ),
    );
  }

   void swap() {
    // Swap the text values in the controllers
    final temp = fromController.text;
    fromController.text = toController.text;
    toController.text = temp;
  }
}