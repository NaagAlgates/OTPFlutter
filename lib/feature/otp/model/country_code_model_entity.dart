/// name : "India"
/// topLevelDomain : [".in"]
/// alpha2Code : "IN"
/// alpha3Code : "IND"
/// callingCodes : ["91"]
/// capital : "New Delhi"
/// altSpellings : ["IN","Bhārat","Republic of India","Bharat Ganrajya"]
/// region : "Asia"
/// subregion : "Southern Asia"
/// population : 1295210000
/// latlng : [20.0,77.0]
/// demonym : "Indian"
/// area : 3287590.0
/// gini : 33.4
/// timezones : ["UTC+05:30"]
/// borders : ["AFG","BGD","BTN","MMR","CHN","NPL","PAK","LKA"]
/// nativeName : "भारत"
/// numericCode : "356"
/// currencies : [{"code":"INR","name":"Indian rupee","symbol":"₹"}]
/// languages : [{"iso639_1":"hi","iso639_2":"hin","name":"Hindi","nativeName":"हिन्दी"},{"iso639_1":"en","iso639_2":"eng","name":"English","nativeName":"English"}]
/// translations : {"de":"Indien","es":"India","fr":"Inde","ja":"インド","it":"India","br":"Índia","pt":"Índia","nl":"India","hr":"Indija","fa":"هند"}
/// flag : "https://restcountries.eu/data/ind.svg"
/// regionalBlocs : [{"acronym":"SAARC","name":"South Asian Association for Regional Cooperation","otherAcronyms":[],"otherNames":[]}]
/// cioc : "IND"

class CountryCodeModelEntity {
  String _name;
  List<String> _topLevelDomain;
  String _alpha2Code;
  String _alpha3Code;
  List<String> _callingCodes;
  String _capital;
  List<String> _altSpellings;
  String _region;
  String _subregion;
  int _population;
  List<double> _latlng;
  String _demonym;
  double _area;
  double _gini;
  List<String> _timezones;
  List<String> _borders;
  String _nativeName;
  String _numericCode;
  List<Currencies> _currencies;
  List<Languages> _languages;
  Translations _translations;
  String _flag;
  List<RegionalBlocs> _regionalBlocs;
  String _cioc;

  String get name => _name;
  List<String> get topLevelDomain => _topLevelDomain;
  String get alpha2Code => _alpha2Code;
  String get alpha3Code => _alpha3Code;
  List<String> get callingCodes => _callingCodes;
  String get capital => _capital;
  List<String> get altSpellings => _altSpellings;
  String get region => _region;
  String get subregion => _subregion;
  int get population => _population;
  List<double> get latlng => _latlng;
  String get demonym => _demonym;
  double get area => _area;
  double get gini => _gini;
  List<String> get timezones => _timezones;
  List<String> get borders => _borders;
  String get nativeName => _nativeName;
  String get numericCode => _numericCode;
  List<Currencies> get currencies => _currencies;
  List<Languages> get languages => _languages;
  Translations get translations => _translations;
  String get flag => _flag;
  List<RegionalBlocs> get regionalBlocs => _regionalBlocs;
  String get cioc => _cioc;

  CountryCodeModelEntity({
      String name, 
      List<String> topLevelDomain, 
      String alpha2Code, 
      String alpha3Code, 
      List<String> callingCodes, 
      String capital, 
      List<String> altSpellings, 
      String region, 
      String subregion, 
      int population, 
      List<double> latlng, 
      String demonym, 
      double area, 
      double gini, 
      List<String> timezones, 
      List<String> borders, 
      String nativeName, 
      String numericCode, 
      List<Currencies> currencies, 
      List<Languages> languages, 
      Translations translations, 
      String flag, 
      List<RegionalBlocs> regionalBlocs, 
      String cioc}){
    _name = name;
    _topLevelDomain = topLevelDomain;
    _alpha2Code = alpha2Code;
    _alpha3Code = alpha3Code;
    _callingCodes = callingCodes;
    _capital = capital;
    _altSpellings = altSpellings;
    _region = region;
    _subregion = subregion;
    _population = population;
    _latlng = latlng;
    _demonym = demonym;
    _area = area;
    _gini = gini;
    _timezones = timezones;
    _borders = borders;
    _nativeName = nativeName;
    _numericCode = numericCode;
    _currencies = currencies;
    _languages = languages;
    _translations = translations;
    _flag = flag;
    _regionalBlocs = regionalBlocs;
    _cioc = cioc;
}

  CountryCodeModelEntity.fromJson(dynamic jsonData) {
    var json = jsonData[0];
    _name = json["name"];
    _topLevelDomain = json["topLevelDomain"] != null ? json["topLevelDomain"].cast<String>() : [];
    _alpha2Code = json["alpha2Code"];
    _alpha3Code = json["alpha3Code"];
    _callingCodes = json["callingCodes"] != null ? json["callingCodes"].cast<String>() : [];
    _capital = json["capital"];
    _altSpellings = json["altSpellings"] != null ? json["altSpellings"].cast<String>() : [];
    _region = json["region"];
    _subregion = json["subregion"];
    _population = json["population"];
    _latlng = json["latlng"] != null ? json["latlng"].cast<double>() : [];
    _demonym = json["demonym"];
    _area = json["area"];
    _gini = json["gini"];
    _timezones = json["timezones"] != null ? json["timezones"].cast<String>() : [];
    _borders = json["borders"] != null ? json["borders"].cast<String>() : [];
    _nativeName = json["nativeName"];
    _numericCode = json["numericCode"];
    if (json["currencies"] != null) {
      _currencies = [];
      json["currencies"].forEach((v) {
        _currencies.add(Currencies.fromJson(v));
      });
    }
    if (json["languages"] != null) {
      _languages = [];
      json["languages"].forEach((v) {
        _languages.add(Languages.fromJson(v));
      });
    }
    _translations = json["translations"] != null ? Translations.fromJson(json["translations"]) : null;
    _flag = json["flag"];
    _cioc = json["cioc"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["topLevelDomain"] = _topLevelDomain;
    map["alpha2Code"] = _alpha2Code;
    map["alpha3Code"] = _alpha3Code;
    map["callingCodes"] = _callingCodes;
    map["capital"] = _capital;
    map["altSpellings"] = _altSpellings;
    map["region"] = _region;
    map["subregion"] = _subregion;
    map["population"] = _population;
    map["latlng"] = _latlng;
    map["demonym"] = _demonym;
    map["area"] = _area;
    map["gini"] = _gini;
    map["timezones"] = _timezones;
    map["borders"] = _borders;
    map["nativeName"] = _nativeName;
    map["numericCode"] = _numericCode;
    if (_currencies != null) {
      map["currencies"] = _currencies.map((v) => v.toJson()).toList();
    }
    if (_languages != null) {
      map["languages"] = _languages.map((v) => v.toJson()).toList();
    }
    if (_translations != null) {
      map["translations"] = _translations.toJson();
    }
    map["flag"] = _flag;
    if (_regionalBlocs != null) {
      map["regionalBlocs"] = _regionalBlocs.map((v) => v.toJson()).toList();
    }
    map["cioc"] = _cioc;
    return map;
  }

}

/// acronym : "SAARC"
/// name : "South Asian Association for Regional Cooperation"
/// otherAcronyms : []
/// otherNames : []

class RegionalBlocs {
  String _acronym;
  String _name;
  List<dynamic> _otherAcronyms;
  List<dynamic> _otherNames;

  String get acronym => _acronym;
  String get name => _name;
  List<dynamic> get otherAcronyms => _otherAcronyms;
  List<dynamic> get otherNames => _otherNames;

  RegionalBlocs({
      String acronym, 
      String name, 
      List<dynamic> otherAcronyms, 
      List<dynamic> otherNames}){
    _acronym = acronym;
    _name = name;
    _otherAcronyms = otherAcronyms;
    _otherNames = otherNames;
}

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["acronym"] = _acronym;
    map["name"] = _name;
    if (_otherAcronyms != null) {
      map["otherAcronyms"] = _otherAcronyms.map((v) => v.toJson()).toList();
    }
    if (_otherNames != null) {
      map["otherNames"] = _otherNames.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// de : "Indien"
/// es : "India"
/// fr : "Inde"
/// ja : "インド"
/// it : "India"
/// br : "Índia"
/// pt : "Índia"
/// nl : "India"
/// hr : "Indija"
/// fa : "هند"

class Translations {
  String _de;
  String _es;
  String _fr;
  String _ja;
  String _it;
  String _br;
  String _pt;
  String _nl;
  String _hr;
  String _fa;

  String get de => _de;
  String get es => _es;
  String get fr => _fr;
  String get ja => _ja;
  String get it => _it;
  String get br => _br;
  String get pt => _pt;
  String get nl => _nl;
  String get hr => _hr;
  String get fa => _fa;

  Translations({
      String de, 
      String es, 
      String fr, 
      String ja, 
      String it, 
      String br, 
      String pt, 
      String nl, 
      String hr, 
      String fa}){
    _de = de;
    _es = es;
    _fr = fr;
    _ja = ja;
    _it = it;
    _br = br;
    _pt = pt;
    _nl = nl;
    _hr = hr;
    _fa = fa;
}

  Translations.fromJson(dynamic json) {
    _de = json["de"];
    _es = json["es"];
    _fr = json["fr"];
    _ja = json["ja"];
    _it = json["it"];
    _br = json["br"];
    _pt = json["pt"];
    _nl = json["nl"];
    _hr = json["hr"];
    _fa = json["fa"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["de"] = _de;
    map["es"] = _es;
    map["fr"] = _fr;
    map["ja"] = _ja;
    map["it"] = _it;
    map["br"] = _br;
    map["pt"] = _pt;
    map["nl"] = _nl;
    map["hr"] = _hr;
    map["fa"] = _fa;
    return map;
  }

}

/// iso639_1 : "hi"
/// iso639_2 : "hin"
/// name : "Hindi"
/// nativeName : "हिन्दी"

class Languages {
  String _iso6391;
  String _iso6392;
  String _name;
  String _nativeName;

  String get iso6391 => _iso6391;
  String get iso6392 => _iso6392;
  String get name => _name;
  String get nativeName => _nativeName;

  Languages({
      String iso6391, 
      String iso6392, 
      String name, 
      String nativeName}){
    _iso6391 = iso6391;
    _iso6392 = iso6392;
    _name = name;
    _nativeName = nativeName;
}

  Languages.fromJson(dynamic json) {
    _iso6391 = json["iso6391"];
    _iso6392 = json["iso6392"];
    _name = json["name"];
    _nativeName = json["nativeName"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["iso6391"] = _iso6391;
    map["iso6392"] = _iso6392;
    map["name"] = _name;
    map["nativeName"] = _nativeName;
    return map;
  }

}

/// code : "INR"
/// name : "Indian rupee"
/// symbol : "₹"

class Currencies {
  String _code;
  String _name;
  String _symbol;

  String get code => _code;
  String get name => _name;
  String get symbol => _symbol;

  Currencies({
      String code, 
      String name, 
      String symbol}){
    _code = code;
    _name = name;
    _symbol = symbol;
}

  Currencies.fromJson(dynamic json) {
    _code = json["code"];
    _name = json["name"];
    _symbol = json["symbol"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["code"] = _code;
    map["name"] = _name;
    map["symbol"] = _symbol;
    return map;
  }

}