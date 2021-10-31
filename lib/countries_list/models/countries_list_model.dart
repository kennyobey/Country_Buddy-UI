List<CountryBuddy> countryBuddyFromJson(dynamic data) {
  List<CountryBuddy> list = [];
  try {
    if (data == null) return [];

    data.forEach((value) {
      list.add(CountryBuddy.fromJson(value));
    });
  } catch (e) {
    print('countryBuddyFromJson: $e');
  }
  return list;
}

class CountryBuddy {
  Name? name;
  String? cca2;
  String? cca3;
  String? cioc;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<dynamic>? capital;
  List<dynamic>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<double>? latlng;
  bool? landlocked;
  List<dynamic>? borders;
  dynamic area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  dynamic population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<dynamic>? timezones;
  List<dynamic>? continents;
  Flags? flags;
  Flags? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;

  CountryBuddy({
    this.name,
    this.cca2,
    this.cca3,
    this.cioc,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
  });

  CountryBuddy.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    cca2 = json['cca2'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ? new Idd.fromJson(json['idd']) : null;
    capital = json['capital'];
    altSpellings = json['altSpellings'];
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null;
    translations = json['translations'] != null
        ? new Translations.fromJson(json['translations'])
        : null;
    latlng = latlng != null ? json['latlng'].cast<double>() : null;
    landlocked = json['landlocked'];
    borders = json['borders'];
    area = json['area'];
    demonyms = json['demonyms'] != null
        ? new Demonyms.fromJson(json['demonyms'])
        : null;
    flag = json['flag'];
    maps = json['maps'] != null ? new Maps.fromJson(json['maps']) : null;
    population = json['population'];
    gini = json['gini'] != null ? new Gini.fromJson(json['gini']) : null;
    fifa = json['fifa'];
    car = json['car'] != null ? new Car.fromJson(json['car']) : null;
    timezones = json['timezones'];
    continents = json['continents'];
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? new Flags.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? new CapitalInfo.fromJson(json['capitalInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['cca2'] = this.cca2;
    data['cca3'] = this.cca3;
    data['cioc'] = this.cioc;
    data['status'] = this.status;
    data['unMember'] = this.unMember;
    if (this.currencies != null) {
      data['currencies'] = this.currencies!.toJson();
    }
    if (this.idd != null) {
      data['idd'] = this.idd!.toJson();
    }
    data['capital'] = this.capital;
    data['altSpellings'] = this.altSpellings;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    if (this.languages != null) {
      data['languages'] = this.languages!.toJson();
    }
    if (this.translations != null) {
      data['translations'] = this.translations!.toJson();
    }
    data['latlng'] = this.latlng;
    data['landlocked'] = this.landlocked;
    data['borders'] = this.borders;
    data['area'] = this.area;
    if (this.demonyms != null) {
      data['demonyms'] = this.demonyms!.toJson();
    }
    data['flag'] = this.flag;
    if (this.maps != null) {
      data['maps'] = this.maps!.toJson();
    }
    data['population'] = this.population;
    if (this.gini != null) {
      data['gini'] = this.gini!.toJson();
    }
    data['fifa'] = this.fifa;
    if (this.car != null) {
      data['car'] = this.car!.toJson();
    }
    data['timezones'] = this.timezones;
    data['continents'] = this.continents;
    if (this.flags != null) {
      data['flags'] = this.flags!.toJson();
    }
    if (this.coatOfArms != null) {
      data['coatOfArms'] = this.coatOfArms!.toJson();
    }
    data['startOfWeek'] = this.startOfWeek;
    if (this.capitalInfo != null) {
      data['capitalInfo'] = this.capitalInfo!.toJson();
    }
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? new NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    if (this.nativeName != null) {
      data['nativeName'] = this.nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Sqi? sqi;
  Sqi? srp;

  NativeName({this.sqi, this.srp});

  NativeName.fromJson(Map<String, dynamic> json) {
    sqi = json['sqi'] != null ? new Sqi.fromJson(json['sqi']) : null;
    srp = json['srp'] != null ? new Sqi.fromJson(json['srp']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sqi != null) {
      data['sqi'] = this.sqi!.toJson();
    }
    if (this.srp != null) {
      data['srp'] = this.srp!.toJson();
    }
    return data;
  }
}

class Sqi {
  String? official;
  String? common;

  Sqi({this.official, this.common});

  Sqi.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['official'] = this.official;
    data['common'] = this.common;
    return data;
  }
}

class Currencies {
  EUR? eUR;

  Currencies({this.eUR});

  Currencies.fromJson(Map<String, dynamic> json) {
    eUR = json['EUR'] != null ? new EUR.fromJson(json['EUR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eUR != null) {
      data['EUR'] = this.eUR!.toJson();
    }
    return data;
  }
}

class EUR {
  String? name;
  String? symbol;

  EUR({this.name, this.symbol});

  EUR.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<dynamic>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['root'] = this.root;
    data['suffixes'] = this.suffixes;
    return data;
  }
}

class Languages {
  String? sqi;
  String? srp;

  Languages({this.sqi, this.srp});

  Languages.fromJson(Map<String, dynamic> json) {
    sqi = json['sqi'];
    srp = json['srp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sqi'] = this.sqi;
    data['srp'] = this.srp;
    return data;
  }
}

class Translations {
  Sqi? ara;
  Sqi? ces;
  Sqi? cym;
  Sqi? deu;
  Sqi? est;
  Sqi? fin;
  Eng? fra;
  Sqi? hrv;
  Sqi? hun;
  Sqi? ita;
  Sqi? kor;
  Sqi? nld;
  Sqi? per;
  Sqi? pol;
  Sqi? por;
  Sqi? rus;
  Sqi? slk;
  Sqi? spa;
  Sqi? swe;
  Sqi? urd;
  Sqi? zho;

  Translations(
      {this.ara,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.swe,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? new Sqi.fromJson(json['ara']) : null;
    ces = json['ces'] != null ? new Sqi.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? new Sqi.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? new Sqi.fromJson(json['deu']) : null;
    est = json['est'] != null ? new Sqi.fromJson(json['est']) : null;
    fin = json['fin'] != null ? new Sqi.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? new Sqi.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? new Sqi.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? new Sqi.fromJson(json['ita']) : null;
    kor = json['kor'] != null ? new Sqi.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? new Sqi.fromJson(json['nld']) : null;
    per = json['per'] != null ? new Sqi.fromJson(json['per']) : null;
    pol = json['pol'] != null ? new Sqi.fromJson(json['pol']) : null;
    por = json['por'] != null ? new Sqi.fromJson(json['por']) : null;
    rus = json['rus'] != null ? new Sqi.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? new Sqi.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? new Sqi.fromJson(json['spa']) : null;
    swe = json['swe'] != null ? new Sqi.fromJson(json['swe']) : null;
    urd = json['urd'] != null ? new Sqi.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? new Sqi.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ara != null) {
      data['ara'] = this.ara!.toJson();
    }
    if (this.ces != null) {
      data['ces'] = this.ces!.toJson();
    }
    if (this.cym != null) {
      data['cym'] = this.cym!.toJson();
    }
    if (this.deu != null) {
      data['deu'] = this.deu!.toJson();
    }
    if (this.est != null) {
      data['est'] = this.est!.toJson();
    }
    if (this.fin != null) {
      data['fin'] = this.fin!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    if (this.hrv != null) {
      data['hrv'] = this.hrv!.toJson();
    }
    if (this.hun != null) {
      data['hun'] = this.hun!.toJson();
    }
    if (this.ita != null) {
      data['ita'] = this.ita!.toJson();
    }
    if (this.kor != null) {
      data['kor'] = this.kor!.toJson();
    }
    if (this.nld != null) {
      data['nld'] = this.nld!.toJson();
    }
    if (this.per != null) {
      data['per'] = this.per!.toJson();
    }
    if (this.pol != null) {
      data['pol'] = this.pol!.toJson();
    }
    if (this.por != null) {
      data['por'] = this.por!.toJson();
    }
    if (this.rus != null) {
      data['rus'] = this.rus!.toJson();
    }
    if (this.slk != null) {
      data['slk'] = this.slk!.toJson();
    }
    if (this.spa != null) {
      data['spa'] = this.spa!.toJson();
    }
    if (this.swe != null) {
      data['swe'] = this.swe!.toJson();
    }
    if (this.urd != null) {
      data['urd'] = this.urd!.toJson();
    }
    if (this.zho != null) {
      data['zho'] = this.zho!.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({this.f, this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['m'] = this.m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['googleMaps'] = this.googleMaps;
    data['openStreetMaps'] = this.openStreetMaps;
    return data;
  }
}

class Gini {
  dynamic i2017;

  Gini({this.i2017});

  Gini.fromJson(Map<String, dynamic> json) {
    i2017 = json['2017'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2017'] = this.i2017;
    return data;
  }
}

class Car {
  List<dynamic>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    signs = json['signs'];
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signs'] = this.signs;
    data['side'] = this.side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;

  Flags({this.png, this.svg});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    return data;
  }
}

class CapitalInfo {
  List<dynamic>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    latlng = latlng != null ? json['latlng'].cast<double>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latlng'] = this.latlng;
    return data;
  }
}
