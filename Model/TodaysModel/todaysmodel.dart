class TodaysleadModel {
  String? leadId;
  String? name;
  String? leadPhone;
  String? acutualBudget;
  String? serviceType;
  String? interestType;
  String? comment;

  TodaysleadModel({
    this. leadId,
    this. name,
    this. leadPhone,
    this. acutualBudget,
    this. serviceType,
    this. interestType,
    this. comment,
  });

  factory TodaysleadModel.fromjson(Map<String,dynamic>json){
    return TodaysleadModel(
      leadId: json['LeadId'],
      name: json['name'],
      leadPhone: json['LeadPhone'],
      acutualBudget: json['AcutualBudget'],
      serviceType: json['ServiceType'],
      interestType: json['InterestType'],
      comment: json['Comment'],
    );
  }
}
