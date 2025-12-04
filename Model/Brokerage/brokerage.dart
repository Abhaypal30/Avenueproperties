class BroKeRage {
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
  String? clientBrokerage;
  String? comment;

  BroKeRage({
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
    this.clientBrokerage,
    this.comment,
  });

  factory BroKeRage.fromjson(Map<String,dynamic>json){
    return BroKeRage(
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
      clientBrokerage: json['ClientBrokerage'],
      comment: json['Comment'],

    );
  }
}
