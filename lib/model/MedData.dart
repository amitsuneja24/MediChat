class Disease{
  final String name;
  final String link;
  final List symptoms;
  final List causes;
  final List risk_factor;
  final List overview;
  final List treatment;
  final List medication;
  final List home_remedies;
  Disease(
      {this.name,
      this.link,
      this.symptoms,
      this.causes,
      this.risk_factor,
      this.overview,
      this.treatment,
      this.medication,
      this.home_remedies});
  factory Disease.fromJson(Map<String,dynamic> parsedJson){
    return Disease(
      name: parsedJson['name'],
      link: parsedJson['link'],
      symptoms: parsedJson['symptoms'],
      causes: parsedJson['causes'],
      risk_factor: parsedJson['risk_factor'],
      overview: parsedJson['overview'],
      treatment: parsedJson['treatment'],
      medication:parsedJson['medication'],
      home_remedies:parsedJson['home_remedies']

    );

  }
}

class Diseases{
  final List<Disease> diseases;
  Diseases({this.diseases});
  factory Diseases.fromJson(List <dynamic> parsedJson ){
    List <Disease> diseases;
 diseases=parsedJson.map((i) =>Disease.fromJson(parsedJson[i])).toList();
    return Diseases(diseases:diseases);
  }


}