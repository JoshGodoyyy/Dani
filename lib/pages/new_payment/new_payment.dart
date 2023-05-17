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
                  isSelected: isPaymentSelected,
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
                  isSelected: isReceiptSelected,
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
            ),
            BuildTextFormField(
              title: 'Descrição',
              prefix: null,
              controller: descriptionController,
              lines: 5,
            ),
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
                      ])),
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {},
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
    );
  }
}
