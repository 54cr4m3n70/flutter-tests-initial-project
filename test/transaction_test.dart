import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return the value when create a transaction', () {
    final transaction = Transaction(
      '01',
      200,
      Contact(
        01,
        'Edilson',
        2001,
      ),
    );

    expect(transaction.value, 200);
  });
  test('Should show error when create transaction with  value less than zero',
      () {
    expect(
        () => Transaction(
              '01',
              0,
              Contact(
                01,
                'Edilson',
                2001,
              ),
            ),
        throwsAssertionError);
  });
}
