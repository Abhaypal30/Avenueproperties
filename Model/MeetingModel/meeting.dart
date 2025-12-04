class MettingModel {
  String? aId;
  String? leadId;
  String? propertyId;
  String? clientCode;
  String? name;
  String? leadPhone;
  String? acutualBudget;
  String? serviceType;
  String? interestType;
  String? meetingDate;
  String? assignAgent;
  String? comment;

  MettingModel({
    String? aId,
    this.leadId,
    this.propertyId,
    this.clientCode,
    this.name,
    this.leadPhone,
    this.acutualBudget,
    this.serviceType,
    this.interestType,
    this.meetingDate,
    this.assignAgent,
    this.comment,
  });

  factory MettingModel.fromjson(Map<String, dynamic> json){
    return MettingModel(
      aId: json['AId'],
      leadId: json['LeadId'],
      propertyId: json['PropertyId'],
      clientCode: json['clientCode'],
      name: json['name'],
      leadPhone: json['LeadPhone'],
      acutualBudget: json['AcutualBudget'],
      serviceType: json['ServiceType'],
      interestType: json['InterestType'],
      meetingDate: json['meetingDate'],
      assignAgent: json['AssignAgent'],
      comment: json['Comment'],
    );
  }
}
