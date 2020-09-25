import 'package:xam_otp_flutter/feature/otp/model/country_code_model_entity.dart';

countryCodeModelEntityFromJson(CountryCodeModelEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['topLevelDomain'] != null) {
		data.topLevelDomain = json['topLevelDomain']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['alpha2Code'] != null) {
		data.alpha2Code = json['alpha2Code']?.toString();
	}
	if (json['alpha3Code'] != null) {
		data.alpha3Code = json['alpha3Code']?.toString();
	}
	if (json['callingCodes'] != null) {
		data.callingCodes = json['callingCodes']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['capital'] != null) {
		data.capital = json['capital']?.toString();
	}
	if (json['altSpellings'] != null) {
		data.altSpellings = json['altSpellings']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['region'] != null) {
		data.region = json['region']?.toString();
	}
	if (json['subregion'] != null) {
		data.subregion = json['subregion']?.toString();
	}
	if (json['population'] != null) {
		data.population = json['population']?.toDouble();
	}
	if (json['latlng'] != null) {
		data.latlng = json['latlng']?.map((v) => v?.toDouble())?.toList()?.cast<double>();
	}
	if (json['demonym'] != null) {
		data.demonym = json['demonym']?.toString();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toDouble();
	}
	if (json['gini'] != null) {
		data.gini = json['gini']?.toDouble();
	}
	if (json['timezones'] != null) {
		data.timezones = json['timezones']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['borders'] != null) {
		data.borders = json['borders']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['nativeName'] != null) {
		data.nativeName = json['nativeName']?.toString();
	}
	if (json['numericCode'] != null) {
		data.numericCode = json['numericCode']?.toString();
	}
	if (json['currencies'] != null) {
		data.currencies = new List<CountryCodeModelCurrency>();
		(json['currencies'] as List).forEach((v) {
			data.currencies.add(new CountryCodeModelCurrency().fromJson(v));
		});
	}
	if (json['languages'] != null) {
		data.languages = new List<CountryCodeModelLanguage>();
		(json['languages'] as List).forEach((v) {
			data.languages.add(new CountryCodeModelLanguage().fromJson(v));
		});
	}
	if (json['translations'] != null) {
		data.translations = new CountryCodeModelTranslations().fromJson(json['translations']);
	}
	if (json['flag'] != null) {
		data.flag = json['flag']?.toString();
	}
	if (json['regionalBlocs'] != null) {
		data.regionalBlocs = new List<CountryCodeModelRegionalBloc>();
		(json['regionalBlocs'] as List).forEach((v) {
			data.regionalBlocs.add(new CountryCodeModelRegionalBloc().fromJson(v));
		});
	}
	if (json['cioc'] != null) {
		data.cioc = json['cioc']?.toString();
	}
	return data;
}

Map<String, dynamic> countryCodeModelEntityToJson(CountryCodeModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['topLevelDomain'] = entity.topLevelDomain;
	data['alpha2Code'] = entity.alpha2Code;
	data['alpha3Code'] = entity.alpha3Code;
	data['callingCodes'] = entity.callingCodes;
	data['capital'] = entity.capital;
	data['altSpellings'] = entity.altSpellings;
	data['region'] = entity.region;
	data['subregion'] = entity.subregion;
	data['population'] = entity.population;
	data['latlng'] = entity.latlng;
	data['demonym'] = entity.demonym;
	data['area'] = entity.area;
	data['gini'] = entity.gini;
	data['timezones'] = entity.timezones;
	data['borders'] = entity.borders;
	data['nativeName'] = entity.nativeName;
	data['numericCode'] = entity.numericCode;
	if (entity.currencies != null) {
		data['currencies'] =  entity.currencies.map((v) => v.toJson()).toList();
	}
	if (entity.languages != null) {
		data['languages'] =  entity.languages.map((v) => v.toJson()).toList();
	}
	if (entity.translations != null) {
		data['translations'] = entity.translations.toJson();
	}
	data['flag'] = entity.flag;
	if (entity.regionalBlocs != null) {
		data['regionalBlocs'] =  entity.regionalBlocs.map((v) => v.toJson()).toList();
	}
	data['cioc'] = entity.cioc;
	return data;
}

countryCodeModelCurrencyFromJson(CountryCodeModelCurrency data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['symbol'] != null) {
		data.symbol = json['symbol']?.toString();
	}
	return data;
}

Map<String, dynamic> countryCodeModelCurrencyToJson(CountryCodeModelCurrency entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['name'] = entity.name;
	data['symbol'] = entity.symbol;
	return data;
}

countryCodeModelLanguageFromJson(CountryCodeModelLanguage data, Map<String, dynamic> json) {
	if (json['iso639_1'] != null) {
		data.iso6391 = json['iso639_1']?.toString();
	}
	if (json['iso639_2'] != null) {
		data.iso6392 = json['iso639_2']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['nativeName'] != null) {
		data.nativeName = json['nativeName']?.toString();
	}
	return data;
}

Map<String, dynamic> countryCodeModelLanguageToJson(CountryCodeModelLanguage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['iso639_1'] = entity.iso6391;
	data['iso639_2'] = entity.iso6392;
	data['name'] = entity.name;
	data['nativeName'] = entity.nativeName;
	return data;
}

countryCodeModelTranslationsFromJson(CountryCodeModelTranslations data, Map<String, dynamic> json) {
	if (json['de'] != null) {
		data.de = json['de']?.toString();
	}
	if (json['es'] != null) {
		data.es = json['es']?.toString();
	}
	if (json['fr'] != null) {
		data.fr = json['fr']?.toString();
	}
	if (json['ja'] != null) {
		data.ja = json['ja']?.toString();
	}
	if (json['it'] != null) {
		data.it = json['it']?.toString();
	}
	if (json['br'] != null) {
		data.br = json['br']?.toString();
	}
	if (json['pt'] != null) {
		data.pt = json['pt']?.toString();
	}
	if (json['nl'] != null) {
		data.nl = json['nl']?.toString();
	}
	if (json['hr'] != null) {
		data.hr = json['hr']?.toString();
	}
	if (json['fa'] != null) {
		data.fa = json['fa']?.toString();
	}
	return data;
}

Map<String, dynamic> countryCodeModelTranslationsToJson(CountryCodeModelTranslations entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['de'] = entity.de;
	data['es'] = entity.es;
	data['fr'] = entity.fr;
	data['ja'] = entity.ja;
	data['it'] = entity.it;
	data['br'] = entity.br;
	data['pt'] = entity.pt;
	data['nl'] = entity.nl;
	data['hr'] = entity.hr;
	data['fa'] = entity.fa;
	return data;
}

countryCodeModelRegionalBlocFromJson(CountryCodeModelRegionalBloc data, Map<String, dynamic> json) {
	if (json['acronym'] != null) {
		data.acronym = json['acronym']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['otherAcronyms'] != null) {
		data.otherAcronyms = new List<dynamic>();
		data.otherAcronyms.addAll(json['otherAcronyms']);
	}
	if (json['otherNames'] != null) {
		data.otherNames = new List<dynamic>();
		data.otherNames.addAll(json['otherNames']);
	}
	return data;
}

Map<String, dynamic> countryCodeModelRegionalBlocToJson(CountryCodeModelRegionalBloc entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['acronym'] = entity.acronym;
	data['name'] = entity.name;
	if (entity.otherAcronyms != null) {
		data['otherAcronyms'] =  [];
	}
	if (entity.otherNames != null) {
		data['otherNames'] =  [];
	}
	return data;
}