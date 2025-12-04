class TotalLead {
  String? leadId;
  String? name;
  String? leadPhone;
  String? acutualBudget;
  String? serviceType;
  String? interestType;
  String? assignAgent;
  String? comment;

  TotalLead({
    this.leadId,
    this.name,
    this.leadPhone,
    this.acutualBudget,
    this.serviceType,
    this.interestType,
    this.assignAgent,
    this.comment,
  });

  factory TotalLead.fromjson(Map<String, dynamic> json) {
    return TotalLead(
        leadId: json['LeadId'],
        name: json['name'],
        leadPhone: json['LeadPhone'],
        acutualBudget: json['AcutualBudget'],
        serviceType: json['ServiceType'],
        interestType: json['InterestType'],
        assignAgent: json['AssignAgent'],
        comment: json['Comment']);
  }
}
