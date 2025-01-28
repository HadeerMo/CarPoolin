import 'package:car_pooling/constants.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_clickable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChoseDateWidget extends StatefulWidget {
  const ChoseDateWidget({
    super.key,
  });

  @override
  State<ChoseDateWidget> createState() => _ChoseDateWidgetState();
}

class _ChoseDateWidgetState extends State<ChoseDateWidget> {
  Map<String, Color> dateColors = {
    'todayColor': kappMainColor,
    'tomorrowColor': kMutedColor,
    'otherDateColor': kMutedColor,
  };
  //  TextEditingController _dateController = TextEditingController();
  DateTime initDate = DateTime.now();
  String otherDate = 'Other Date';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomClickableTextWidget(
          text: 'Today',
          color: dateColors['todayColor']!,
          onTap: () {
            choseDate('today');
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CustomClickableTextWidget(
          text: 'Tomorrow',
          color: dateColors['tomorrowColor']!,
          onTap: () {
            choseDate('tomorrow');
          },
        ),
        const SizedBox(
          width: 15,
        ),
        CustomClickableTextWidget(
          text: otherDate,
          color: dateColors['otherDateColor']!,
          onTap: () async {
            choseDate('otherDate');
            await changeDate(context);
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.solidCalendar,
            size: 18,
          ),
          color: dateColors['otherDateColor']!,
          onPressed: () async {
            choseDate('otherDate');
            await changeDate(context);
          },
        )
      ],
    );
  }

  Future<void> changeDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      otherDate = "${selectedDate.toLocal()}".split(' ')[0];
      initDate = selectedDate;
    }
    setState(() {});
  }

  void choseDate(String date) {
    dateColors.forEach((key, value) {
      dateColors[key] = kMutedColor;
    });
    if (dateColors.containsKey('${date}Color')) {
      dateColors['${date}Color'] = kappMainColor;
    }
    setState(() {});
  }
}
