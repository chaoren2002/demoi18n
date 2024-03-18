import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageUniversel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final num montant = 25.0;

    final String defaultLocale = Platform.localeName;
    var localeFormat = NumberFormat.simpleCurrency(
      locale: Localizations.localeOf(context).toLanguageTag(),
    );

    return Scaffold(
      appBar: AppBar(title: Text("Mon application")),
      body: Column(
        children: [
          Text(
              "Cette appareil utilise : ${Localizations.localeOf(context).toLanguageTag()}"),
          Text("Local from the Platform is ${defaultLocale}"),
          Text("Voici un texte qui est hardcodé"),
          Text("Search"), // Autre Search Hardcodé
          Text(MaterialLocalizations.of(context).searchFieldLabel),
          Text(
              "Un achat de ${montant}${localeFormat.currencySymbol} en ${localeFormat.currencyName}"),
          Text("Il est ${DateTime.now()}"),
          Text(
              "Il est ${DateFormat('yyyy-MM-dd kk:mm').format(DateTime.now())}"),
          Text("Il est ${DateFormat('EEE, M/d/yyyy').format(DateTime.now())}"),
        ],
      ),
    );
  }
}
