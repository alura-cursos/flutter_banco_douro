import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/models/account.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';

class AccountWidget extends StatelessWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColor.lightOrange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${account.name} ${account.lastName}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("ID: ${account.id.substring(0, min(account.id.length, 5))}"),
              Text("Saldo: ${account.balance.toStringAsFixed(2)}"),
              Text("Tipo: ${account.accountType ?? "Sem tipo definido."}"),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
