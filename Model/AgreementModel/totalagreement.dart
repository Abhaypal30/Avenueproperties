class AgreementModel {
  String?aId;
  String?leadId;
  String?propertyId;
  String?clientCode;
  String?name;
  String?leadPhone;
  String?acutualBudget;
  String?serviceType;
  String?interestType;
  String?agrementDate;
  String?assignAgent;
  String?aggrementPdf;
  String?comment;

  AgreementModel({
    this.aId,
    this.leadId,
    this.propertyId,
    this.clientCode,
    this.name,
    this.leadPhone,
    this.acutualBudget,
    this.serviceType,
    this.interestType,
    this.agrementDate,
    this.assignAgent,
    this.aggrementPdf,
    this.comment,
  });

  factory AgreementModel.fromjson(Map<String, dynamic> json) {
    return AgreementModel(
      aId: json['AId'],
      leadId: json['LeadId'],
      propertyId: json['PropertyId'],
      clientCode: json['clientCode'],
      name: json['name'],
      leadPhone: json['LeadPhone'],
      acutualBudget: json['AcutualBudget'],
      serviceType: json['ServiceType'],
      interestType: json['InterestType'],
      agrementDate: json['AgrementDate'],
      assignAgent: json['AssignAgent'],
      aggrementPdf: json[' AggrementPdf'],
      comment: json['Comment'],
    );
  }
}
