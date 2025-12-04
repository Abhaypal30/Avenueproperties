class OfferModel {
  String? leadId;
  String? name;
  String? leadPhone;
  String? acutualBudget;
  String? serviceType;
  String? interestType;
  String? comment;
  String? assignAgent;
  

  OfferModel({
    this.leadId,
    this.name,
    this.leadPhone,
    this.acutualBudget,
    this.serviceType,
    this.interestType,
    this.comment,
    this.assignAgent,
  });

  factory OfferModel.fromjson(Map<String, dynamic> json) {
    return OfferModel(
        leadId: json['LeadId'],
        name: json['name'],
        leadPhone: json["LeadPhone"],
        acutualBudget: json['AcutualBudget'],
        serviceType: json['ServiceType'],
        interestType: json['InterestType'],
        comment: json['Comment'],
        assignAgent: json['AssignAgent']
        );
  }
}
