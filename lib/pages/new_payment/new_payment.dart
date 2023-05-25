import 'package:dani/app/core/ui/styles/colors_app.dart';
import 'package:dani/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../app/core/ui/widgets/build_text_field.dart';
import '../../app/core/ui/widgets/type_payment_widget.dart';

class NewPayment extends StatefulWidget {
  const NewPayment({super.key});

  @override
  State<NewPayment> createState() => _NewPaymentState();
}

class _NewPaymentState extends State<NewPayment> {
  TextEditingController valueController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  bool isReceiptSelected = false;
  bool isPaymentSelected = false;
  bool isFixedSelected = false;
  bool isVariableSelected = false;

  String _day = DateTime.now().day.toString();
  String _month = DateTime.now().month.toString();
  String _year = DateTime.now().year.toString();

  String date() {
    return '${_day.padLeft(2, '0')}/${_month.padLeft(2, '0')}/$_year';
  }

  void showCalendar() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    ).then((value) {
      setState(() {
        _day = value!.day.toString();
        _month = value.month.toString();
        _year = value.year.toString();
        date();
      });
    });
  }

  void clearAll() {
    _day = DateTime.now().day.toString();
    _month = DateTime.now().month.toString();
    _year = DateTime.now().year.toString();
    date();

    isReceiptSelected = false;
    isPaymentSelected = false;
    isFixedSelected = false;
    isVariableSelected = false;

    valueController.clear();
    descriptionController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Entrada de dados',
          style: TextStyles.instance.textRegular,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Tipo',
                  style: TextStyles.instance.textRegular.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TypePaymentWidget(
                    label: 'Entrada',
                    onTap: () {
                      setState(() {
                        isReceiptSelected = true;
                        isPaymentSelected = false;
                      });
                    },
                    isSelected: isReceiptSelected,
                  ),
                  const SizedBox(width: 16),
                  TypePaymentWidget(
                    label: 'Saída',
                    onTap: () {
                      setState(() {
                        isPaymentSelected = true;
                        isReceiptSelected = false;
                      });
                    },
                    isSelected: isPaymentSelected,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              BuildTextFormField(
                title: 'Valor',
                prefix: Text(
                  'R\$',
                  style: TextStyles.instance.textRegular,
                ),
                controller: valueController,
                lines: 1,
                keyboardType: TextInputType.number,
              ),
              BuildTextFormField(
                title: 'Descrição',
                prefix: null,
                controller: descriptionController,
                lines: 5,
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Data',
                  style: TextStyles.instance.textRegular.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => showCalendar(),
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: ColorsApp.instance.primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          date(),
                          style: TextStyles.instance.textRegular.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Gasto',
                  style: TextStyles.instance.textRegular.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  TypePaymentWidget(
                    label: 'Fixo',
                    onTap: () {
                      setState(() {
                        isFixedSelected = true;
                        isVariableSelected = false;
                      });
                    },
                    isSelected: isFixedSelected,
                  ),
                  const SizedBox(width: 16),
                  TypePaymentWidget(
                    label: 'Variável',
                    onTap: () {
                      setState(() {
                        isFixedSelected = false;
                        isVariableSelected = true;
                      });
                    },
                    isSelected: isVariableSelected,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorsApp.instance.startColor,
                      ColorsApp.instance.endColor,
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      clearAll();
                    });
                    //TODO: Ação ao clicar em Adicionar
                  },
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Adicionar',
                      textAlign: TextAlign.center,
                      style: TextStyles.instance.textRegular.copyWith(
                        fontSize: 16,
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
