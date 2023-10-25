class Store {


  static var SET_ENV = Environments.DEV;

  static var baseurl = _getBaseURL(SET_ENV);
  //static var token = _getSessionToken(SET_ENV);

  static String _getBaseURL(Environments env) {
    String url = "";

    switch (env) {
      case Environments.DEV:
        url = 'http://demo.promena.in';
        break;
      case Environments.PROD:
        url = 'http://demo.promena.in';
        break;
      case Environments.UAT:
        url = 'http://demo.promena.in';
        break;
      default:
        url = 'http://demo.promena.in';
        break;
    }
    return url;
  }

  static String _getSessionToken(Environments env) {
    String sessionToken = "";

    switch (env) {
      case Environments.DEV:
        sessionToken = '692065fa3bcbe80f236fdc30b5e39d02685985a5';
        break;
      case Environments.PROD:
        sessionToken = '355fdb3c2c2a2921e5bd31e5ee9fe67a57851d30';
        break;
      case Environments.UAT:
        sessionToken = 'e2ad2a6b88974da261021ea23a2ced11b84b9847';
        break;
      default:
        sessionToken = '692065fa3bcbe80f236fdc30b5e39d02685985a5';
        break;
    }
    return sessionToken;
  }
}

enum Environments { DEV, PROD, UAT }
