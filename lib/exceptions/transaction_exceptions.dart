import '../models/account.dart';

class SenderNotExistsException implements Exception {}

class ReceiverNotExistsException implements Exception {}

class InsufficientFundsException implements Exception {
  String message; // Mensagem amigável
  Account cause; // Objeto causador da exceção
  double amount; // Informações específicas
  double taxes; // Informações específicas

  InsufficientFundsException({
    this.message = "Fundos insuficientes para a transação.",
    required this.cause,
    required this.amount,
    required this.taxes,
  });
}
