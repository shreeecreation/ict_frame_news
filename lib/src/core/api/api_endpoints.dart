class ApiEndpoints {
  static const baseUrl = "http://18.143.33.14/";

  ///auth
  ///
  ///
  static const String login = "/auth/login/";
  static const String resetPasswordSendEmail = "/auth/password/reset/";
  static const String userInfo = 'auth/user/';
  static const String changePassword = 'auth/password/change/';
  static const String verifyEmail = 'users/verify-reset-password-otp/';
  static const String setPassword = 'users/reset-password-confirm/';

  ///support
  ///
  ///
  static const String supportTicketInbox = "support/tickets/";
  static const String createSupportTicket = "support/tickets/";

  ///Help
  ///
  ///
  static const String getVideos = 'core/tutorials/';
  static const String faq = 'core/faqs/';

  static const String categories = 'core/categories/';

  ///Dashboard Endpoints
  ///
  ///
  static const String getDashboard = 'core/team-home/';
  static const String getPropertyDetails = 'properties/properties/';
  static const String getRentPayments = 'properties/rent-payments/';
  static const String lifeTimeEarnings = 'properties/rent-payments/income/';
  static const String getMaintenancePayments = 'properties/maintenance';
  static const String unresolvedTickets = 'core/dashboard/unsolved-tickets';
  static const String getDocuments = 'properties/property-documents';

  ///News Endpoints
  ///
  ///
  static const String getNews = 'core/news/';

  ///Tenant Information
  ///
  ///
  static const String tenantInformation = 'properties/tenants/';
}
