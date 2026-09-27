abstract class AppConstants {
  static const String baseUrl = "https://newsapi.org/v2/everything";
  static const String apiKey = String.fromEnvironment(
    'API_KEY',
    defaultValue: 'fallback_key',
  );
}
