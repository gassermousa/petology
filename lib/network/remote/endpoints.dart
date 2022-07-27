const String baseUrl = 'https://petology.orangedigitalcenteregypt.com';
const String loginEndpoint = '/auth/login';
const String registerEndpoint = '/auth/register';
const String footerEndpoint = '/static/homepage/footer';
const String petsNeedsEndpoint = '/static/homepage/pet-needs';
const String kAuthLogin = "$baseUrl/auth/login";
const String kAuthFacebook = "$baseUrl/auth/oauth2/facebook/";
const String kAuthGoogle = "$baseUrl/auth/oauth2/google/";
const String kFacebookCallback = "$baseUrl/auth/oauth2/facebook/callback";
const String kGoogleCallback = "$baseUrl/auth/oauth2/google/callback";
const String kAuthRegister = "$baseUrl/auth/register";
//* Pets Endpoints
const String kSharedPets = "/pets";
const String kSpecificCategory = "$baseUrl/categories/";
const String kListPets = baseUrl + kSharedPets;
const String kFilterPets = "$kListPets/filters/";
const String kRequestPet = "$kListPets/request";
//* Static Endpoints
const String kStatic = "$baseUrl/static";
const String kHowTo = "$kStatic/how-to/";
const String kHomeData = "$kStatic/homepage";
const String kFirstSec = "$kHomeData/first-section";
const String kSecondSec = "$kHomeData/second-section";
const String kfooter = "$kHomeData/footer";
const String kPetNeeds = "$kHomeData/pet-needs";
