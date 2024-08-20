String formatCardNumber(String cardNumber) {
  final cardNumberbuffer = StringBuffer();
  for (var i = 0; i < cardNumber.length; i++) {
    if (i > 0 && i % 4 == 0) {
      cardNumberbuffer.write(" ");
    }
    cardNumberbuffer.write(cardNumber[i]);
  }
  return cardNumberbuffer.toString();
}
