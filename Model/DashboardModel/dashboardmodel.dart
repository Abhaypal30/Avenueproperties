

class DashboardModel {
  String? assignLeads;
  String? todayAssignLeads;
  String? totalAgrement;
  String? totalvisit;
  String? totalOffer;
  String? totalMeeting;
  String? totalToken;
  String? totalBrokerage;
  String? totalPossesion;
  String? totalDeal;
  String? totalFollowUpCall;
  String? totalRevisit;
  String? currentVersion;

  DashboardModel({
    this.assignLeads,
    this.todayAssignLeads,
    this.totalAgrement,
    this.totalvisit,
    this.totalOffer,
    this.totalMeeting,
    this.totalToken,
    this.totalBrokerage,
    this.totalPossesion,
    this.totalDeal,
    this.totalFollowUpCall,
    this.totalRevisit,
    this.currentVersion,
  });

factory DashboardModel.fromjson(Map<String,dynamic>json){
  return DashboardModel(
    assignLeads: json['AssignLeads'],
    todayAssignLeads: json['TodayAssign_Leads'],
    totalAgrement: json['TotalAgrement'],
    totalvisit: json['Totalvisit'],
    totalOffer: json['TotalOffer'],
    totalMeeting: json['TotalMeeting'],
    totalToken: json['TotalToken'],
    totalBrokerage: json['TotalBrokerage'],
    totalPossesion: json['TotalPossesion'],
    totalDeal: json['TotalDeal'],
    totalFollowUpCall: json['TotalFollowUpCall'],
    totalRevisit: json['TotalRevisit'],
    currentVersion: json['CurrentVersion'],

  );
}



}
