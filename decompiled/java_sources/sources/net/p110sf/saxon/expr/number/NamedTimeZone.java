package net.p110sf.saxon.expr.number;

import androidx.core.text.util.LocalePreferences;
import com.alibaba.fastjson2.util.DateUtils;
import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.time.Instant;
import java.time.ZoneId;
import java.time.zone.ZoneRulesException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.DateTimeValue;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.lang3.time.TimeZones;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes11.dex */
public class NamedTimeZone {

    /* renamed from: a */
    public static Set<String> f99886a = new HashSet(50);

    /* renamed from: b */
    public static HashMap<String, List<String>> f99887b = new HashMap<>(50);

    /* renamed from: c */
    public static List<String> f99888c = new ArrayList(20);

    static {
        f99886a.addAll(ZoneId.getAvailableZoneIds());
        m62806e("us", "America/New_York", true);
        m62806e("us", "America/Chicago", true);
        m62806e("us", "America/Denver", true);
        m62806e("us", "America/Los_Angeles", true);
        m62806e("us", "America/Anchorage", true);
        m62806e("us", "America/Halifax", true);
        m62806e("us", "Pacific/Honolulu", true);
        m62805d(LocalePreferences.CalendarType.f5703a, "Canada/Pacific");
        m62805d(LocalePreferences.CalendarType.f5703a, "Canada/Mountain");
        m62805d(LocalePreferences.CalendarType.f5703a, "Canada/Central");
        m62805d(LocalePreferences.CalendarType.f5703a, "Canada/Eastern");
        m62805d(LocalePreferences.CalendarType.f5703a, "Canada/Atlantic");
        m62806e("au", "Australia/Sydney", true);
        m62806e("au", "Australia/Darwin", true);
        m62806e("au", "Australia/Perth", true);
        m62806e(OcrValues.LANG_RUSSIAN, "Europe/Moscow", true);
        m62805d(OcrValues.LANG_RUSSIAN, "Europe/Samara");
        m62805d(OcrValues.LANG_RUSSIAN, "Asia/Yekaterinburg");
        m62805d(OcrValues.LANG_RUSSIAN, "Asia/Novosibirsk");
        m62805d(OcrValues.LANG_RUSSIAN, "Asia/Krasnoyarsk");
        m62805d(OcrValues.LANG_RUSSIAN, "Asia/Irkutsk");
        m62805d(OcrValues.LANG_RUSSIAN, "Asia/Chita");
        m62805d(OcrValues.LANG_RUSSIAN, "Asia/Vladivostok");
        m62805d("an", "Europe/Andorra");
        m62805d("ae", "Asia/Abu_Dhabi");
        m62805d("af", "Asia/Kabul");
        m62805d("al", "Europe/Tirana");
        m62805d("am", "Asia/Yerevan");
        m62805d("ao", "Africa/Luanda");
        m62805d(ArchiveStreamFactory.f105352AR, "America/Buenos_Aires");
        m62805d("as", "Pacific/Samoa");
        m62805d("at", "Europe/Vienna");
        m62805d("aw", "America/Aruba");
        m62805d("az", "Asia/Baku");
        m62805d("ba", "Europe/Sarajevo");
        m62805d("bb", "America/Barbados");
        m62805d("bd", "Asia/Dhaka");
        m62806e("be", "Europe/Brussels", true);
        m62805d("bf", "Africa/Ouagadougou");
        m62805d("bg", "Europe/Sofia");
        m62805d("bh", "Asia/Bahrain");
        m62805d("bi", "Africa/Bujumbura");
        m62805d("bm", "Atlantic/Bermuda");
        m62805d("bn", "Asia/Brunei");
        m62805d("bo", "America/La_Paz");
        m62805d("br", "America/Sao_Paulo");
        m62805d("bs", "America/Nassau");
        m62805d("bw", "Gaborone");
        m62805d("by", "Europe/Minsk");
        m62805d("bz", "America/Belize");
        m62805d("cd", "Africa/Kinshasa");
        m62805d("ch", "Europe/Zurich");
        m62805d("ci", "Africa/Abidjan");
        m62805d("cl", "America/Santiago");
        m62805d("cn", DateUtils.SHANGHAI_ZONE_ID_NAME);
        m62805d("co", "America/Bogota");
        m62805d("cr", "America/Costa_Rica");
        m62805d("cu", "America/Cuba");
        m62805d("cv", "Atlantic/Cape_Verde");
        m62805d("cy", "Asia/Nicosia");
        m62805d("cz", "Europe/Prague");
        m62805d(OcrValues.LANG_GERMAN, "Europe/Berlin");
        m62805d("dj", "Africa/Djibouti");
        m62805d("dk", "Europe/Copenhagen");
        m62805d("do", "America/Santo_Domingo");
        m62805d("dz", "Africa/Algiers");
        m62805d("ec", "America/Quito");
        m62805d("ee", "Europe/Tallinn");
        m62805d("eg", "Africa/Cairo");
        m62805d("er", "Africa/Asmara");
        m62805d("es", "Europe/Madrid");
        m62805d("fi", "Europe/Helsinki");
        m62805d("fj", "Pacific/Fiji");
        m62805d("fk", "America/Stanley");
        m62805d(OcrValues.LANG_FRENCH, "Europe/Paris");
        m62805d("ga", "Africa/Libreville");
        m62805d("gb", "Europe/London");
        m62805d("gd", "America/Grenada");
        m62805d("ge", "Asia/Tbilisi");
        m62805d("gh", "Africa/Accra");
        m62805d("gm", "Africa/Banjul");
        m62805d("gn", "Africa/Conakry");
        m62805d("gr", "Europe/Athens");
        m62805d("gy", "America/Guyana");
        m62805d("hk", "Asia/Hong_Kong");
        m62805d("hn", "America/Tegucigalpa");
        m62805d("hr", "Europe/Zagreb");
        m62805d("ht", "America/Port-au-Prince");
        m62805d("hu", "Europe/Budapest");
        m62805d("id", "Asia/Jakarta");
        m62805d("ie", "Europe/Dublin");
        m62806e("il", "Asia/Tel_Aviv", true);
        m62806e("in", "Asia/Calcutta", true);
        m62805d("iq", "Asia/Baghdad");
        m62805d("ir", "Asia/Tehran");
        m62805d("is", "Atlantic/Reykjavik");
        m62805d(OcrValues.LANG_ITALIAN, "Europe/Rome");
        m62805d("jm", "America/Jamaica");
        m62805d("jo", "Asia/Amman");
        m62806e("jp", "Asia/Tokyo", true);
        m62805d("ke", "Africa/Nairobi");
        m62805d("kg", "Asia/Bishkek");
        m62805d("kh", "Asia/Phnom_Penh");
        m62805d("kp", "Asia/Pyongyang");
        m62805d("kr", "Asia/Seoul");
        m62805d("kw", "Asia/Kuwait");
        m62805d("lb", "Asia/Beirut");
        m62805d("li", "Europe/Liechtenstein");
        m62805d("lk", "Asia/Colombo");
        m62805d("lr", "Africa/Monrovia");
        m62805d("ls", "Africa/Maseru");
        m62805d(WebvttCueParser.f27233m, "Europe/Vilnius");
        m62805d("lu", "Europe/Luxembourg");
        m62805d("lv", "Europe/Riga");
        m62805d("ly", "Africa/Tripoli");
        m62805d("ma", "Africa/Rabat");
        m62805d("mc", "Europe/Monaco");
        m62805d("md", "Europe/Chisinau");
        m62805d("mg", "Indian/Antananarivo");
        m62805d("mk", "Europe/Skopje");
        m62805d("ml", "Africa/Bamako");
        m62805d("mm", "Asia/Rangoon");
        m62805d("mn", "Asia/Ulaanbaatar");
        m62805d("mo", "Asia/Macao");
        m62805d("mq", "America/Martinique");
        m62805d("mt", "Europe/Malta");
        m62805d(LocalePreferences.TemperatureUnit.f5706a, "Indian/Mauritius");
        m62805d("mv", "Indian/Maldives");
        m62805d("mw", "Africa/Lilongwe");
        m62805d("mx", "America/Mexico_City");
        m62805d("my", "Asia/Kuala_Lumpur");
        m62805d("na", "Africa/Windhoek");
        m62805d("ne", "Africa/Niamey");
        m62805d("ng", "Africa/Lagos");
        m62805d("ni", "America/Managua");
        m62805d("nl", "Europe/Amsterdam");
        m62805d(SVGParser.f16048t, "Europe/Oslo");
        m62805d("np", "Asia/Kathmandu");
        m62805d("nz", "Pacific/Aukland");
        m62805d("om", "Asia/Muscat");
        m62805d("pa", "America/Panama");
        m62805d("pe", "America/Lima");
        m62805d("pg", "Pacific/Port_Moresby");
        m62805d("ph", "Asia/Manila");
        m62805d("pk", "Asia/Karachi");
        m62805d("pl", "Europe/Warsaw");
        m62805d("pr", "America/Puerto_Rico");
        m62805d(ExtUnits.UNIT_PT, "Europe/Lisbon");
        m62805d("py", "America/Asuncion");
        m62805d("qa", "Asia/Qatar");
        m62805d("ro", "Europe/Bucharest");
        m62805d("rs", "Europe/Belgrade");
        m62805d("rw", "Africa/Kigali");
        m62805d("sa", "Asia/Riyadh");
        m62805d("sd", "Africa/Khartoum");
        m62805d("se", "Europe/Stockholm");
        m62805d("sg", "Asia/Singapore");
        m62805d("si", "Europe/Ljubljana");
        m62805d("sk", "Europe/Bratislava");
        m62805d("sl", "Africa/Freetown");
        m62805d("so", "Africa/Mogadishu");
        m62805d("sr", "America/Paramaribo");
        m62805d("sv", "America/El_Salvador");
        m62805d("sy", "Asia/Damascus");
        m62805d("sz", "Africa/Mbabane");
        m62805d("td", "Africa/Ndjamena");
        m62805d("tg", "Africa/Lome");
        m62805d("th", "Asia/Bangkok");
        m62805d("tj", "Asia/Dushanbe");
        m62805d("tm", "Asia/Ashgabat");
        m62805d("tn", "Africa/Tunis");
        m62805d("to", "Pacific/Tongatapu");
        m62805d("tr", "Asia/Istanbul");
        m62805d("tw", "Asia/Taipei");
        m62805d("tz", "Africa/Dar_es_Salaam");
        m62805d("ua", "Europe/Kiev");
        m62805d("ug", "Africa/Kampala");
        m62806e("uk", "Europe/London", true);
        m62805d("uy", "America/Montevideo");
        m62805d("uz", "Asia/Tashkent");
        m62805d("ve", "America/Caracas");
        m62805d("vn", "Asia/Hanoi");
        m62805d("za", "Africa/Johannesburg");
        m62805d("zm", "Africa/Lusaka");
        m62805d("zw", "Africa/Harare");
    }

    /* renamed from: a */
    public static int m62802a(ZoneId zoneId, DateTimeValue dateTimeValue) {
        return zoneId.getRules().getOffset(dateTimeValue.toJavaInstant()).getTotalSeconds();
    }

    /* renamed from: b */
    public static boolean m62803b(ZoneId zoneId, long j) {
        return zoneId.getRules().isDaylightSavings(Instant.ofEpochSecond(j));
    }

    /* renamed from: c */
    public static ZoneId m62804c(String str) {
        try {
            return ZoneId.of(str);
        } catch (ZoneRulesException unused) {
            return ZoneId.of("UTC");
        }
    }

    public static int civilTimeOffsetInSeconds(DateTimeValue dateTimeValue, String str) {
        return m62802a(m62804c(str), dateTimeValue);
    }

    /* renamed from: d */
    public static void m62805d(String str, String str2) {
        List<String> list = f99887b.get(str);
        if (list == null) {
            list = new ArrayList<>(4);
        }
        list.add(str2);
        f99887b.put(str, list);
    }

    /* renamed from: e */
    public static void m62806e(String str, String str2, boolean z) {
        m62805d(str, str2);
        if (z) {
            f99888c.add(str2);
        }
    }

    public static String formatTimeZoneOffset(DateTimeValue dateTimeValue) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        CalendarValue.appendTimezone(dateTimeValue.getTimezoneInMinutes(), unicodeBuilder);
        return unicodeBuilder.toString();
    }

    public static ZoneId getNamedTimeZone(String str) {
        if (f99886a.contains(str)) {
            return ZoneId.of(str);
        }
        return null;
    }

    public static String getOlsonTimeZoneName(DateTimeValue dateTimeValue, String str) {
        if (!dateTimeValue.hasTimezone()) {
            return "";
        }
        List<String> list = f99887b.get(str.toLowerCase());
        if (list == null) {
            return formatTimeZoneOffset(dateTimeValue);
        }
        boolean m62803b = m62803b(ZoneId.of(list.get(0)), dateTimeValue.secondsSinceEpoch().longValue());
        int timezoneInMinutes = dateTimeValue.getTimezoneInMinutes();
        for (String str2 : list) {
            if (m62802a(ZoneId.of(str2), dateTimeValue) == timezoneInMinutes * 60) {
                if (!m62803b) {
                    return str2;
                }
                return str2 + "*";
            }
        }
        return formatTimeZoneOffset(dateTimeValue);
    }

    public static String getTimeZoneNameForDate(DateTimeValue dateTimeValue, String str) {
        ZoneId of;
        if (!dateTimeValue.hasTimezone()) {
            return "";
        }
        if (str.startsWith("America/")) {
            str = "us";
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 3291:
                if (str.equals("gb")) {
                    c = 0;
                    break;
                }
                break;
            case 3734:
                if (str.equals("uk")) {
                    c = 1;
                    break;
                }
                break;
            case 3742:
                if (str.equals("us")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                of = ZoneId.of("Europe/London");
                break;
            case 2:
                of = ZoneId.of("America/New_York");
                break;
            default:
                of = null;
                break;
        }
        if (of == null) {
            return formatTimeZoneOffset(dateTimeValue);
        }
        boolean m62803b = m62803b(of, dateTimeValue.secondsSinceEpoch().longValue());
        int timezoneInMinutes = dateTimeValue.getTimezoneInMinutes();
        return m62803b ? timezoneInMinutes != -540 ? timezoneInMinutes != -480 ? timezoneInMinutes != -420 ? timezoneInMinutes != -360 ? timezoneInMinutes != -300 ? timezoneInMinutes != -240 ? timezoneInMinutes != 0 ? timezoneInMinutes != 60 ? timezoneInMinutes != 120 ? timezoneInMinutes != 330 ? formatTimeZoneOffset(dateTimeValue) : "IST" : "CEST" : "BST" : TimeZones.GMT_ID : "EDT" : "CDT" : "MDT" : "PDT" : "AKDT" : "HDT" : timezoneInMinutes != -600 ? timezoneInMinutes != -540 ? timezoneInMinutes != -480 ? timezoneInMinutes != -420 ? timezoneInMinutes != -360 ? timezoneInMinutes != -300 ? timezoneInMinutes != 0 ? timezoneInMinutes != 60 ? timezoneInMinutes != 330 ? formatTimeZoneOffset(dateTimeValue) : "IST" : "CET" : TimeZones.GMT_ID : "EST" : "CST" : "MST" : "PST" : "AKST" : "HST";
    }

    public static Optional<Boolean> inSummerTime(DateTimeValue dateTimeValue, String str) {
        if (str.length() == 2) {
            List<String> list = f99887b.get(str.toLowerCase());
            if (list == null) {
                return Optional.empty();
            }
            str = list.get(0);
        }
        return Optional.of(Boolean.valueOf(m62803b(m62804c(str), dateTimeValue.secondsSinceEpoch().longValue())));
    }
}
