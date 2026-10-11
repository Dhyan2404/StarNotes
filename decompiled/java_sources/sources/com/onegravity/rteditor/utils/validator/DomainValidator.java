package com.onegravity.rteditor.utils.validator;

import androidx.core.app.NotificationCompat;
import androidx.core.net.MailTo;
import androidx.core.text.util.LocalePreferences;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.caverock.androidsvg.SVGParser;
import com.couchbase.lite.internal.core.C4Replicator;
import com.dropbox.core.DbxWebAuth;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.utils.MarketUtils;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.galaxy.note.utils.ShellUtils;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.sod;
import com.sunia.authlib.BuildConfig;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes7.dex */
public class DomainValidator implements Serializable {
    private static final String DOMAIN_LABEL_REGEX = "\\p{Alnum}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?";
    private static final String DOMAIN_NAME_REGEX = "^(?:\\p{Alnum}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?\\.)+(\\p{Alpha}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?)\\.?$";
    private static final String TOP_LABEL_REGEX = "\\p{Alpha}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?";
    private static final long serialVersionUID = -4407125112880174009L;
    private final boolean allowLocal;
    private final RegexValidator domainRegex = new RegexValidator(DOMAIN_NAME_REGEX);
    private final RegexValidator hostnameRegex = new RegexValidator(DOMAIN_LABEL_REGEX);
    private static final DomainValidator DOMAIN_VALIDATOR = new DomainValidator(false);
    private static final DomainValidator DOMAIN_VALIDATOR_WITH_LOCAL = new DomainValidator(true);
    private static final String[] INFRASTRUCTURE_TLDS = {"arpa"};
    private static final String[] GENERIC_TLDS = {"abogado", "academy", "accountants", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "actor", "adult", "aero", "agency", "airforce", "allfinanz", "alsace", "amsterdam", "android", "aquarelle", "archi", "army", "arpa", "asia", "associates", "attorney", "auction", "audio", "autos", "axa", "band", "bar", "bargains", "bayern", "beer", "berlin", "best", "bid", "bike", "bio", "biz", "black", "blackfriday", "bloomberg", "blue", "bmw", "bnpparibas", "boo", "boutique", "brussels", "budapest", PrivilegedApp.f6529f, "builders", "business", "buzz", "bzh", "cab", "cal", "camera", "camp", "cancerresearch", "capetown", "capital", "caravan", "cards", "care", "career", "careers", "cartier", "casa", "cash", "cat", "catering", "center", "ceo", "cern", "channel", "cheap", "christmas", "chrome", "church", "citic", "city", "claims", "cleaning", OnyxStatisticConstant.EVENT_TYPE_CLICK, "clinic", "clothing", "club", "coach", "codes", "coffee", "college", "cologne", "com", "community", "company", "computer", "condos", "construction", "consulting", "contractors", "cooking", "cool", "coop", sod.f84350C, "credit", "creditcard", "cricket", "crs", "cruises", "cuisinella", "cymru", "dad", "dance", "dating", "day", "deals", "degree", "delivery", "democrat", "dental", "dentist", "desi", BuildConfig.GIT_BRANCH, "diamonds", "diet", "digital", DevicePublicKeyStringDef.DIRECT, "directory", FirebaseAnalytics.Param.DISCOUNT, "dnp", "docs", "domains", "doosan", "durban", "dvag", "eat", "edu", "education", "email", "emerck", "energy", "engineer", "engineering", "enterprises", "equipment", "esq", "estate", "eurovision", "eus", "events", "everbank", "exchange", "expert", "exposed", OneDriverConstants.CONFLICT_BEHAVIOR_FAIL, "farm", "fashion", "feedback", "finance", "financial", "firmdale", "fish", "fishing", "fitness", "flights", "florist", "flowers", "flsmidth", "fly", "foo", "forsale", "foundation", "frl", "frogans", "fund", "furniture", "futbol", "gal", "gallery", "garden", "gbiz", "gent", "ggee", "gift", "gifts", "gives", "glass", "gle", "global", "globo", "gmail", "gmo", "gmx", LoginAuthConst.GOOGLE_AUTH, "gop", "gov", "graphics", "gratis", "green", "gripe", "guide", "guitars", "guru", "hamburg", "haus", "healthcare", "help", "here", "hiphop", "hiv", "holdings", "holiday", "homes", "horse", Http2ExchangeCodec.f103778h, "hosting", "house", "how", "ibm", "immo", "immobilien", "industries", PrivilegedApp.f6532i, "ing", "ink", "institute", "insure", "int", "international", "investments", "irish", "iwc", "jetzt", "jobs", "joburg", "juegos", "kaufen", "kim", "kitchen", "kiwi", "koeln", "krd", "kred", "lacaixa", "land", "latrobe", "lawyer", "lds", "lease", "legal", "lgbt", "lidl", "life", "lighting", "limited", "limo", "link", "loans", "london", "lotto", "ltda", "luxe", "luxury", "madrid", "maison", "management", "mango", MarketUtils.CHANNEL_KEY_MARKET, "marketing", SVGParser.f16046r, "meet", "melbourne", "meme", "memorial", "menu", "miami", "mil", "mini", "mobi", "moda", "moe", "monash", "money", "mormon", "mortgage", "moscow", "motorcycles", FileTypeConstant.MOV, "museum", "nagoya", "name", "navy", "net", "network", "neustar", "new", "nexus", "ngo", "nhk", "ninja", "nra", "nrw", "nyc", "okinawa", "ong", "onl", "ooo", "org", "organic", "osaka", "otsuka", "ovh", "paris", "partners", "parts", "party", "pharmacy", StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO, "photography", "photos", "physio", "pics", "pictures", "pink", "pizza", "place", "plumbing", "pohl", "poker", "porn", "post", "praxi", "press", "pro", "prod", "productions", "prof", GeoConstant.KEY_Properties, "property", "pub", "qpon", "quebec", "realtor", "recipes", "red", "rehab", "reise", "reisen", "reit", "ren", "rentals", "repair", "report", "republican", "rest", "restaurant", "reviews", "rich", "rio", "rip", "rocks", "rodeo", "rsvp", "ruhr", "ryukyu", "saarland", "sale", ManufacturerUtils.f31579b, "sarl", "sca", "scb", "schmidt", "schule", "schwarz", "science", "scot", "services", "sew", "sexy", "shiksha", "shoes", "shriram", "singles", "sky", NotificationCompat.CATEGORY_SOCIAL, "software", "sohu", "solar", "solutions", "soy", "space", "spiegel", "supplies", "supply", "support", "surf", "surgery", "suzuki", "sydney", "systems", "taipei", "tatar", "tattoo", FirebaseAnalytics.Param.TAX, "technology", "tel", "tienda", "tips", "tires", "tirol", "today", "tokyo", "tools", OneDriverConstants.TOP, "town", "toys", "trade", "training", "travel", "trust", "tui", "university", "uno", "uol", "vacations", "vegas", "ventures", "versicherung", "vet", "viajes", "video", "villas", "vision", "vlaanderen", "vodka", "vote", "voting", "voto", "voyage", "wales", "wang", "watch", "webcam", RequestParameters.SUBRESOURCE_WEBSITE, LocalePreferences.FirstDayOfWeek.WEDNESDAY, "wedding", "whoswho", "wien", "wiki", "williamhill", "wme", DbxWebAuth.ROLE_WORK, "works", "world", "wtc", "wtf", "xn--1qqw23a", "xn--3bst00m", "xn--3ds443g", "xn--45q11c", "xn--4gbrim", "xn--55qw42g", "xn--55qx5d", "xn--6frz82g", "xn--6qq986b3xl", "xn--80adxhks", "xn--80asehdb", "xn--80aswg", "xn--c1avg", "xn--cg4bki", "xn--czr694b", "xn--czrs0t", "xn--czru2d", "xn--d1acj3b", "xn--fiq228c5hs", "xn--fiq64b", "xn--flw351e", "xn--hxt814e", "xn--i1b6b1a6a2e", "xn--io0a7i", "xn--kput3i", "xn--mgbab2bd", "xn--ngbc5azd", "xn--nqv7f", "xn--nqv7fs00ema", "xn--p1acf", "xn--q9jyb4c", "xn--qcka1pmc", "xn--rhqv96g", "xn--ses554g", "xn--unup4y", "xn--vermgensberater-ctb", "xn--vermgensberatung-pwb", "xn--vhquv", "xn--xhq521b", "xn--zfr164b", "xxx", "xyz", "yachts", "yandex", "yoga", "yokohama", "youtube", "zip", "zone", "zuerich"};
    private static final String[] COUNTRY_CODE_TLDS = {"ac", "ad", "ae", "af", "ag", "ai", "al", "am", "an", "ao", "aq", ArchiveStreamFactory.f105352AR, "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bm", "bn", "bo", "br", "bs", "bt", "bv", "bw", "by", "bz", LocalePreferences.CalendarType.f5703a, MailTo.f5527e, "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", OcrValues.LANG_GERMAN, "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "er", "es", "et", "eu", "fi", "fj", "fk", "fm", "fo", OcrValues.LANG_FRENCH, "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", WebvttCueParser.f27234n, "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", OcrValues.LANG_ITALIAN, "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", WebvttCueParser.f27233m, "lu", "lv", "ly", "ma", "mc", "md", "me", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", HttpMeasureConstants.f94668b, "mt", LocalePreferences.TemperatureUnit.f5706a, "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", SVGParser.f16048t, "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", ExtUnits.UNIT_PT, "pw", "py", "qa", "re", "ro", "rs", OcrValues.LANG_RUSSIAN, "rw", "sa", "sb", "sc", "sd", "se", "sg", ShellUtils.COMMAND_SH, "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "st", ShellUtils.COMMAND_SU, "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tp", "tr", gon.f71287n, "tv", "tw", "tz", "ua", "ug", "uk", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", C4Replicator.WEBSOCKET_SCHEME, "xn--3e0b707e", "xn--45brj9c", "xn--80ao21a", "xn--90a3ac", "xn--clchc0ea0b2g2a9gcd", "xn--d1alf", "xn--fiqs8s", "xn--fiqz9s", "xn--fpcrj9c3d", "xn--fzc2c9e2c", "xn--gecrj9c", "xn--h2brj9c", "xn--j1amh", "xn--j6w193g", "xn--kprw13d", "xn--kpry57d", "xn--l1acc", "xn--lgbbat1ad8j", "xn--mgb9awbf", "xn--mgba3a4f16a", "xn--mgbaam7a8h", "xn--mgbayh7gpa", "xn--mgbbh1a71e", "xn--mgbc0a9azcg", "xn--mgberp4a5d4ar", "xn--mgbx4cd0ab", "xn--node", "xn--o3cw4h", "xn--ogbpf8fl", "xn--p1ai", "xn--pgbs0dh", "xn--s9brj9c", "xn--wgbh1c", "xn--wgbl6a", "xn--xkc2al3hye2a", "xn--xkc2dl3a5ee0h", "xn--yfro4i67o", "xn--ygbi2ammx", "ye", "yt", "za", "zm", "zw"};
    private static final String[] LOCAL_TLDS = {"localdomain", "localhost"};

    /* renamed from: com.onegravity.rteditor.utils.validator.DomainValidator$a */
    /* loaded from: classes7.dex */
    public static class C7078a {

        /* renamed from: a */
        public static final Method f40602a = m31809b();

        /* renamed from: b */
        public static Method m31809b() {
            try {
                return Class.forName("java.net.IDN", false, DomainValidator.class.getClassLoader()).getDeclaredMethod("toASCII", String.class);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    private DomainValidator(boolean z) {
        this.allowLocal = z;
    }

    private String chompLeadingDot(String str) {
        return str.startsWith(".") ? str.substring(1) : str;
    }

    public static DomainValidator getInstance() {
        return DOMAIN_VALIDATOR;
    }

    private static boolean isOnlyASCII(String str) {
        if (str == null) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    private static final String toASCII(String str) throws IllegalArgumentException {
        Method method;
        if (isOnlyASCII(str) || (method = C7078a.f40602a) == null) {
            return str;
        }
        try {
            return (String) method.invoke(null, str.toLowerCase(Locale.ENGLISH));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IllegalArgumentException) {
                throw ((IllegalArgumentException) cause);
            }
            throw new RuntimeException(e2);
        }
    }

    public static String unicodeToASCII(String str) {
        try {
            return toASCII(str);
        } catch (IllegalArgumentException unused) {
            return str;
        }
    }

    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        String unicodeToASCII = unicodeToASCII(str);
        if (unicodeToASCII.length() > 253) {
            return false;
        }
        String[] match = this.domainRegex.match(unicodeToASCII);
        return (match == null || match.length <= 0) ? this.allowLocal && this.hostnameRegex.isValid(unicodeToASCII) : isValidTld(match[0]);
    }

    public boolean isValidCountryCodeTld(String str) {
        return Arrays.binarySearch(COUNTRY_CODE_TLDS, chompLeadingDot(unicodeToASCII(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public final boolean isValidDomainSyntax(String str) {
        if (str == null) {
            return false;
        }
        String unicodeToASCII = unicodeToASCII(str);
        if (unicodeToASCII.length() > 253) {
            return false;
        }
        String[] match = this.domainRegex.match(unicodeToASCII);
        return (match != null && match.length > 0) || this.hostnameRegex.isValid(unicodeToASCII);
    }

    public boolean isValidGenericTld(String str) {
        return Arrays.binarySearch(GENERIC_TLDS, chompLeadingDot(unicodeToASCII(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public boolean isValidInfrastructureTld(String str) {
        return Arrays.binarySearch(INFRASTRUCTURE_TLDS, chompLeadingDot(unicodeToASCII(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public boolean isValidLocalTld(String str) {
        return Arrays.binarySearch(LOCAL_TLDS, chompLeadingDot(unicodeToASCII(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public boolean isValidTld(String str) {
        String unicodeToASCII = unicodeToASCII(str);
        return (this.allowLocal && isValidLocalTld(unicodeToASCII)) || isValidInfrastructureTld(unicodeToASCII) || isValidGenericTld(unicodeToASCII) || isValidCountryCodeTld(unicodeToASCII);
    }

    public static DomainValidator getInstance(boolean z) {
        if (z) {
            return DOMAIN_VALIDATOR_WITH_LOCAL;
        }
        return DOMAIN_VALIDATOR;
    }
}
