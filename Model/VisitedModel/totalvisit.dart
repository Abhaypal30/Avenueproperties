class TotalVisitModel {
  String? aId;
  String? leadId;
  String? propertyId;
  String? clientCode;
  String? name;
  String? leadPhone;
  String? acutualBudget;
  String? serviceType;
  String? interestType;
  String? assignAgent;
  String? comment;
  String? visitImage;

  TotalVisitModel({
    this.aId,
    this.leadId,
    this.propertyId,
    this.clientCode,
    this.name,
    this.leadPhone,
    this.acutualBudget,
    this.serviceType,
    this.interestType,
    this.assignAgent,
    this.comment,
    this.visitImage,
  });

  factory TotalVisitModel.fromjson(Map<String, dynamic> json) {
    return TotalVisitModel(
      aId: json['AId'],
      leadId: json['LeadId'],
      propertyId: json['PropertyId'],
      clientCode: json['clientCode'],
      name: json['name'],
      leadPhone: json['LeadPhone'],
      acutualBudget: json['AcutualBudget'],
      serviceType: json['ServiceType'],
      interestType: json['InterestType'],
      assignAgent: json['AssignAgent'],
      comment: json['Comment'],
      visitImage: json['VisitImage'],
    );
  }
}
