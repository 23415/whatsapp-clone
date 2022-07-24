import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function newtxt;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  void submit() {
    final Title = titlecontroller.text;
    final amount = double.parse(amountcontroller.text);
    if (Title.isEmpty || amount <= 0) {
      return;
    }

    newtxt(
      Title,
      amount,
    );
  }

  NewTransaction(this.newtxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            TextField(
              controller: titlecontroller,
              onSubmitted: (_) => submit(),
              //onChanged: (value) => titleinput = value,
              decoration: InputDecoration(
                labelText: "title",
              ),
            ),
            TextField(
              onSubmitted: (_) => submit(),
              controller: amountcontroller,
              //onChanged: (value) => amountinput = value,
              decoration: InputDecoration(
                labelText: "amount",
              ),
              keyboardType: TextInputType.number,
            ),
            TextButton(
              onPressed: () => submit,
              child: Text(
                'Add Transaction',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 14, 45)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
