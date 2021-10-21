// To parse this JSON data, do
//
//     final countryBuddy = countryBuddyFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<CountryBuddy> countryBuddyFromJson(String str) => List<CountryBuddy>.from(
    json.decode(str).map((x) => CountryBuddy.fromJson(x)));

String countryBuddyToJson(List<CountryBuddy> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryBuddy {
  CountryBuddy({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    required this.capital,
    required this.altSpellings,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.gini,
    required this.timezones,
    required this.nativeName,
    required this.numericCode,
    required this.flags,
    required this.currencies,
    required this.languages,
    required this.translations,
    required this.flag,
    required this.independent,
  });

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;

  int population;
  List<double> latlng;
  String demonym;
  int area;
  double gini;
  List<String> timezones;
  String nativeName;
  String numericCode;
  Flags flags;
  List<Currency> currencies;
  List<Language> languages;
  Translations translations;
  String flag;
  bool independent;

  factory CountryBuddy.fromJson(Map<String, dynamic> json) => CountryBuddy(
        name: json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        population: json["population"],
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
        demonym: json["demonym"],
        area: json["area"] == null ? null : json["area"],
        gini: json["gini"] == null ? null : json["gini"].toDouble(),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: Flags.fromJson(json["flags"]),
        currencies: List<Currency>.from(
            json["currencies"].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(
            json["languages"].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json["translations"]),
        flag: json["flag"],
        independent: json["independent"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": List<dynamic>.from(callingCodes.map((x) => x)),
        "capital": capital,
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "population": population,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "demonym": demonym,
        "area": area == null ? null : area,
        "gini": gini == null ? null : gini,
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags.toJson(),
        "currencies": List<dynamic>.from(currencies.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
        "translations": translations.toJson(),
        "flag": flag,

        "independent": independent,
      };
}

class Currency {
  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  String code;
  String name;
  String symbol;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
      };
}

class Flags {
  Flags({
    required this.svg,
    required this.png,
  });

  String svg;
  String png;

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        svg: json["svg"],
        png: json["png"],
      );

  Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
      };
}

class Language {
  Language({
    required this.iso6391,
    required this.iso6392,
    required this.name,
    required this.nativeName,
  });

  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        iso6391: json["iso639_1"] == null ? null : json["iso639_1"],
        iso6392: json["iso639_2"],
        name: json["name"],
        nativeName: json["nativeName"],
      );

  Map<String, dynamic> toJson() => {
        "iso639_1": iso6391 == null ? null : iso6391,
        "iso639_2": iso6392,
        "name": name,
        "nativeName": nativeName,
      };
}

enum Region { AFRICA }

final regionValues = EnumValues({"Africa": Region.AFRICA});

class RegionalBloc {
  RegionalBloc({
    required this.acronym,
    required this.name,
    required this.otherNames,
  });

  Acronym acronym;
  Name name;
  List<OtherName> otherNames;

  Map<String, dynamic> toJson() => {
        "acronym": acronymValues.reverse![acronym],
        "name": nameValues.reverse![name],
        "otherNames": List<dynamic>.from(
            otherNames.map((x) => otherNameValues.reverse![x])),
      };
}

enum Acronym { AU, AL }

final acronymValues = EnumValues({"AL": Acronym.AL, "AU": Acronym.AU});

enum Name { AFRICAN_UNION, ARAB_LEAGUE }

final nameValues = EnumValues(
    {"African Union": Name.AFRICAN_UNION, "Arab League": Name.ARAB_LEAGUE});

enum OtherName {
  EMPTY,
  UNION_AFRICAINE,
  UNIO_AFRICANA,
  UNIN_AFRICANA,
  UMOJA_WA_AFRIKA,
  OTHER_NAME,
  JMI_AT_AD_DUWAL_AL_ARABYAH,
  LEAGUE_OF_ARAB_STATES
}

final otherNameValues = EnumValues({
  "الاتحاد الأفريقي": OtherName.EMPTY,
  "Jāmiʻat ad-Duwal al-ʻArabīyah": OtherName.JMI_AT_AD_DUWAL_AL_ARABYAH,
  "League of Arab States": OtherName.LEAGUE_OF_ARAB_STATES,
  "جامعة الدول العربية": OtherName.OTHER_NAME,
  "Umoja wa Afrika": OtherName.UMOJA_WA_AFRIKA,
  "Unión Africana": OtherName.UNIN_AFRICANA,
  "Union africaine": OtherName.UNION_AFRICAINE,
  "União Africana": OtherName.UNIO_AFRICANA
});

enum Subregion {
  NORTHERN_AFRICA,
  MIDDLE_AFRICA,
  WESTERN_AFRICA,
  SOUTHERN_AFRICA,
  EASTERN_AFRICA
}

final subregionValues = EnumValues({
  "Eastern Africa": Subregion.EASTERN_AFRICA,
  "Middle Africa": Subregion.MIDDLE_AFRICA,
  "Northern Africa": Subregion.NORTHERN_AFRICA,
  "Southern Africa": Subregion.SOUTHERN_AFRICA,
  "Western Africa": Subregion.WESTERN_AFRICA
});

class Translations {
  Translations({
    required this.br,
    required this.pt,
    required this.nl,
    required this.hr,
    required this.fa,
    required this.de,
    required this.es,
    required this.fr,
    required this.ja,
    required this.it,
    required this.hu,
  });

  String br;
  String pt;
  String nl;
  String hr;
  String fa;
  String de;
  String es;
  String fr;
  String ja;
  String it;
  String hu;

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        br: json["br"],
        pt: json["pt"],
        nl: json["nl"],
        hr: json["hr"],
        fa: json["fa"],
        de: json["de"],
        es: json["es"],
        fr: json["fr"],
        ja: json["ja"],
        it: json["it"],
        hu: json["hu"],
      );

  Map<String, dynamic> toJson() => {
        "br": br,
        "pt": pt,
        "nl": nl,
        "hr": hr,
        "fa": fa,
        "de": de,
        "es": es,
        "fr": fr,
        "ja": ja,
        "it": it,
        "hu": hu,
      };
}

class EnumValues<T> {
 Map<String, T>? map ;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    //reverseMap ?? = map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
