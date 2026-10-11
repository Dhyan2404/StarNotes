package com.alibaba.fastjson2.util;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplDate;
import com.evernote.edam.type.Constants;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.time.zone.ZoneRules;
import java.util.Date;
import java.util.Locale;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public class DateUtils {
    public static final ZoneId DEFAULT_ZONE_ID;
    public static final LocalDate LOCAL_DATE_19700101;
    public static final ZoneId OFFSET_8_ZONE_ID;
    public static final String OFFSET_8_ZONE_ID_NAME = "+08:00";
    public static final ZoneId SHANGHAI_ZONE_ID;
    public static final String SHANGHAI_ZONE_ID_NAME = "Asia/Shanghai";
    public static final ZoneRules SHANGHAI_ZONE_RULES;

    /* renamed from: a */
    public static DateTimeFormatter f12774a;

    /* renamed from: b */
    public static DateTimeFormatter f12775b;

    /* renamed from: c */
    public static DateTimeFormatter f12776c;

    /* renamed from: d */
    public static DateTimeFormatter f12777d;

    /* renamed from: e */
    public static final int f12778e;

    /* loaded from: classes3.dex */
    public enum DateTimeFormatPattern {
        DATE_FORMAT_10_DASH("yyyy-MM-dd", 10),
        DATE_FORMAT_10_SLASH("yyyy/MM/dd", 10),
        DATE_FORMAT_10_DOT("dd.MM.yyyy", 10),
        DATE_TIME_FORMAT_19_DASH(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS, 19),
        DATE_TIME_FORMAT_19_DASH_T("yyyy-MM-dd'T'HH:mm:ss", 19),
        DATE_TIME_FORMAT_19_SLASH("yyyy/MM/dd HH:mm:ss", 19),
        DATE_TIME_FORMAT_19_DOT("dd.MM.yyyy HH:mm:ss", 19);

        public final int length;
        public final String pattern;

        DateTimeFormatPattern(String str, int i) {
            this.pattern = str;
            this.length = i;
        }
    }

    /* renamed from: com.alibaba.fastjson2.util.DateUtils$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1747a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12779a;

        static {
            int[] iArr = new int[DateTimeFormatPattern.values().length];
            f12779a = iArr;
            try {
                iArr[DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12779a[DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH_T.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12779a[DateTimeFormatPattern.DATE_TIME_FORMAT_19_SLASH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12779a[DateTimeFormatPattern.DATE_TIME_FORMAT_19_DOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12779a[DateTimeFormatPattern.DATE_FORMAT_10_DASH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12779a[DateTimeFormatPattern.DATE_FORMAT_10_SLASH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.alibaba.fastjson2.util.DateUtils$b */
    /* loaded from: classes3.dex */
    public static class C1748b {

        /* renamed from: a */
        public static final String[] f12780a = new String[1024];
    }

    /* renamed from: com.alibaba.fastjson2.util.DateUtils$c */
    /* loaded from: classes3.dex */
    public static class C1749c {

        /* renamed from: a */
        public static final String[] f12781a = new String[1024];
    }

    static {
        ZoneId systemDefault = ZoneId.systemDefault();
        DEFAULT_ZONE_ID = systemDefault;
        ZoneId of = SHANGHAI_ZONE_ID_NAME.equals(systemDefault.getId()) ? systemDefault : ZoneId.of(SHANGHAI_ZONE_ID_NAME);
        SHANGHAI_ZONE_ID = of;
        ZoneRules rules = of.getRules();
        SHANGHAI_ZONE_RULES = rules;
        OFFSET_8_ZONE_ID = ZoneId.of(OFFSET_8_ZONE_ID_NAME);
        LOCAL_DATE_19700101 = LocalDate.of(1970, 1, 1);
        f12778e = (int) Math.floorDiv(Math.floorDiv(System.currentTimeMillis(), 1000L) + ((systemDefault == of || systemDefault.getRules() == rules) ? getShanghaiZoneOffsetTotalSeconds(r5) : systemDefault.getRules().getOffset(Instant.ofEpochMilli(r3)).getTotalSeconds()), 86400L);
    }

    /* renamed from: a */
    public static String m7577a(int i, int i2, int i3, int i4, int i5, int i6, DateTimeFormatPattern dateTimeFormatPattern) {
        int i7 = i / 100;
        int i8 = i - (i7 * 100);
        char[] cArr = new char[19];
        if (dateTimeFormatPattern == DateTimeFormatPattern.DATE_TIME_FORMAT_19_DOT) {
            Unsafe unsafe = JDKUtils.UNSAFE;
            long j = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
            int[] iArr = IOUtils.PACKED_DIGITS_UTF16;
            unsafe.putInt(cArr, j, iArr[i3]);
            cArr[2] = '.';
            unsafe.putInt(cArr, 6 + j, iArr[i2]);
            cArr[5] = '.';
            unsafe.putInt(cArr, 12 + j, iArr[i7]);
            unsafe.putInt(cArr, j + 16, iArr[i8]);
            cArr[10] = ' ';
        } else {
            char c = dateTimeFormatPattern != DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH ? 'T' : ' ';
            char c2 = dateTimeFormatPattern == DateTimeFormatPattern.DATE_TIME_FORMAT_19_SLASH ? '/' : '-';
            Unsafe unsafe2 = JDKUtils.UNSAFE;
            long j2 = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
            int[] iArr2 = IOUtils.PACKED_DIGITS_UTF16;
            unsafe2.putInt(cArr, j2, iArr2[i7]);
            unsafe2.putInt(cArr, 4 + j2, iArr2[i8]);
            cArr[4] = c2;
            unsafe2.putInt(cArr, 10 + j2, iArr2[i2]);
            cArr[7] = c2;
            unsafe2.putInt(cArr, j2 + 16, iArr2[i3]);
            cArr[10] = c;
        }
        IOUtils.writeLocalTime(cArr, 11, i4, i5, i6);
        return new String(cArr);
    }

    /* renamed from: b */
    public static long m7578b(String str, ZoneId zoneId, DateTimeFormatPattern dateTimeFormatPattern) {
        int i;
        if (str == null || "null".equals(str)) {
            return 0L;
        }
        if (dateTimeFormatPattern.length != 10) {
            throw new UnsupportedOperationException();
        }
        if (str.length() != 10) {
            throw new DateTimeParseException("illegal input " + str, str, 0);
        }
        char charAt = str.charAt(0);
        char charAt2 = str.charAt(1);
        char charAt3 = str.charAt(2);
        char charAt4 = str.charAt(3);
        char charAt5 = str.charAt(4);
        char charAt6 = str.charAt(5);
        char charAt7 = str.charAt(6);
        char charAt8 = str.charAt(7);
        char charAt9 = str.charAt(8);
        char charAt10 = str.charAt(9);
        int i2 = C1747a.f12779a[dateTimeFormatPattern.ordinal()];
        if (i2 != 5) {
            if (i2 != 6) {
                throw new DateTimeParseException("illegal input", str, 0);
            }
            if (charAt5 != '/' || charAt8 != '/') {
                throw new DateTimeParseException("illegal input", str, 0);
            }
        } else if (charAt5 != '-' || charAt8 != '-') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9' || charAt3 < '0' || charAt3 > '9' || charAt4 < '0' || charAt4 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i3 = ((charAt - '0') * 1000) + ((charAt2 - '0') * 100) + ((charAt3 - '0') * 10) + (charAt4 - '0');
        if (charAt6 < '0' || charAt6 > '9' || charAt7 < '0' || charAt7 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i4 = ((charAt6 - '0') * 10) + (charAt7 - '0');
        if ((i4 == 0 && i3 != 0) || i4 > 12) {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        if (charAt9 < '0' || charAt9 > '9' || charAt10 < '0' || charAt10 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i5 = ((charAt9 - '0') * 10) + (charAt10 - '0');
        if (i4 != 2) {
            i = (i4 == 4 || i4 == 6 || i4 == 9 || i4 == 11) ? 30 : 31;
        } else {
            i = (i3 & 3) == 0 && (i3 % 100 != 0 || i3 % 400 == 0) ? 29 : 28;
        }
        if ((i5 == 0 && i3 != 0) || i5 > i) {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        if (i3 == 0 && i4 == 0 && i5 == 0) {
            i3 = 1970;
            i5 = 1;
            i4 = 1;
        }
        long j = (i3 * 365) + (((i3 + 3) / 4) - ((i3 + 99) / 100)) + ((i3 + 399) / 400) + (((i4 * 367) - 362) / 12) + (i5 - 1);
        if (i4 > 2) {
            j--;
            if (!((i3 & 3) == 0 && (i3 % 100 != 0 || i3 % 400 == 0))) {
                j--;
            }
        }
        long j2 = (j - 719528) * 86400;
        return (j2 - ((!(zoneId == SHANGHAI_ZONE_ID || zoneId.getRules() == SHANGHAI_ZONE_RULES) || j2 < 684900000) ? (zoneId == ZoneOffset.UTC || "UTC".equals(zoneId.getId())) ? 0 : zoneId.getRules().getOffset(LocalDateTime.of(LocalDate.of(i3, i4, i5), LocalTime.MIN)).getTotalSeconds() : 28800)) * 1000;
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0124  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m7579c(java.lang.String r25, java.time.ZoneId r26, com.alibaba.fastjson2.util.DateUtils.DateTimeFormatPattern r27) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.m7579c(java.lang.String, java.time.ZoneId, com.alibaba.fastjson2.util.DateUtils$DateTimeFormatPattern):long");
    }

    /* renamed from: d */
    public static ZonedDateTime m7580d(byte[] bArr, int i, ZoneId zoneId) {
        if (i + 16 > bArr.length) {
            String str = new String(bArr, i, bArr.length - i);
            throw new DateTimeParseException("illegal input " + str, str, 0);
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        int i2 = i + 10;
        char c11 = (char) bArr[i2];
        char c12 = (char) bArr[i + 13];
        if (c5 != '-' || c8 != '-' || ((c11 != '+' && c11 != '-') || c12 != ':')) {
            String str2 = new String(bArr, i, 16);
            throw new DateTimeParseException("illegal input " + str2, str2, 0);
        }
        if (c < '0' || c > '9' || c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9' || c4 < '0' || c4 > '9') {
            String str3 = new String(bArr, i, 16);
            throw new DateTimeParseException("illegal input " + str3, str3, 0);
        }
        int i3 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
        if (c6 < '0' || c6 > '9' || c7 < '0' || c7 > '9') {
            String str4 = new String(bArr, i, 16);
            throw new DateTimeParseException("illegal input " + str4, str4, 0);
        }
        int i4 = ((c6 - '0') * 10) + (c7 - '0');
        if (c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
            return ZonedDateTime.of(LocalDateTime.of(LocalDate.of(i3, i4, ((c9 - '0') * 10) + (c10 - '0')), LocalTime.MIN), getZoneId(new String(bArr, i2, 6), zoneId));
        }
        String str5 = new String(bArr, i, 16);
        throw new DateTimeParseException("illegal input " + str5, str5, 0);
    }

    /* renamed from: e */
    public static ZonedDateTime m7581e(char[] cArr, int i, ZoneId zoneId) {
        if (i + 16 > cArr.length) {
            String str = new String(cArr, i, cArr.length - i);
            throw new DateTimeParseException("illegal input " + str, str, 0);
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        int i2 = i + 10;
        char c11 = cArr[i2];
        char c12 = cArr[i + 13];
        if (c5 != '-' || c8 != '-' || ((c11 != '+' && c11 != '-') || c12 != ':')) {
            String str2 = new String(cArr, i, 16);
            throw new DateTimeParseException("illegal input " + str2, str2, 0);
        }
        if (c < '0' || c > '9' || c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9' || c4 < '0' || c4 > '9') {
            String str3 = new String(cArr, i, 16);
            throw new DateTimeParseException("illegal input " + str3, str3, 0);
        }
        int i3 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
        if (c6 < '0' || c6 > '9' || c7 < '0' || c7 > '9') {
            String str4 = new String(cArr, i, 16);
            throw new DateTimeParseException("illegal input " + str4, str4, 0);
        }
        int i4 = ((c6 - '0') * 10) + (c7 - '0');
        if (c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
            return ZonedDateTime.of(LocalDateTime.of(LocalDate.of(i3, i4, ((c9 - '0') * 10) + (c10 - '0')), LocalTime.MIN), getZoneId(new String(cArr, i2, 6), zoneId));
        }
        String str5 = new String(cArr, i, 16);
        throw new DateTimeParseException("illegal input " + str5, str5, 0);
    }

    /* renamed from: f */
    public static ZonedDateTime m7582f(String str) {
        if (str.endsWith(" CST")) {
            DateTimeFormatter dateTimeFormatter = f12776c;
            if (dateTimeFormatter == null) {
                dateTimeFormatter = DateTimeFormatter.ofPattern("EEEE, dd-MMM-yyyy HH:mm:ss", Locale.ENGLISH);
                f12776c = dateTimeFormatter;
            }
            return ZonedDateTime.of(LocalDateTime.parse(str.substring(0, str.length() - 4), dateTimeFormatter), SHANGHAI_ZONE_ID);
        }
        DateTimeFormatter dateTimeFormatter2 = f12775b;
        if (dateTimeFormatter2 == null) {
            dateTimeFormatter2 = DateTimeFormatter.ofPattern("EEEE, dd-MMM-yyyy HH:mm:ss zzz", Locale.ENGLISH);
            f12775b = dateTimeFormatter2;
        }
        return ZonedDateTime.parse(str, dateTimeFormatter2);
    }

    public static String format(Date date, String str) {
        if (date == null) {
            return null;
        }
        if (str == null) {
            return format(date);
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -276306848:
                if (str.equals("yyyyMMdd")) {
                    c = 0;
                    break;
                }
                break;
            case -159776256:
                if (str.equals("yyyy-MM-dd")) {
                    c = 1;
                    break;
                }
                break;
            case -102516032:
                if (str.equals("yyyy/MM/dd")) {
                    c = 2;
                    break;
                }
                break;
            case 1333195168:
                if (str.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                    c = 3;
                    break;
                }
                break;
            case 1397504320:
                if (str.equals("dd.MM.yyyy HH:mm:ss")) {
                    c = 4;
                    break;
                }
                break;
            case 1798231098:
                if (str.equals("yyyy-MM-dd'T'HH:mm:ss")) {
                    c = 5;
                    break;
                }
                break;
            case 1834843604:
                if (str.equals("yyyy-MM-ddTHH:mm:ss")) {
                    c = 6;
                    break;
                }
                break;
            case 1900521056:
                if (str.equals("dd.MM.yyyy")) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return formatYMD8(date.getTime(), DEFAULT_ZONE_ID);
            case 1:
                return formatYMD10(date.getTime(), DEFAULT_ZONE_ID);
            case 2:
                return format(date.getTime(), DateTimeFormatPattern.DATE_FORMAT_10_SLASH);
            case 3:
                return format(date.getTime(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
            case 4:
                return format(date.getTime(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DOT);
            case 5:
            case 6:
                return format(date.getTime(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH_T);
            case 7:
                return format(date.getTime(), DateTimeFormatPattern.DATE_FORMAT_10_DOT);
            default:
                return DateTimeFormatter.ofPattern(str).format(Instant.ofEpochMilli(date.getTime()).atZone(DEFAULT_ZONE_ID));
        }
    }

    public static String formatYMD10(int i, int i2, int i3) {
        char[] cArr = new char[10];
        IOUtils.writeLocalDate(cArr, 0, i, i2, i3);
        return new String(cArr);
    }

    public static String formatYMD8(Date date) {
        if (date == null) {
            return null;
        }
        return formatYMD8(date.getTime(), DEFAULT_ZONE_ID);
    }

    public static String formatYMDHMS19(Date date) {
        return formatYMDHMS19(date, DEFAULT_ZONE_ID);
    }

    public static int getShanghaiZoneOffsetTotalSeconds(long j) {
        if (j >= 684900000) {
            return 28800;
        }
        if (j < 671598000) {
            if (j >= 653450400) {
                return 28800;
            }
            if (j < 640148400) {
                if (j >= 622000800) {
                    return 28800;
                }
                if (j < 608698800) {
                    if (j >= 589946400) {
                        return 28800;
                    }
                    if (j < 577249200) {
                        if (j >= 558496800) {
                            return 28800;
                        }
                        if (j < 545194800) {
                            if (j >= 527047200) {
                                return 28800;
                            }
                            if (j < 515559600) {
                                if (j >= -649987200) {
                                    return 28800;
                                }
                                if (j < -652316400) {
                                    if (j >= -670636800) {
                                        return 28800;
                                    }
                                    if (j < -683852400) {
                                        if (j >= -699580800) {
                                            return 28800;
                                        }
                                        if (j < -716857200) {
                                            if (j >= -733795200) {
                                                return 28800;
                                            }
                                            if (j < -745801200) {
                                                if (j >= -767836800) {
                                                    return 28800;
                                                }
                                                if (j < -881017200) {
                                                    if (j >= -888796800) {
                                                        return 28800;
                                                    }
                                                    if (j < -908838000) {
                                                        if (j >= -922060800) {
                                                            return 28800;
                                                        }
                                                        if (j < -933634800) {
                                                            if (j >= -1585872000) {
                                                                return 28800;
                                                            }
                                                            if (j < -1600642800) {
                                                                return j >= -2177452800L ? 28800 : 29143;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return 32400;
    }

    public static ZoneId getZoneId(String str, ZoneId zoneId) {
        int indexOf;
        char charAt;
        if (str == null) {
            return zoneId != null ? zoneId : DEFAULT_ZONE_ID;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 47664:
                if (str.equals(Constants.CLASSIFICATION_RECIPE_USER_NON_RECIPE)) {
                    c = 0;
                    break;
                }
                break;
            case 67044:
                if (str.equals("CST")) {
                    c = 1;
                    break;
                }
                break;
            case 1277108071:
                if (str.equals(OFFSET_8_ZONE_ID_NAME)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return ZoneOffset.UTC;
            case 1:
                return SHANGHAI_ZONE_ID;
            case 2:
                return OFFSET_8_ZONE_ID;
            default:
                if (str.length() > 0 && (((charAt = str.charAt(0)) == '+' || charAt == '-') && str.charAt(str.length() - 1) != ']')) {
                    return ZoneOffset.of(str);
                }
                int indexOf2 = str.indexOf(91);
                return (indexOf2 <= 0 || (indexOf = str.indexOf(93, indexOf2)) <= 0) ? ZoneId.of(str) : ZoneId.of(str.substring(indexOf2 + 1, indexOf));
        }
    }

    public static int hourAfterNoon(char c, char c2) {
        if (c != '0') {
            if (c == '1') {
                switch (c2) {
                    case '0':
                        c = '2';
                        c2 = '2';
                        break;
                    case '1':
                        c2 = '3';
                        c = '2';
                        break;
                    case '2':
                        c2 = '4';
                        c = '2';
                        break;
                }
            }
        } else {
            switch (c2) {
                case '0':
                    c2 = '2';
                    c = '1';
                    break;
                case '1':
                    c2 = '3';
                    c = '1';
                    break;
                case '2':
                    c2 = '4';
                    c = '1';
                    break;
                case '3':
                    c2 = '5';
                    c = '1';
                    break;
                case '4':
                    c2 = '6';
                    c = '1';
                    break;
                case '5':
                    c2 = '7';
                    c = '1';
                    break;
                case '6':
                    c2 = '8';
                    c = '1';
                    break;
                case '7':
                    c2 = '9';
                    c = '1';
                    break;
                case '8':
                    c = '2';
                    c2 = '0';
                    break;
                case '9':
                    c = '2';
                    c2 = '1';
                    break;
            }
        }
        return (c << 16) | c2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x011b, code lost:
    
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isDate(java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.isDate(java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
    
        r1 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isLocalDate(java.lang.String r15) {
        /*
            r0 = 0
            if (r15 == 0) goto Lb6
            boolean r1 = r15.isEmpty()
            if (r1 == 0) goto Lb
            goto Lb6
        Lb:
            int r1 = r15.length()
            r2 = 9
            r3 = 10
            r4 = 1
            if (r1 != r3) goto La0
            r1 = 4
            char r5 = r15.charAt(r1)
            r6 = 45
            if (r5 != r6) goto La0
            r5 = 7
            char r5 = r15.charAt(r5)
            if (r5 != r6) goto La0
            char r5 = r15.charAt(r0)
            char r6 = r15.charAt(r4)
            r7 = 2
            char r8 = r15.charAt(r7)
            r9 = 3
            char r10 = r15.charAt(r9)
            r11 = 5
            char r11 = r15.charAt(r11)
            r12 = 6
            char r13 = r15.charAt(r12)
            r14 = 8
            char r14 = r15.charAt(r14)
            char r15 = r15.charAt(r2)
            int r5 = r5 + (-48)
            int r5 = r5 * 1000
            int r6 = r6 + (-48)
            int r6 = r6 * 100
            int r5 = r5 + r6
            int r8 = r8 + (-48)
            int r8 = r8 * r3
            int r5 = r5 + r8
            int r10 = r10 + (-48)
            int r5 = r5 + r10
            int r11 = r11 + (-48)
            int r11 = r11 * r3
            int r13 = r13 + (-48)
            int r11 = r11 + r13
            int r14 = r14 + (-48)
            int r14 = r14 * r3
            int r15 = r15 + (-48)
            int r14 = r14 + r15
            r15 = 12
            if (r11 <= r15) goto L6d
            return r0
        L6d:
            r15 = 28
            if (r14 <= r15) goto L9f
            if (r11 == r7) goto L83
            if (r11 == r1) goto L80
            if (r11 == r12) goto L80
            if (r11 == r2) goto L80
            r15 = 11
            if (r11 == r15) goto L80
            r15 = 31
            goto L9b
        L80:
            r15 = 30
            goto L9b
        L83:
            r1 = r5 & 15
            if (r1 != 0) goto L8d
            r1 = r5 & 3
            if (r1 != 0) goto L96
        L8b:
            r1 = r4
            goto L97
        L8d:
            r1 = r5 & 3
            if (r1 != 0) goto L96
            int r5 = r5 % 100
            if (r5 == 0) goto L96
            goto L8b
        L96:
            r1 = r0
        L97:
            if (r1 == 0) goto L9b
            r15 = 29
        L9b:
            if (r14 > r15) goto L9e
            r0 = r4
        L9e:
            return r0
        L9f:
            return r4
        La0:
            int r1 = r15.length()
            if (r1 < r2) goto Lb6
            int r1 = r15.length()
            r2 = 40
            if (r1 <= r2) goto Laf
            goto Lb6
        Laf:
            java.time.LocalDate r15 = parseLocalDate(r15)     // Catch: java.lang.Throwable -> Lb6
            if (r15 == 0) goto Lb6
            r0 = r4
        Lb6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.isLocalDate(java.lang.String):boolean");
    }

    public static boolean isLocalTime(String str) {
        if (str != null && !str.isEmpty()) {
            if (str.length() == 8 && str.charAt(2) == ':' && str.charAt(5) == ':') {
                char charAt = str.charAt(0);
                char charAt2 = str.charAt(1);
                char charAt3 = str.charAt(3);
                char charAt4 = str.charAt(4);
                char charAt5 = str.charAt(6);
                char charAt6 = str.charAt(7);
                return charAt >= '0' && charAt <= '2' && charAt2 >= '0' && charAt2 <= '9' && charAt3 >= '0' && charAt3 <= '6' && charAt4 >= '0' && charAt4 <= '9' && charAt5 >= '0' && charAt5 <= '6' && charAt6 >= '0' && charAt6 <= '9' && ((charAt - '0') * 10) + (charAt2 - '0') <= 24 && ((charAt3 - '0') * 10) + (charAt4 - '0') <= 60 && ((charAt5 - '0') * 10) + (charAt6 - '0') <= 61;
            }
            try {
                LocalTime.parse(str);
                return true;
            } catch (DateTimeParseException unused) {
            }
        }
        return false;
    }

    public static LocalDateTime localDateTime(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9, char c10, char c11, char c12, char c13, char c14) {
        if (c < '0' || c > '9' || c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9' || c4 < '0' || c4 > '9') {
            return null;
        }
        int i = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
        if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9') {
            return null;
        }
        int i2 = ((c5 - '0') * 10) + (c6 - '0');
        if (c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
            return null;
        }
        int i3 = ((c7 - '0') * 10) + (c8 - '0');
        if (c9 < '0' || c9 > '9' || c10 < '0' || c10 > '9') {
            return null;
        }
        int i4 = ((c9 - '0') * 10) + (c10 - '0');
        if (c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9') {
            return null;
        }
        int i5 = ((c11 - '0') * 10) + (c12 - '0');
        if (c13 < '0' || c13 > '9' || c14 < '0' || c14 > '9') {
            return null;
        }
        int i6 = ((c13 - '0') * 10) + (c14 - '0');
        if (!(i == 0 && i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0 && i6 == 0) && i4 <= 24 && i5 <= 60 && i6 <= 60) {
            return LocalDateTime.of(i, i2, i3, i4, i5, i6, 0);
        }
        return null;
    }

    public static long millis(LocalDateTime localDateTime) {
        return millis(null, localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth(), localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), localDateTime.getNano());
    }

    public static int month(char c, char c2, char c3) {
        if (c == 'A') {
            if (c2 == 'p' && c3 == 'r') {
                return 4;
            }
            return (c2 == 'u' && c3 == 'g') ? 8 : 0;
        }
        if (c == 'D') {
            return (c2 == 'e' && c3 == 'c') ? 12 : 0;
        }
        if (c == 'F') {
            return (c2 == 'e' && c3 == 'b') ? 2 : 0;
        }
        if (c == 'J') {
            if (c2 == 'a' && c3 == 'n') {
                return 1;
            }
            if (c2 != 'u') {
                return 0;
            }
            if (c3 == 'n') {
                return 6;
            }
            return c3 == 'l' ? 7 : 0;
        }
        if (c == 'S') {
            return (c2 == 'e' && c3 == 'p') ? 9 : 0;
        }
        switch (c) {
            case 'M':
                if (c2 != 'a') {
                    return 0;
                }
                if (c3 == 'r') {
                    return 3;
                }
                return c3 == 'y' ? 5 : 0;
            case 'N':
                return (c2 == 'o' && c3 == 'v') ? 11 : 0;
            case 'O':
                return (c2 == 'c' && c3 == 't') ? 10 : 0;
            default:
                return 0;
        }
    }

    public static Date parseDate(String str, String str2) {
        return parseDate(str, str2, DEFAULT_ZONE_ID);
    }

    public static Date parseDateYMDHMS19(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return new Date(parseMillisYMDHMS19(str, DEFAULT_ZONE_ID));
    }

    public static LocalDate parseLocalDate(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        LocalDate parseLocalDate = parseLocalDate(charArray, 0, charArray.length);
        if (parseLocalDate != null) {
            return parseLocalDate;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2035181974:
                if (str.equals("0000-0-00")) {
                    c = 0;
                    break;
                }
                break;
            case -1173940224:
                if (str.equals("00000000")) {
                    c = 1;
                    break;
                }
                break;
            case 0:
                if (str.equals("")) {
                    c = 2;
                    break;
                }
                break;
            case 3392903:
                if (str.equals("null")) {
                    c = 3;
                    break;
                }
                break;
            case 86814033:
                if (str.equals("0000年00月00日")) {
                    c = 4;
                    break;
                }
                break;
            case 1333954784:
                if (str.equals("0000-00-00")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return null;
            default:
                throw new DateTimeParseException(str, str, 0);
        }
    }

    public static LocalDate parseLocalDate10(byte[] bArr, int i) {
        int month;
        char c;
        char c2;
        char c3;
        if (i + 10 > bArr.length) {
            return null;
        }
        char c4 = (char) bArr[i];
        char c5 = (char) bArr[i + 1];
        char c6 = (char) bArr[i + 2];
        char c7 = (char) bArr[i + 3];
        char c8 = (char) bArr[i + 4];
        char c9 = (char) bArr[i + 5];
        char c10 = (char) bArr[i + 6];
        char c11 = (char) bArr[i + 7];
        char c12 = (char) bArr[i + 8];
        char c13 = (char) bArr[i + 9];
        if ((c8 == '-' && c11 == '-') || (c8 == '/' && c11 == '/')) {
            c11 = c5;
            c3 = c7;
            c = c9;
            c2 = c10;
            c7 = c12;
        } else if ((c6 == '.' && c9 == '.') || (c6 == '-' && c9 == '-')) {
            c2 = c8;
            c6 = c12;
            c3 = c13;
            c13 = c5;
            c = c7;
            c7 = c4;
            c4 = c10;
        } else {
            if (c6 != '/' || c9 != '/') {
                if (c5 == ' ' && c9 == ' ' && (month = month(c6, c7, c8)) > 0) {
                    c = (char) ((month / 10) + 48);
                    c2 = (char) ((month % 10) + 48);
                    c3 = c13;
                    c13 = c4;
                    c4 = c10;
                    c6 = c12;
                    c7 = '0';
                }
                return null;
            }
            c2 = c5;
            c6 = c12;
            c = c4;
            c4 = c10;
            c3 = c13;
            c13 = c8;
        }
        if (c4 >= '0' && c4 <= '9' && c11 >= '0' && c11 <= '9' && c6 >= '0' && c6 <= '9' && c3 >= '0' && c3 <= '9') {
            int i2 = ((c4 - '0') * 1000) + ((c11 - '0') * 100) + ((c6 - '0') * 10) + (c3 - '0');
            if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9') {
                int i3 = ((c - '0') * 10) + (c2 - '0');
                if (c7 >= '0' && c7 <= '9' && c13 >= '0' && c13 <= '9') {
                    int i4 = ((c7 - '0') * 10) + (c13 - '0');
                    if (i2 == 0 && i3 == 0 && i4 == 0) {
                        return null;
                    }
                    return LocalDate.of(i2, i3, i4);
                }
            }
        }
        return null;
    }

    public static LocalDate parseLocalDate11(char[] cArr, int i) {
        int month;
        if (i + 11 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        if ((c5 != 24180 || c8 != 26376 || c11 != 26085) && ((c5 != '-' || c8 != '-' || c11 != 'Z') && (c5 != 45380 || c8 != 50900 || c11 != 51068))) {
            if (c3 == ' ' && c7 == ' ' && (month = month(c4, c5, c6)) > 0) {
                c6 = (char) ((month / 10) + 48);
                c7 = (char) ((month % 10) + 48);
                c4 = c11;
                c3 = c10;
                c10 = c2;
                c2 = c9;
                c9 = c;
                c = c8;
            }
            return null;
        }
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            int i2 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
            if (c6 >= '0' && c6 <= '9' && c7 >= '0' && c7 <= '9') {
                int i3 = ((c6 - '0') * 10) + (c7 - '0');
                if (c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
                    int i4 = ((c9 - '0') * 10) + (c10 - '0');
                    if (i2 == 0 && i3 == 0 && i4 == 0) {
                        return null;
                    }
                    return LocalDate.of(i2, i3, i4);
                }
            }
        }
        return null;
    }

    public static LocalDate parseLocalDate8(byte[] bArr, int i) {
        if (i + 8 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        if (c5 == '-' && c7 == '-') {
            c5 = '0';
            c7 = '0';
        } else if (c2 == '/' && c4 == '/') {
            c4 = c8;
            c8 = c3;
            c2 = c6;
            c3 = c7;
            c7 = '0';
            c6 = c;
            c = c5;
            c5 = '0';
        } else if (c2 == '-' && c6 == '-') {
            int month = month(c3, c4, c5);
            if (month <= 0) {
                return null;
            }
            c5 = (char) ((month / 10) + 48);
            c4 = c8;
            c6 = (char) ((month % 10) + 48);
            c8 = c;
            c = '2';
            c3 = c7;
            c2 = '0';
            c7 = '0';
        }
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            int i2 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
            if (c5 >= '0' && c5 <= '9' && c6 >= '0' && c6 <= '9') {
                int i3 = ((c5 - '0') * 10) + (c6 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    int i4 = ((c7 - '0') * 10) + (c8 - '0');
                    if (i2 == 0 && i3 == 0 && i4 == 0) {
                        return null;
                    }
                    return LocalDate.of(i2, i3, i4);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDate parseLocalDate9(byte[] r13, int r14) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDate9(byte[], int):java.time.LocalDate");
    }

    public static LocalDateTime parseLocalDateTime(String str) {
        if (str == null) {
            return null;
        }
        return parseLocalDateTime(str, 0, str.length());
    }

    public static LocalDateTime parseLocalDateTime12(char[] cArr, int i) {
        char[] cArr2;
        int i2 = i + 12;
        if (i2 <= cArr.length) {
            char c = cArr[i];
            char c2 = cArr[i + 1];
            char c3 = cArr[i + 2];
            char c4 = cArr[i + 3];
            char c5 = cArr[i + 4];
            char c6 = cArr[i + 5];
            char c7 = cArr[i + 6];
            char c8 = cArr[i + 7];
            char c9 = cArr[i + 8];
            char c10 = cArr[i + 9];
            char c11 = cArr[i + 10];
            char c12 = cArr[i + 11];
            if (c < '0') {
                cArr2 = cArr;
            } else {
                if (c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
                    int i3 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
                    if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9') {
                        String str = new String(cArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str, str, 0);
                    }
                    int i4 = ((c5 - '0') * 10) + (c6 - '0');
                    if (c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
                        String str2 = new String(cArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str2, str2, 0);
                    }
                    int i5 = ((c7 - '0') * 10) + (c8 - '0');
                    if (c9 < '0' || c9 > '9' || c10 < '0' || c10 > '9') {
                        String str3 = new String(cArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str3, str3, 0);
                    }
                    int i6 = ((c9 - '0') * 10) + (c10 - '0');
                    if (c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9') {
                        String str4 = new String(cArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str4, str4, 0);
                    }
                    int i7 = ((c11 - '0') * 10) + (c12 - '0');
                    if (i3 == 0 && i4 == 0 && i5 == 0 && i6 == 0 && i7 == 0) {
                        return null;
                    }
                    return LocalDateTime.of(i3, i4, i5, i6, i7, 0);
                }
                cArr2 = cArr;
            }
            String str5 = new String(cArr2, i, i2);
            throw new DateTimeParseException("illegal input " + str5, str5, 0);
        }
        String str6 = new String(cArr, i, cArr.length - i);
        throw new DateTimeParseException("illegal input " + str6, str6, 0);
    }

    public static LocalDateTime parseLocalDateTime14(char[] cArr, int i) {
        if (i + 14 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        char c13 = cArr[i + 12];
        char c14 = cArr[i + 13];
        if (c < '0' || c > '9' || c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9' || c4 < '0' || c4 > '9') {
            return null;
        }
        int i2 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
        if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9') {
            return null;
        }
        int i3 = ((c5 - '0') * 10) + (c6 - '0');
        if (c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
            return null;
        }
        int i4 = ((c7 - '0') * 10) + (c8 - '0');
        if (c9 < '0' || c9 > '9' || c10 < '0' || c10 > '9') {
            return null;
        }
        int i5 = ((c9 - '0') * 10) + (c10 - '0');
        if (c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9') {
            return null;
        }
        int i6 = ((c11 - '0') * 10) + (c12 - '0');
        if (c13 < '0' || c13 > '9' || c14 < '0' || c14 > '9') {
            return null;
        }
        return LocalDateTime.of(i2, i3, i4, i5, i6, ((c13 - '0') * 10) + (c14 - '0'));
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x008c, code lost:
    
        if (r12 == ' ') goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDateTime parseLocalDateTime16(char[] r24, int r25) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime16(char[], int):java.time.LocalDateTime");
    }

    public static LocalDateTime parseLocalDateTime17(char[] cArr, int i) {
        int i2;
        char c;
        char c2;
        char c3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i + 17 <= cArr.length) {
            char c4 = cArr[i];
            char c5 = cArr[i + 1];
            char c6 = cArr[i + 2];
            char c7 = cArr[i + 3];
            char c8 = cArr[i + 4];
            char c9 = cArr[i + 5];
            char c10 = cArr[i + 6];
            char c11 = cArr[i + 7];
            char c12 = cArr[i + 8];
            char c13 = cArr[i + 9];
            char c14 = cArr[i + 10];
            char c15 = cArr[i + 11];
            char c16 = cArr[i + 12];
            char c17 = cArr[i + 13];
            char c18 = cArr[i + 14];
            char c19 = cArr[i + 15];
            char c20 = cArr[i + 16];
            char c21 = '-';
            if (c8 == '-' && c11 == '-') {
                if ((c14 == 'T' || c14 == ' ') && c17 == ':' && c20 == 'Z') {
                    c14 = c18;
                    c11 = c5;
                    c8 = c9;
                    c9 = c10;
                    c10 = c12;
                    c12 = c15;
                    c = c4;
                    c5 = c13;
                    c3 = '0';
                    c17 = '0';
                    i2 = 0;
                    c15 = c19;
                    c2 = c16;
                    c16 = '0';
                    if (c >= c3 && c <= '9' && c11 >= c3 && c11 <= '9' && c6 >= c3 && c6 <= '9' && c7 >= c3 && c7 <= '9') {
                        i3 = ((c - c3) * 1000) + ((c11 - c3) * 100) + ((c6 - c3) * 10) + (c7 - c3);
                        if (c8 >= c3 && c8 <= '9' && c9 >= c3 && c9 <= '9') {
                            i4 = ((c8 - c3) * 10) + (c9 - c3);
                            if (c10 >= c3 && c10 <= '9' && c5 >= c3 && c5 <= '9') {
                                i5 = ((c10 - c3) * 10) + (c5 - c3);
                                if (c12 >= c3 && c12 <= '9' && c2 >= c3 && c2 <= '9') {
                                    i6 = ((c12 - c3) * 10) + (c2 - c3);
                                    if (c14 >= c3 && c14 <= '9' && c15 >= c3 && c15 <= '9') {
                                        i7 = ((c14 - c3) * 10) + (c15 - c3);
                                        if (c16 >= c3 && c16 <= '9' && c17 >= c3 && c17 <= '9') {
                                            return LocalDateTime.of(i3, i4, i5, i6, i7, ((c16 - c3) * 10) + (c17 - c3), i2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return null;
                }
                c21 = '-';
            }
            if (c8 == c21 && c10 == c21 && ((c12 == ' ' || c12 == 'T') && c15 == ':' && c18 == ':')) {
                c15 = c17;
                c = c4;
                c12 = c13;
                c8 = '0';
                c10 = '0';
                i2 = 0;
                c17 = c20;
                c3 = '0';
                c11 = c5;
                c5 = c11;
                c16 = c19;
                c2 = c14;
                c14 = c16;
            } else {
                char c22 = ' ';
                if (c6 == ' ' && c10 == ' ' && c15 == ' ') {
                    if (c18 == ':') {
                        int month = month(c7, c8, c9);
                        if (month <= 0) {
                            return null;
                        }
                        c8 = (char) ((month / 10) + 48);
                        c9 = (char) ((month % 10) + 48);
                        c15 = c20;
                        c = c11;
                        c11 = c12;
                        c7 = c14;
                        c12 = c16;
                        c10 = c4;
                        c6 = c13;
                        c3 = '0';
                        c16 = '0';
                        i2 = 0;
                        c14 = c19;
                        c2 = c17;
                        c17 = '0';
                    } else {
                        c22 = ' ';
                    }
                }
                if (c5 == c22 && c9 == c22 && c14 == c22) {
                    if (c16 == ':' && c18 == ':') {
                        int month2 = month(c6, c7, c8);
                        if (month2 <= 0) {
                            return null;
                        }
                        c8 = (char) ((month2 / 10) + 48);
                        c9 = (char) ((month2 % 10) + 48);
                        c = c10;
                        c6 = c12;
                        c16 = c19;
                        c2 = c15;
                        c5 = c4;
                        c7 = c13;
                        c10 = '0';
                        c12 = '0';
                        c14 = '0';
                        i2 = 0;
                        c15 = c17;
                        c17 = c20;
                        c3 = '0';
                    } else {
                        c22 = ' ';
                    }
                }
                if (c5 == c22 && c9 == c22 && c14 == c22) {
                    if (c16 == ':' && c19 == ':') {
                        int month3 = month(c6, c7, c8);
                        if (month3 <= 0) {
                            return null;
                        }
                        c8 = (char) ((month3 / 10) + 48);
                        c9 = (char) ((month3 % 10) + 48);
                        c14 = c17;
                        c6 = c12;
                        c2 = c15;
                        c5 = c4;
                        c7 = c13;
                        c12 = '0';
                        c16 = '0';
                        i2 = 0;
                        c17 = c20;
                        c15 = c18;
                        c = c10;
                        c3 = '0';
                        c10 = '0';
                    } else {
                        c22 = ' ';
                    }
                }
                if (c5 == c22 && c9 == c22 && c14 == c22) {
                    if (c17 == ':' && c19 == ':') {
                        int month4 = month(c6, c7, c8);
                        if (month4 <= 0) {
                            return null;
                        }
                        c8 = (char) ((month4 / 10) + 48);
                        c9 = (char) ((month4 % 10) + 48);
                        c17 = c20;
                        c6 = c12;
                        c12 = c15;
                        c2 = c16;
                        c5 = c4;
                        c7 = c13;
                        c3 = '0';
                        c14 = '0';
                        c16 = '0';
                        i2 = 0;
                        c15 = c18;
                        c = c10;
                        c10 = '0';
                    } else {
                        c22 = ' ';
                    }
                }
                if (c6 != c22 || c10 != c22 || c15 != c22 || c17 != ':' || c19 != ':') {
                    if (c18 >= '0' && c18 <= '9' && c19 >= '0' && c19 <= '9' && c20 >= '0' && c20 <= '9') {
                        i2 = 1000000 * (((c18 - '0') * 100) + ((c19 - '0') * 10) + (c20 - '0'));
                        c5 = c11;
                        c = c4;
                        c2 = c13;
                        c11 = c5;
                        c3 = '0';
                    }
                    return null;
                }
                int month5 = month(c7, c8, c9);
                if (month5 <= 0) {
                    return null;
                }
                c8 = (char) ((month5 / 10) + 48);
                c9 = (char) ((month5 % 10) + 48);
                c17 = c20;
                c15 = c18;
                c3 = '0';
                c = c11;
                c11 = c12;
                c7 = c14;
                c2 = c16;
                c10 = c4;
                i2 = 0;
                c12 = '0';
                c14 = '0';
                c16 = '0';
                c6 = c13;
            }
            if (c >= c3) {
                i3 = ((c - c3) * 1000) + ((c11 - c3) * 100) + ((c6 - c3) * 10) + (c7 - c3);
                if (c8 >= c3) {
                    i4 = ((c8 - c3) * 10) + (c9 - c3);
                    if (c10 >= c3) {
                        i5 = ((c10 - c3) * 10) + (c5 - c3);
                        if (c12 >= c3) {
                            i6 = ((c12 - c3) * 10) + (c2 - c3);
                            if (c14 >= c3) {
                                i7 = ((c14 - c3) * 10) + (c15 - c3);
                                if (c16 >= c3) {
                                    return LocalDateTime.of(i3, i4, i5, i6, i7, ((c16 - c3) * 10) + (c17 - c3), i2);
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }
        String str = new String(cArr, i, cArr.length - i);
        throw new DateTimeParseException("illegal input " + str, str, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x040d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDateTime parseLocalDateTime18(char[] r31, int r32) {
        /*
            Method dump skipped, instructions count: 1162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime18(char[], int):java.time.LocalDateTime");
    }

    public static LocalDateTime parseLocalDateTime19(char[] cArr, int i) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        if (i + 19 > cArr.length) {
            return null;
        }
        char c9 = cArr[i];
        char c10 = cArr[i + 1];
        char c11 = cArr[i + 2];
        char c12 = cArr[i + 3];
        char c13 = cArr[i + 4];
        char c14 = cArr[i + 5];
        char c15 = cArr[i + 6];
        char c16 = cArr[i + 7];
        char c17 = cArr[i + 8];
        char c18 = cArr[i + 9];
        char c19 = cArr[i + 10];
        char c20 = cArr[i + 11];
        char c21 = cArr[i + 12];
        char c22 = cArr[i + 13];
        char c23 = cArr[i + 14];
        char c24 = cArr[i + 15];
        char c25 = cArr[i + 16];
        char c26 = cArr[i + 17];
        char c27 = cArr[i + 18];
        if ((c13 == '-' && c16 == '-' && ((c19 == ' ' || c19 == 'T') && c22 == ':' && c25 == ':')) || (c13 == '/' && c16 == '/' && ((c19 == ' ' || c19 == 'T') && c22 == ':' && c25 == ':'))) {
            c5 = c9;
            c6 = c10;
            c7 = c11;
            c8 = c12;
            c3 = c14;
            c4 = c15;
            c2 = c17;
            c = c18;
        } else {
            if (c11 == '/' && c14 == '/' && ((c19 == ' ' || c19 == 'T') && c22 == ':' && c25 == ':')) {
                c2 = c9;
                c = c10;
            } else {
                if (c10 != ' ' || c14 != ' ' || c19 != ' ' || c22 != ':' || c25 != ':') {
                    return null;
                }
                int month = month(c11, c12, c13);
                if (month > 0) {
                    c13 = (char) ((month % 10) + 48);
                    c12 = (char) ((month / 10) + 48);
                } else {
                    c12 = '0';
                    c13 = '0';
                }
                c = c9;
                c2 = '0';
            }
            c3 = c12;
            c4 = c13;
            c5 = c15;
            c6 = c16;
            c7 = c17;
            c8 = c18;
        }
        return localDateTime(c5, c6, c7, c8, c3, c4, c2, c, c20, c21, c23, c24, c26, c27);
    }

    public static LocalDateTime parseLocalDateTime20(char[] cArr, int i) {
        char c;
        int i2 = i + 19;
        if (i2 > cArr.length) {
            return null;
        }
        char c2 = cArr[i];
        char c3 = cArr[i + 1];
        char c4 = cArr[i + 2];
        char c5 = cArr[i + 3];
        char c6 = cArr[i + 4];
        char c7 = cArr[i + 5];
        char c8 = cArr[i + 6];
        char c9 = cArr[i + 7];
        char c10 = cArr[i + 8];
        char c11 = cArr[i + 9];
        char c12 = cArr[i + 10];
        char c13 = cArr[i + 11];
        char c14 = cArr[i + 12];
        char c15 = cArr[i + 13];
        char c16 = cArr[i + 14];
        char c17 = cArr[i + 15];
        char c18 = cArr[i + 16];
        char c19 = cArr[i + 17];
        char c20 = cArr[i + 18];
        char c21 = cArr[i2];
        if (c4 != ' ' || c8 != ' ' || c13 != ' ' || c16 != ':' || c19 != ':') {
            return null;
        }
        int month = month(c5, c6, c7);
        char c22 = '0';
        if (month > 0) {
            char c23 = (char) ((month / 10) + 48);
            c = (char) ((month % 10) + 48);
            c22 = c23;
        } else {
            c = '0';
        }
        return localDateTime(c9, c10, c11, c12, c22, c, c2, c3, c14, c15, c17, c18, c20, c21);
    }

    public static LocalDateTime parseLocalDateTime26(byte[] bArr, int i) {
        if (i + 26 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        char c11 = (char) bArr[i + 10];
        char c12 = (char) bArr[i + 11];
        char c13 = (char) bArr[i + 12];
        char c14 = (char) bArr[i + 13];
        char c15 = (char) bArr[i + 14];
        char c16 = (char) bArr[i + 15];
        char c17 = (char) bArr[i + 16];
        char c18 = (char) bArr[i + 17];
        char c19 = (char) bArr[i + 18];
        char c20 = (char) bArr[i + 19];
        char c21 = (char) bArr[i + 20];
        char c22 = (char) bArr[i + 21];
        char c23 = (char) bArr[i + 22];
        char c24 = (char) bArr[i + 23];
        char c25 = (char) bArr[i + 24];
        char c26 = (char) bArr[i + 25];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, '0', '0', '0');
        }
        return null;
    }

    public static LocalDateTime parseLocalDateTime27(byte[] bArr, int i) {
        if (i + 27 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        char c11 = (char) bArr[i + 10];
        char c12 = (char) bArr[i + 11];
        char c13 = (char) bArr[i + 12];
        char c14 = (char) bArr[i + 13];
        char c15 = (char) bArr[i + 14];
        char c16 = (char) bArr[i + 15];
        char c17 = (char) bArr[i + 16];
        char c18 = (char) bArr[i + 17];
        char c19 = (char) bArr[i + 18];
        char c20 = (char) bArr[i + 19];
        char c21 = (char) bArr[i + 20];
        char c22 = (char) bArr[i + 21];
        char c23 = (char) bArr[i + 22];
        char c24 = (char) bArr[i + 23];
        char c25 = (char) bArr[i + 24];
        char c26 = (char) bArr[i + 25];
        char c27 = (char) bArr[i + 26];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, c27, '0', '0');
        }
        return null;
    }

    public static LocalDateTime parseLocalDateTime28(char[] cArr, int i) {
        if (i + 28 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        char c13 = cArr[i + 12];
        char c14 = cArr[i + 13];
        char c15 = cArr[i + 14];
        char c16 = cArr[i + 15];
        char c17 = cArr[i + 16];
        char c18 = cArr[i + 17];
        char c19 = cArr[i + 18];
        char c20 = cArr[i + 19];
        char c21 = cArr[i + 20];
        char c22 = cArr[i + 21];
        char c23 = cArr[i + 22];
        char c24 = cArr[i + 23];
        char c25 = cArr[i + 24];
        char c26 = cArr[i + 25];
        char c27 = cArr[i + 26];
        char c28 = cArr[i + 27];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, c27, c28, '0');
        }
        return null;
    }

    public static LocalDateTime parseLocalDateTime29(byte[] bArr, int i) {
        if (i + 29 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        char c11 = (char) bArr[i + 10];
        char c12 = (char) bArr[i + 11];
        char c13 = (char) bArr[i + 12];
        char c14 = (char) bArr[i + 13];
        char c15 = (char) bArr[i + 14];
        char c16 = (char) bArr[i + 15];
        char c17 = (char) bArr[i + 16];
        char c18 = (char) bArr[i + 17];
        char c19 = (char) bArr[i + 18];
        char c20 = (char) bArr[i + 19];
        char c21 = (char) bArr[i + 20];
        char c22 = (char) bArr[i + 21];
        char c23 = (char) bArr[i + 22];
        char c24 = (char) bArr[i + 23];
        char c25 = (char) bArr[i + 24];
        char c26 = (char) bArr[i + 25];
        char c27 = (char) bArr[i + 26];
        char c28 = (char) bArr[i + 27];
        char c29 = (char) bArr[i + 28];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, c27, c28, c29);
        }
        return null;
    }

    public static LocalDateTime parseLocalDateTimeX(char[] cArr, int i, int i2) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        if (cArr == null || i2 == 0 || i2 < 21 || i2 > 29) {
            return null;
        }
        char c10 = cArr[i];
        char c11 = cArr[i + 1];
        char c12 = cArr[i + 2];
        char c13 = cArr[i + 3];
        char c14 = cArr[i + 4];
        char c15 = cArr[i + 5];
        char c16 = cArr[i + 6];
        char c17 = cArr[i + 7];
        char c18 = cArr[i + 8];
        char c19 = cArr[i + 9];
        char c20 = cArr[i + 10];
        char c21 = cArr[i + 11];
        char c22 = cArr[i + 12];
        char c23 = cArr[i + 13];
        char c24 = cArr[i + 14];
        char c25 = cArr[i + 15];
        char c26 = cArr[i + 16];
        char c27 = cArr[i + 17];
        char c28 = cArr[i + 18];
        char c29 = cArr[i + 19];
        char c30 = '0';
        switch (i2) {
            case 21:
                c = cArr[i + 20];
                c2 = '0';
                c3 = '0';
                c4 = c3;
                c5 = c4;
                c6 = c5;
                c7 = c6;
                c8 = c7;
                break;
            case 22:
                char c31 = cArr[i + 20];
                c2 = cArr[i + 21];
                c = c31;
                c3 = '0';
                c4 = c3;
                c5 = c4;
                c6 = c5;
                c7 = c6;
                c8 = c7;
                break;
            case 23:
                char c32 = cArr[i + 20];
                c2 = cArr[i + 21];
                c3 = cArr[i + 22];
                c = c32;
                c4 = '0';
                c5 = c4;
                c6 = c5;
                c7 = c6;
                c8 = c7;
                break;
            case 24:
                char c33 = cArr[i + 20];
                c2 = cArr[i + 21];
                c3 = cArr[i + 22];
                c4 = cArr[i + 23];
                c = c33;
                c5 = '0';
                c6 = c5;
                c7 = c6;
                c8 = c7;
                break;
            case 25:
                char c34 = cArr[i + 20];
                c2 = cArr[i + 21];
                c3 = cArr[i + 22];
                c4 = cArr[i + 23];
                c9 = cArr[i + 24];
                c = c34;
                c6 = '0';
                c7 = '0';
                c8 = c7;
                c30 = c9;
                c5 = c8;
                break;
            case 26:
                char c35 = cArr[i + 20];
                c2 = cArr[i + 21];
                c3 = cArr[i + 22];
                c4 = cArr[i + 23];
                c9 = cArr[i + 24];
                c6 = cArr[i + 25];
                c = c35;
                c7 = '0';
                c8 = c7;
                c30 = c9;
                c5 = c8;
                break;
            case 27:
                char c36 = cArr[i + 20];
                c2 = cArr[i + 21];
                c3 = cArr[i + 22];
                c4 = cArr[i + 23];
                c9 = cArr[i + 24];
                c6 = cArr[i + 25];
                c7 = cArr[i + 26];
                c = c36;
                c8 = '0';
                c30 = c9;
                c5 = c8;
                break;
            case 28:
                char c37 = cArr[i + 20];
                c2 = cArr[i + 21];
                c3 = cArr[i + 22];
                c4 = cArr[i + 23];
                char c38 = cArr[i + 24];
                c6 = cArr[i + 25];
                c7 = cArr[i + 26];
                c8 = cArr[i + 27];
                c = c37;
                c5 = '0';
                c30 = c38;
                break;
            default:
                char c39 = cArr[i + 20];
                c2 = cArr[i + 21];
                char c40 = cArr[i + 22];
                char c41 = cArr[i + 23];
                char c42 = cArr[i + 24];
                char c43 = cArr[i + 25];
                char c44 = cArr[i + 26];
                char c45 = cArr[i + 27];
                char c46 = cArr[i + 28];
                c = c39;
                c3 = c40;
                c30 = c42;
                c4 = c41;
                c6 = c43;
                c5 = c46;
                c8 = c45;
                c7 = c44;
                break;
        }
        if (c14 != '-' || c17 != '-') {
            return null;
        }
        if ((c20 == ' ' || c20 == 'T') && c23 == ':' && c26 == ':' && c29 == '.') {
            return localDateTime(c10, c11, c12, c13, c15, c16, c18, c19, c21, c22, c24, c25, c27, c28, c, c2, c3, c4, c30, c6, c7, c8, c5);
        }
        return null;
    }

    public static LocalTime parseLocalTime(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        if (c3 == ':' && c6 == ':' && c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9') {
            int i = ((c - '0') * 10) + (c2 - '0');
            if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
                int i2 = ((c4 - '0') * 10) + (c5 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    return LocalTime.of(i, i2, ((c7 - '0') * 10) + (c8 - '0'));
                }
            }
        }
        return null;
    }

    public static LocalTime parseLocalTime10(byte[] bArr, int i) {
        if (i + 10 > bArr.length) {
            return null;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        byte b3 = bArr[i + 2];
        byte b4 = bArr[i + 3];
        byte b5 = bArr[i + 4];
        byte b6 = bArr[i + 5];
        byte b7 = bArr[i + 6];
        byte b8 = bArr[i + 7];
        byte b9 = bArr[i + 8];
        byte b10 = bArr[i + 9];
        if (b3 == 58 && b6 == 58 && b9 == 46 && b >= 48 && b <= 57 && b2 >= 48 && b2 <= 57) {
            int i2 = ((b - 48) * 10) + (b2 - 48);
            if (b4 >= 48 && b4 <= 57 && b5 >= 48 && b5 <= 57) {
                int i3 = ((b4 - 48) * 10) + (b5 - 48);
                if (b7 >= 48 && b7 <= 57 && b8 >= 48 && b8 <= 57) {
                    int i4 = ((b7 - 48) * 10) + (b8 - 48);
                    if (b10 >= 48 && b10 <= 57) {
                        return LocalTime.of(i2, i3, i4, (b10 - 48) * 100 * 1000000);
                    }
                }
            }
        }
        return null;
    }

    public static LocalTime parseLocalTime11(byte[] bArr, int i) {
        if (i + 11 > bArr.length) {
            return null;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        byte b3 = bArr[i + 2];
        byte b4 = bArr[i + 3];
        byte b5 = bArr[i + 4];
        byte b6 = bArr[i + 5];
        byte b7 = bArr[i + 6];
        byte b8 = bArr[i + 7];
        byte b9 = bArr[i + 8];
        byte b10 = bArr[i + 9];
        byte b11 = bArr[i + 10];
        if (b3 == 58 && b6 == 58 && b9 == 46 && b >= 48 && b <= 57 && b2 >= 48 && b2 <= 57) {
            int i2 = ((b - 48) * 10) + (b2 - 48);
            if (b4 >= 48 && b4 <= 57 && b5 >= 48 && b5 <= 57) {
                int i3 = ((b4 - 48) * 10) + (b5 - 48);
                if (b7 >= 48 && b7 <= 57 && b8 >= 48 && b8 <= 57) {
                    int i4 = ((b7 - 48) * 10) + (b8 - 48);
                    if (b10 >= 48 && b10 <= 57 && b11 >= 48 && b11 <= 57) {
                        return LocalTime.of(i2, i3, i4, (((b10 - 48) * 100) + ((b11 - 48) * 10)) * 1000000);
                    }
                }
            }
        }
        return null;
    }

    public static LocalTime parseLocalTime12(byte[] bArr, int i) {
        if (i + 12 > bArr.length) {
            return null;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        byte b3 = bArr[i + 2];
        byte b4 = bArr[i + 3];
        byte b5 = bArr[i + 4];
        byte b6 = bArr[i + 5];
        byte b7 = bArr[i + 6];
        byte b8 = bArr[i + 7];
        byte b9 = bArr[i + 8];
        byte b10 = bArr[i + 9];
        byte b11 = bArr[i + 10];
        byte b12 = bArr[i + 11];
        if (b3 == 58 && b6 == 58 && b9 == 46 && b >= 48 && b <= 57 && b2 >= 48 && b2 <= 57) {
            int i2 = ((b - 48) * 10) + (b2 - 48);
            if (b4 >= 48 && b4 <= 57 && b5 >= 48 && b5 <= 57) {
                int i3 = ((b4 - 48) * 10) + (b5 - 48);
                if (b7 >= 48 && b7 <= 57 && b8 >= 48 && b8 <= 57) {
                    int i4 = ((b7 - 48) * 10) + (b8 - 48);
                    if (b10 >= 48 && b10 <= 57 && b11 >= 48 && b11 <= 57 && b12 >= 48 && b12 <= 57) {
                        return LocalTime.of(i2, i3, i4, (((b10 - 48) * 100) + ((b11 - 48) * 10) + (b12 - 48)) * 1000000);
                    }
                }
            }
        }
        return null;
    }

    public static LocalTime parseLocalTime18(byte[] bArr, int i) {
        if (i + 18 > bArr.length) {
            return null;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        byte b3 = bArr[i + 2];
        byte b4 = bArr[i + 3];
        byte b5 = bArr[i + 4];
        byte b6 = bArr[i + 5];
        byte b7 = bArr[i + 6];
        byte b8 = bArr[i + 7];
        byte b9 = bArr[i + 8];
        byte b10 = bArr[i + 9];
        byte b11 = bArr[i + 10];
        byte b12 = bArr[i + 11];
        byte b13 = bArr[i + 12];
        byte b14 = bArr[i + 13];
        byte b15 = bArr[i + 14];
        byte b16 = bArr[i + 15];
        byte b17 = bArr[i + 16];
        byte b18 = bArr[i + 17];
        if (b3 != 58 || b6 != 58 || b9 != 46 || b < 48 || b > 57 || b2 < 48 || b2 > 57) {
            return null;
        }
        int i2 = ((b - 48) * 10) + (b2 - 48);
        if (b4 < 48 || b4 > 57 || b5 < 48 || b5 > 57) {
            return null;
        }
        int i3 = ((b4 - 48) * 10) + (b5 - 48);
        if (b7 < 48 || b7 > 57 || b8 < 48 || b8 > 57) {
            return null;
        }
        int i4 = ((b7 - 48) * 10) + (b8 - 48);
        if (b10 < 48 || b10 > 57 || b11 < 48 || b11 > 57 || b12 < 48 || b12 > 57 || b13 < 48 || b13 > 57 || b14 < 48 || b14 > 57 || b15 < 48 || b15 > 57 || b16 < 48 || b16 > 57 || b17 < 48 || b17 > 57 || b18 < 48 || b18 > 57) {
            return null;
        }
        return LocalTime.of(i2, i3, i4, ((b10 - 48) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((b11 - 48) * 10000000) + ((b12 - 48) * 1000000) + ((b13 - 48) * 100000) + ((b14 - 48) * 10000) + ((b15 - 48) * 1000) + ((b16 + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100) + ((b17 - 48) * 10) + b18 + JSONB.Constants.BC_INT64_BYTE_ZERO);
    }

    public static LocalTime parseLocalTime5(byte[] bArr, int i) {
        if (i + 5 > bArr.length) {
            return null;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        byte b3 = bArr[i + 2];
        byte b4 = bArr[i + 3];
        byte b5 = bArr[i + 4];
        if (b3 == 58 && b >= 48 && b <= 57 && b2 >= 48 && b2 <= 57) {
            int i2 = ((b - 48) * 10) + (b2 - 48);
            if (b4 >= 48 && b4 <= 57 && b5 >= 48 && b5 <= 57) {
                return LocalTime.of(i2, ((b4 - 48) * 10) + (b5 - 48));
            }
        }
        return null;
    }

    public static LocalTime parseLocalTime8(byte[] bArr, int i) {
        if (i + 8 > bArr.length) {
            return null;
        }
        return parseLocalTime((char) bArr[i], (char) bArr[i + 1], (char) bArr[i + 2], (char) bArr[i + 3], (char) bArr[i + 4], (char) bArr[i + 5], (char) bArr[i + 6], (char) bArr[i + 7]);
    }

    public static long parseMillis(String str) {
        return parseMillis(str, DEFAULT_ZONE_ID);
    }

    /* JADX WARN: Code restructure failed: missing block: B:164:0x00dd, code lost:
    
        if (r1 == ':') goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x01f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseMillis19(java.lang.String r23, java.time.ZoneId r24) {
        /*
            Method dump skipped, instructions count: 1093
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseMillis19(java.lang.String, java.time.ZoneId):long");
    }

    public static long parseMillisYMDHMS19(String str, ZoneId zoneId) {
        int i;
        if (str == null) {
            return 0L;
        }
        if (str.length() != 19) {
            throw new DateTimeParseException("illegal input " + str, str, 0);
        }
        char charAt = str.charAt(0);
        char charAt2 = str.charAt(1);
        char charAt3 = str.charAt(2);
        char charAt4 = str.charAt(3);
        char charAt5 = str.charAt(4);
        char charAt6 = str.charAt(5);
        char charAt7 = str.charAt(6);
        char charAt8 = str.charAt(7);
        char charAt9 = str.charAt(8);
        char charAt10 = str.charAt(9);
        char charAt11 = str.charAt(10);
        char charAt12 = str.charAt(11);
        char charAt13 = str.charAt(12);
        char charAt14 = str.charAt(13);
        char charAt15 = str.charAt(14);
        char charAt16 = str.charAt(15);
        char charAt17 = str.charAt(16);
        char charAt18 = str.charAt(17);
        char charAt19 = str.charAt(18);
        if (charAt5 != '-' || charAt8 != '-' || charAt11 != ' ' || charAt14 != ':' || charAt17 != ':') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9' || charAt3 < '0' || charAt3 > '9' || charAt4 < '0' || charAt4 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i2 = ((charAt - '0') * 1000) + ((charAt2 - '0') * 100) + ((charAt3 - '0') * 10) + (charAt4 - '0');
        if (charAt6 < '0' || charAt6 > '9' || charAt7 < '0' || charAt7 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i3 = ((charAt6 - '0') * 10) + (charAt7 - '0');
        if ((i3 == 0 && i2 != 0) || i3 > 12) {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        if (charAt9 < '0' || charAt9 > '9' || charAt10 < '0' || charAt10 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i4 = ((charAt9 - '0') * 10) + (charAt10 - '0');
        if (i3 != 2) {
            i = (i3 == 4 || i3 == 6 || i3 == 9 || i3 == 11) ? 30 : 31;
        } else {
            i = (i2 & 3) == 0 && (i2 % 100 != 0 || i2 % 400 == 0) ? 29 : 28;
        }
        if ((i4 == 0 && i2 != 0) || i4 > i) {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        if (charAt12 < '0' || charAt12 > '9' || charAt13 < '0' || charAt13 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i5 = ((charAt12 - '0') * 10) + (charAt13 - '0');
        if (charAt15 < '0' || charAt15 > '9' || charAt16 < '0' || charAt16 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i6 = ((charAt15 - '0') * 10) + (charAt16 - '0');
        if (charAt18 < '0' || charAt18 > '9' || charAt19 < '0' || charAt19 > '9') {
            throw new DateTimeParseException("illegal input", str, 0);
        }
        int i7 = ((charAt18 - '0') * 10) + (charAt19 - '0');
        if (i2 == 0 && i3 == 0 && i4 == 0) {
            i2 = 1970;
            i3 = 1;
            i4 = 1;
        }
        long j = (i2 * 365) + (((i2 + 3) / 4) - ((i2 + 99) / 100)) + ((i2 + 399) / 400) + (((i3 * 367) - 362) / 12) + (i4 - 1);
        if (i3 > 2) {
            j--;
            if (!((i2 & 3) == 0 && (i2 % 100 != 0 || i2 % 400 == 0))) {
                j--;
            }
        }
        long j2 = ((j - 719528) * 86400) + (i5 * 3600) + (i6 * 60) + i7;
        ZoneId zoneId2 = zoneId == null ? DEFAULT_ZONE_ID : zoneId;
        return (j2 - ((!(zoneId2 == SHANGHAI_ZONE_ID || zoneId2.getRules() == SHANGHAI_ZONE_RULES) || j2 < 684900000) ? (zoneId2 == ZoneOffset.UTC || "UTC".equals(zoneId2.getId())) ? 0 : zoneId2.getRules().getOffset(LocalDateTime.of(LocalDate.of(i2, i3, i4), LocalTime.of(i5, i6, i7, 0))).getTotalSeconds() : 28800)) * 1000;
    }

    public static ZonedDateTime parseZonedDateTime(String str) {
        return parseZonedDateTime(str, DEFAULT_ZONE_ID);
    }

    public static int readNanos(char[] cArr, int i, int i2) {
        switch (i) {
            case 1:
                return (cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH;
            case 2:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000);
            case 3:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000) + ((cArr[i2 + 2] - '0') * 1000000);
            case 4:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000) + ((cArr[i2 + 2] - '0') * 1000000) + ((cArr[i2 + 3] - '0') * 100000);
            case 5:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000) + ((cArr[i2 + 2] - '0') * 1000000) + ((cArr[i2 + 3] - '0') * 100000) + ((cArr[i2 + 4] - '0') * 10000);
            case 6:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000) + ((cArr[i2 + 2] - '0') * 1000000) + ((cArr[i2 + 3] - '0') * 100000) + ((cArr[i2 + 4] - '0') * 10000) + ((cArr[i2 + 5] - '0') * 1000);
            case 7:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000) + ((cArr[i2 + 2] - '0') * 1000000) + ((cArr[i2 + 3] - '0') * 100000) + ((cArr[i2 + 4] - '0') * 10000) + ((cArr[i2 + 5] - '0') * 1000) + ((cArr[i2 + 6] - '0') * 100);
            case 8:
                return ((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000) + ((cArr[i2 + 2] - '0') * 1000000) + ((cArr[i2 + 3] - '0') * 100000) + ((cArr[i2 + 4] - '0') * 10000) + ((cArr[i2 + 5] - '0') * 1000) + ((cArr[i2 + 6] - '0') * 100) + ((cArr[i2 + 7] - '0') * 10);
            default:
                return ((((((((((cArr[i2] - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((cArr[i2 + 1] - '0') * 10000000)) + ((cArr[i2 + 2] - '0') * 1000000)) + ((cArr[i2 + 3] - '0') * 100000)) + ((cArr[i2 + 4] - '0') * 10000)) + ((cArr[i2 + 5] - '0') * 1000)) + ((cArr[i2 + 6] - '0') * 100)) + ((cArr[i2 + 7] - '0') * 10)) + cArr[i2 + 8]) - 48;
        }
    }

    public static String toString(Date date) {
        return toString(date.getTime(), false, DEFAULT_ZONE_ID);
    }

    public static long utcSeconds(int i, int i2, int i3, int i4, int i5, int i6) {
        boolean z = true;
        long j = (i * 365) + (((i + 3) / 4) - ((i + 99) / 100)) + ((i + 399) / 400) + (((i2 * 367) - 362) / 12) + (i3 - 1);
        if (i2 > 2) {
            j--;
            if ((i & 3) != 0 || (i % 100 == 0 && i % 400 != 0)) {
                z = false;
            }
            if (!z) {
                j--;
            }
        }
        return ((j - 719528) * 86400) + (i4 * 3600) + (i5 * 60) + i6;
    }

    public static String formatYMD8(long j, ZoneId zoneId) {
        int shanghaiZoneOffsetTotalSeconds;
        long j2;
        String str;
        long floorDiv = Math.floorDiv(j, 1000L);
        ZoneId zoneId2 = zoneId == null ? DEFAULT_ZONE_ID : zoneId;
        if (zoneId2 != SHANGHAI_ZONE_ID && zoneId2.getRules() != SHANGHAI_ZONE_RULES) {
            shanghaiZoneOffsetTotalSeconds = zoneId2.getRules().getOffset(Instant.ofEpochMilli(j)).getTotalSeconds();
        } else {
            shanghaiZoneOffsetTotalSeconds = getShanghaiZoneOffsetTotalSeconds(floorDiv);
        }
        long floorDiv2 = Math.floorDiv(floorDiv + shanghaiZoneOffsetTotalSeconds, 86400L);
        int i = (int) ((floorDiv2 - f12778e) + 128);
        String[] strArr = C1749c.f12781a;
        if (i >= 0 && i < strArr.length && (str = strArr[i]) != null) {
            return str;
        }
        long j3 = (floorDiv2 + 719528) - 60;
        if (j3 < 0) {
            long j4 = ((j3 + 1) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((((j5 * 365) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((((365 * j5) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
        }
        int i2 = (int) j6;
        int i3 = ((i2 * 5) + 2) / 153;
        int i4 = ((i3 + 2) % 12) + 1;
        int i5 = (i2 - (((i3 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i3 / 10);
        if (j7 >= -999999999 && j7 <= 999999999) {
            int i6 = (int) j7;
            int i7 = i6 / 100;
            char[] cArr = new char[8];
            Unsafe unsafe = JDKUtils.UNSAFE;
            long j8 = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
            int[] iArr = IOUtils.PACKED_DIGITS_UTF16;
            unsafe.putInt(cArr, j8, iArr[i7]);
            unsafe.putInt(cArr, j8 + 4, iArr[i6 - (i7 * 100)]);
            unsafe.putInt(cArr, 8 + j8, iArr[i4]);
            unsafe.putInt(cArr, j8 + 12, iArr[i5]);
            String str2 = new String(cArr);
            if (i >= 0 && i < strArr.length) {
                strArr[i] = str2;
            }
            return str2;
        }
        throw new DateTimeException("Invalid year " + j7);
    }

    public static String formatYMDHMS19(Date date, ZoneId zoneId) {
        long j;
        if (date == null) {
            return null;
        }
        long time = date.getTime();
        ZoneId zoneId2 = zoneId == null ? DEFAULT_ZONE_ID : zoneId;
        long floorDiv = Math.floorDiv(time, 1000L);
        long totalSeconds = floorDiv + ((!(zoneId2 == SHANGHAI_ZONE_ID || zoneId2.getRules() == SHANGHAI_ZONE_RULES) || floorDiv <= 684900000) ? zoneId2.getRules().getOffset(Instant.ofEpochMilli(time)).getTotalSeconds() : 28800);
        long floorDiv2 = Math.floorDiv(totalSeconds, 86400L);
        int floorMod = (int) Math.floorMod(totalSeconds, 86400L);
        long j2 = (floorDiv2 + 719528) - 60;
        if (j2 < 0) {
            long j3 = ((j2 + 1) / 146097) - 1;
            j = j3 * 400;
            j2 += (-j3) * 146097;
        } else {
            j = 0;
        }
        long j4 = ((j2 * 400) + 591) / 146097;
        long j5 = j2 - ((((j4 * 365) + (j4 / 4)) - (j4 / 100)) + (j4 / 400));
        if (j5 < 0) {
            j4--;
            j5 = j2 - ((((365 * j4) + (j4 / 4)) - (j4 / 100)) + (j4 / 400));
        }
        int i = (int) j5;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j6 = j4 + j + (i2 / 10);
        if (j6 < -999999999 || j6 > 999999999) {
            throw new DateTimeException("Invalid year " + j6);
        }
        int i5 = (int) j6;
        long j7 = floorMod;
        if (j7 >= 0 && j7 <= 86399) {
            int i6 = (int) (j7 / 3600);
            long j8 = j7 - (i6 * 3600);
            char[] cArr = new char[19];
            IOUtils.writeLocalDate(cArr, 0, i5, i3, i4);
            cArr[10] = ' ';
            IOUtils.writeLocalTime(cArr, 11, i6, (int) (j8 / 60), (int) (j8 - (r2 * 60)));
            return new String(cArr);
        }
        throw new DateTimeException("Invalid secondOfDay " + j7);
    }

    public static LocalDateTime localDateTime(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9, char c10, char c11, char c12, char c13, char c14, char c15, char c16, char c17, char c18, char c19, char c20, char c21, char c22, char c23) {
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            int i = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
            if (c5 >= '0' && c5 <= '9' && c6 >= '0' && c6 <= '9') {
                int i2 = ((c5 - '0') * 10) + (c6 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    int i3 = ((c7 - '0') * 10) + (c8 - '0');
                    if (c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
                        int i4 = ((c9 - '0') * 10) + (c10 - '0');
                        if (c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9') {
                            int i5 = ((c11 - '0') * 10) + (c12 - '0');
                            if (c13 >= '0' && c13 <= '9' && c14 >= '0' && c14 <= '9') {
                                int i6 = ((c13 - '0') * 10) + (c14 - '0');
                                if (c15 >= '0' && c15 <= '9' && c16 >= '0' && c16 <= '9' && c17 >= '0' && c17 <= '9' && c18 >= '0' && c18 <= '9' && c19 >= '0' && c19 <= '9' && c20 >= '0' && c20 <= '9' && c21 >= '0' && c21 <= '9' && c22 >= '0' && c22 <= '9' && c23 >= '0' && c23 <= '9') {
                                    return LocalDateTime.of(i, i2, i3, i4, i5, i6, (c23 - '0') + ((c15 - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((c16 - '0') * 10000000) + ((c17 - '0') * 1000000) + ((c18 - '0') * 100000) + ((c19 - '0') * 10000) + ((c20 - '0') * 1000) + ((c21 - '0') * 100) + ((c22 - '0') * 10));
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static Date parseDate(String str, String str2, ZoneId zoneId) {
        if (str == null || str.isEmpty() || "null".equals(str)) {
            return null;
        }
        if (str2 != null && !str2.isEmpty()) {
            char c = 65535;
            switch (str2.hashCode()) {
                case -347789785:
                    if (str2.equals("yyyyMMddHHmmssSSSZ")) {
                        c = 0;
                        break;
                    }
                    break;
                case -276306848:
                    if (str2.equals("yyyyMMdd")) {
                        c = 1;
                        break;
                    }
                    break;
                case -159776256:
                    if (str2.equals("yyyy-MM-dd")) {
                        c = 2;
                        break;
                    }
                    break;
                case -102516032:
                    if (str2.equals("yyyy/MM/dd")) {
                        c = 3;
                        break;
                    }
                    break;
                case 311496928:
                    if (str2.equals("yyyy/MM/dd HH:mm:ss")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1333195168:
                    if (str2.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                        c = 5;
                        break;
                    }
                    break;
                case 1397504320:
                    if (str2.equals("dd.MM.yyyy HH:mm:ss")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1798231098:
                    if (str2.equals("yyyy-MM-dd'T'HH:mm:ss")) {
                        c = 7;
                        break;
                    }
                    break;
                case 2095190916:
                    if (str2.equals("iso8601")) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return new Date(parseMillis(str, DEFAULT_ZONE_ID));
                case 1:
                    LocalDate parse = LocalDate.parse(str, DateTimeFormatter.ofPattern(str2));
                    return new Date(millis(zoneId, parse.getYear(), parse.getMonthValue(), parse.getDayOfMonth(), 0, 0, 0, 0));
                case 2:
                    return new Date(m7578b(str, zoneId, DateTimeFormatPattern.DATE_FORMAT_10_DASH));
                case 3:
                    return new Date(m7578b(str, zoneId, DateTimeFormatPattern.DATE_FORMAT_10_SLASH));
                case 4:
                    return new Date(m7579c(str, zoneId, DateTimeFormatPattern.DATE_TIME_FORMAT_19_SLASH));
                case 5:
                    return new Date(parseMillisYMDHMS19(str, zoneId));
                case 6:
                    return new Date(m7579c(str, zoneId, DateTimeFormatPattern.DATE_TIME_FORMAT_19_DOT));
                case 7:
                    return new Date(m7579c(str, zoneId, DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH_T));
                case '\b':
                    return parseDate(str);
                default:
                    if (zoneId == null) {
                        zoneId = DEFAULT_ZONE_ID;
                    }
                    return new Date(millis(LocalDateTime.parse(str, DateTimeFormatter.ofPattern(str2)), zoneId));
            }
        }
        long parseMillis = parseMillis(str, zoneId);
        if (parseMillis == 0) {
            return null;
        }
        return new Date(parseMillis);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
    
        if (r4.equals("0000-0-00") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDateTime parseLocalDateTime(java.lang.String r4, int r5, int r6) {
        /*
            r0 = 0
            if (r4 == 0) goto L80
            if (r6 != 0) goto L7
            goto L80
        L7:
            char[] r1 = new char[r6]
            int r2 = r5 + r6
            r3 = 0
            r4.getChars(r5, r2, r1, r3)
            java.time.LocalDateTime r6 = parseLocalDateTime(r1, r5, r6)
            if (r6 != 0) goto L7f
            int r6 = r4.hashCode()
            r1 = -1
            switch(r6) {
                case -2035181974: goto L6c;
                case -2035179184: goto L61;
                case -1328438272: goto L56;
                case -1173940224: goto L4b;
                case 0: goto L40;
                case 3392903: goto L35;
                case 86814033: goto L2a;
                case 1333954784: goto L1f;
                default: goto L1d;
            }
        L1d:
            r3 = r1
            goto L75
        L1f:
            java.lang.String r6 = "0000-00-00"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L28
            goto L1d
        L28:
            r3 = 7
            goto L75
        L2a:
            java.lang.String r6 = "0000年00月00日"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L33
            goto L1d
        L33:
            r3 = 6
            goto L75
        L35:
            java.lang.String r6 = "null"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L3e
            goto L1d
        L3e:
            r3 = 5
            goto L75
        L40:
            java.lang.String r6 = ""
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L49
            goto L1d
        L49:
            r3 = 4
            goto L75
        L4b:
            java.lang.String r6 = "00000000"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L54
            goto L1d
        L54:
            r3 = 3
            goto L75
        L56:
            java.lang.String r6 = "000000000000"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L5f
            goto L1d
        L5f:
            r3 = 2
            goto L75
        L61:
            java.lang.String r6 = "0000-00-0"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L6a
            goto L1d
        L6a:
            r3 = 1
            goto L75
        L6c:
            java.lang.String r6 = "0000-0-00"
            boolean r6 = r4.equals(r6)
            if (r6 != 0) goto L75
            goto L1d
        L75:
            switch(r3) {
                case 0: goto L7e;
                case 1: goto L7e;
                case 2: goto L7e;
                case 3: goto L7e;
                case 4: goto L7e;
                case 5: goto L7e;
                case 6: goto L7e;
                case 7: goto L7e;
                default: goto L78;
            }
        L78:
            java.time.format.DateTimeParseException r6 = new java.time.format.DateTimeParseException
            r6.<init>(r4, r4, r5)
            throw r6
        L7e:
            return r0
        L7f:
            return r6
        L80:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime(java.lang.String, int, int):java.time.LocalDateTime");
    }

    public static long parseMillis(String str, ZoneId zoneId) {
        if (str == null) {
            return 0L;
        }
        char[] charArray = str.toCharArray();
        return parseMillis(charArray, 0, charArray.length, zoneId);
    }

    public static ZonedDateTime parseZonedDateTime(String str, ZoneId zoneId) {
        ZonedDateTime parseZonedDateTime;
        if (str == null || str.length() == 0) {
            return null;
        }
        if (JDKUtils.ANDROID_SDK_INT >= 34) {
            byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
            parseZonedDateTime = parseZonedDateTime(bytes, 0, bytes.length, zoneId);
        } else {
            parseZonedDateTime = parseZonedDateTime(str.toCharArray(), 0, str.toCharArray().length, zoneId);
        }
        if (parseZonedDateTime != null) {
            return parseZonedDateTime;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    c = 0;
                    break;
                }
                break;
            case 3392903:
                if (str.equals("null")) {
                    c = 1;
                    break;
                }
                break;
            case 1333954784:
                if (str.equals("0000-00-00")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                return null;
            default:
                throw new DateTimeParseException(str, str, 0);
        }
    }

    public static String toString(long j, boolean z, ZoneId zoneId) {
        int shanghaiZoneOffsetTotalSeconds;
        long j2;
        int i;
        long floorDiv = Math.floorDiv(j, 1000L);
        if (zoneId != SHANGHAI_ZONE_ID && zoneId.getRules() != SHANGHAI_ZONE_RULES) {
            shanghaiZoneOffsetTotalSeconds = zoneId.getRules().getOffset(Instant.ofEpochMilli(j)).getTotalSeconds();
        } else {
            shanghaiZoneOffsetTotalSeconds = getShanghaiZoneOffsetTotalSeconds(floorDiv);
        }
        long j3 = floorDiv + shanghaiZoneOffsetTotalSeconds;
        long floorDiv2 = Math.floorDiv(j3, 86400L);
        int floorMod = (int) Math.floorMod(j3, 86400L);
        long j4 = (floorDiv2 + 719528) - 60;
        if (j4 < 0) {
            long j5 = ((j4 + 1) / 146097) - 1;
            j2 = j5 * 400;
            j4 += (-j5) * 146097;
        } else {
            j2 = 0;
        }
        long j6 = ((j4 * 400) + 591) / 146097;
        long j7 = j4 - ((((j6 * 365) + (j6 / 4)) - (j6 / 100)) + (j6 / 400));
        if (j7 < 0) {
            j6--;
            j7 = j4 - ((((365 * j6) + (j6 / 4)) - (j6 / 100)) + (j6 / 400));
        }
        int i2 = (int) j7;
        int i3 = ((i2 * 5) + 2) / 153;
        int i4 = ((i3 + 2) % 12) + 1;
        int i5 = (i2 - (((i3 * 306) + 5) / 10)) + 1;
        long j8 = j6 + j2 + (i3 / 10);
        if (j8 < -999999999 || j8 > 999999999) {
            throw new DateTimeException("Invalid year " + j8);
        }
        int i6 = (int) j8;
        long j9 = floorMod;
        if (j9 >= 0 && j9 <= 86399) {
            int i7 = (int) (j9 / 3600);
            long j10 = j9 - (i7 * 3600);
            int i8 = (int) (j10 / 60);
            int i9 = (int) (j10 - (i8 * 60));
            int floorMod2 = (int) Math.floorMod(j, 1000L);
            if (floorMod2 == 0) {
                i = 0;
            } else {
                if (floorMod2 >= 10) {
                    if (floorMod2 % 100 == 0) {
                        i = 2;
                    } else if (floorMod2 % 10 == 0) {
                        i = 3;
                    }
                }
                i = 4;
            }
            int i10 = i + 19;
            int i11 = (z ? shanghaiZoneOffsetTotalSeconds == 0 ? 1 : 6 : 0) + i10;
            byte[] bArr = new byte[i11];
            IOUtils.writeLocalDate(bArr, 0, i6, i4, i5);
            bArr[10] = 32;
            IOUtils.writeLocalTime(bArr, 11, i7, i8, i9);
            if (i > 0) {
                bArr[19] = Cea608Decoder.f26822e0;
                for (int i12 = 20; i12 < i11; i12++) {
                    bArr[i12] = 48;
                }
                if (floorMod2 < 10) {
                    IOUtils.getChars(floorMod2, i10, bArr);
                } else if (floorMod2 % 100 == 0) {
                    IOUtils.getChars(floorMod2 / 100, i10, bArr);
                } else if (floorMod2 % 10 == 0) {
                    IOUtils.getChars(floorMod2 / 10, i10, bArr);
                } else {
                    IOUtils.getChars(floorMod2, i10, bArr);
                }
            }
            if (z) {
                int i13 = shanghaiZoneOffsetTotalSeconds / 3600;
                if (shanghaiZoneOffsetTotalSeconds == 0) {
                    bArr[i10] = 90;
                } else {
                    int abs = Math.abs(i13);
                    if (i13 >= 0) {
                        bArr[i10] = 43;
                    } else {
                        bArr[i10] = 45;
                    }
                    bArr[i10 + 1] = 48;
                    int i14 = i10 + 3;
                    IOUtils.getChars(abs, i14, bArr);
                    bArr[i14] = 58;
                    bArr[i10 + 4] = 48;
                    int i15 = (shanghaiZoneOffsetTotalSeconds - (i13 * 3600)) / 60;
                    if (i15 < 0) {
                        i15 = -i15;
                    }
                    IOUtils.getChars(i15, i11, bArr);
                }
            }
            return new String(bArr, 0, i11, StandardCharsets.ISO_8859_1);
        }
        throw new DateTimeException("Invalid secondOfDay " + j9);
    }

    public static String formatYMD10(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        return formatYMD10(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
    }

    public static String formatYMD10(Date date) {
        if (date == null) {
            return null;
        }
        return formatYMD10(date.getTime(), DEFAULT_ZONE_ID);
    }

    public static long parseMillis(byte[] bArr, int i, int i2) {
        return parseMillis(bArr, i, i2, StandardCharsets.UTF_8, DEFAULT_ZONE_ID);
    }

    public static String formatYMD10(long j, ZoneId zoneId) {
        int shanghaiZoneOffsetTotalSeconds;
        long j2;
        String str;
        ZoneId zoneId2 = zoneId == null ? DEFAULT_ZONE_ID : zoneId;
        long floorDiv = Math.floorDiv(j, 1000L);
        if (zoneId2 != SHANGHAI_ZONE_ID && zoneId2.getRules() != SHANGHAI_ZONE_RULES) {
            shanghaiZoneOffsetTotalSeconds = zoneId2.getRules().getOffset(Instant.ofEpochMilli(j)).getTotalSeconds();
        } else {
            shanghaiZoneOffsetTotalSeconds = getShanghaiZoneOffsetTotalSeconds(floorDiv);
        }
        long floorDiv2 = Math.floorDiv(floorDiv + shanghaiZoneOffsetTotalSeconds, 86400L);
        int i = (int) ((floorDiv2 - f12778e) + 128);
        String[] strArr = C1748b.f12780a;
        if (i >= 0 && i < strArr.length && (str = strArr[i]) != null) {
            return str;
        }
        long j3 = (floorDiv2 + 719528) - 60;
        if (j3 < 0) {
            long j4 = ((j3 + 1) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((((j5 * 365) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((((365 * j5) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
        }
        int i2 = (int) j6;
        int i3 = ((i2 * 5) + 2) / 153;
        int i4 = ((i3 + 2) % 12) + 1;
        int i5 = (i2 - (((i3 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i3 / 10);
        if (j7 >= -999999999 && j7 <= 999999999) {
            char[] cArr = new char[10];
            IOUtils.writeLocalDate(cArr, 0, (int) j7, i4, i5);
            String str2 = new String(cArr);
            if (i >= 0 && i < strArr.length) {
                strArr[i] = str2;
            }
            return str2;
        }
        throw new DateTimeException("Invalid year " + j7);
    }

    public static LocalDate parseLocalDate(byte[] bArr, int i, int i2) {
        if (bArr == null || i2 == 0) {
            return null;
        }
        if (i + i2 <= bArr.length) {
            switch (i2) {
                case 8:
                    return parseLocalDate8(bArr, i);
                case 9:
                    return parseLocalDate9(bArr, i);
                case 10:
                    return parseLocalDate10(bArr, i);
                case 11:
                    return parseLocalDate11(bArr, i);
                default:
                    if (i2 == 4 && bArr[i] == 110 && bArr[i + 1] == 117 && bArr[i + 2] == 108 && bArr[i + 3] == 108) {
                        return null;
                    }
                    String str = new String(bArr, i, i2);
                    throw new DateTimeParseException("illegal input " + str, str, 0);
            }
        }
        String str2 = new String(bArr, i, i2);
        throw new DateTimeParseException("illegal input " + str2, str2, 0);
    }

    public static long parseMillis(byte[] bArr, int i, int i2, Charset charset) {
        return parseMillis(bArr, i, i2, charset, DEFAULT_ZONE_ID);
    }

    public static long parseMillis(byte[] bArr, int i, int i2, Charset charset, ZoneId zoneId) {
        int i3;
        char c;
        ZoneId zoneId2 = zoneId;
        if (bArr == null || i2 == 0) {
            return 0L;
        }
        if (i2 == 4 && bArr[i] == 110 && bArr[i + 1] == 117 && bArr[i + 2] == 108 && bArr[i + 3] == 108) {
            return 0L;
        }
        char c2 = (char) bArr[i];
        if (c2 != '\"' || bArr[i2 - 1] != 34) {
            if (i2 == 19) {
                return parseMillis19(bArr, i, zoneId2);
            }
            boolean z = false;
            if (i2 <= 19 && (i2 != 16 || ((c = (char) bArr[i + 10]) != '+' && c != '-'))) {
                if ((c2 == '-' || (c2 >= '0' && c2 <= '9')) && IOUtils.isNumber(bArr, i, i2)) {
                    long parseLong = TypeUtils.parseLong(bArr, i, i2);
                    if (i2 == 8 && parseLong >= 19700101 && parseLong <= 21000101) {
                        int i4 = (int) parseLong;
                        int i5 = i4 / 10000;
                        int i6 = (i4 % 10000) / 100;
                        int i7 = i4 % 100;
                        if (i6 >= 1 && i6 <= 12) {
                            if (i6 != 2) {
                                i3 = (i6 == 4 || i6 == 6 || i6 == 9 || i6 == 11) ? 30 : 31;
                            } else {
                                if ((i5 & 3) == 0 && (i5 % 100 != 0 || i5 % 400 == 0)) {
                                    z = true;
                                }
                                i3 = z ? 29 : 28;
                            }
                            if (i7 <= i3) {
                                parseLong = ZonedDateTime.ofLocal(LocalDateTime.of(i5, i6, i7, 0, 0, 0), zoneId2, null).toEpochSecond() * 1000;
                            }
                        }
                    }
                    return parseLong;
                }
                if (((char) bArr[i2 - 1]) == 'Z') {
                    zoneId2 = ZoneOffset.UTC;
                }
                LocalDateTime parseLocalDateTime = parseLocalDateTime(bArr, i, i2);
                if (parseLocalDateTime == null && bArr[i] == 48 && bArr[i + 1] == 48 && bArr[i + 2] == 48 && bArr[i + 3] == 48 && bArr[i + 4] == 45 && bArr[i + 5] == 48 && bArr[i + 6] == 48 && bArr[i + 7] == 45 && bArr[i + 8] == 48 && bArr[i + 9] == 48) {
                    parseLocalDateTime = LocalDateTime.of(1970, 1, 1, 0, 0, 0);
                }
                long epochSecond = ZonedDateTime.ofLocal(parseLocalDateTime, zoneId2, null).toEpochSecond();
                return (epochSecond >= 0 || parseLocalDateTime.getNano() <= 0) ? (r2 / 1000000) + (epochSecond * 1000) : (((epochSecond + 1) * 1000) + (r2 / 1000000)) - 1000;
            }
            ZonedDateTime parseZonedDateTime = parseZonedDateTime(bArr, i, i2, zoneId2);
            if (parseZonedDateTime != null) {
                return parseZonedDateTime.toInstant().toEpochMilli();
            }
            String str = new String(bArr, i, i2 - i);
            throw new DateTimeParseException("illegal input " + str, str, 0);
        }
        JSONReader m7306of = JSONReader.m7306of(bArr, i, i2, charset);
        try {
            long time = ((Date) ObjectReaderImplDate.INSTANCE.readObject(m7306of, null, null, 0L)).getTime();
            if (m7306of == null) {
                return time;
            }
            m7306of.close();
            return time;
        } finally {
        }
    }

    public static LocalDateTime parseLocalDateTime(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return null;
        }
        switch (i2) {
            case 4:
                if (cArr[i] == 'n' && cArr[i + 1] == 'u' && cArr[i + 2] == 'l' && cArr[i + 3] == 'l') {
                    return null;
                }
                String str = new String(cArr, i, i2);
                throw new DateTimeParseException("illegal input " + str, str, 0);
            case 5:
            case 6:
            case 7:
            case 13:
            case 15:
            default:
                return parseLocalDateTimeX(cArr, i, i2);
            case 8:
                if (cArr[2] == ':' && cArr[5] == ':') {
                    return LocalDateTime.of(LOCAL_DATE_19700101, parseLocalTime8(cArr, i));
                }
                LocalDate parseLocalDate8 = parseLocalDate8(cArr, i);
                if (parseLocalDate8 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate8, LocalTime.MIN);
            case 9:
                LocalDate parseLocalDate9 = parseLocalDate9(cArr, i);
                if (parseLocalDate9 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate9, LocalTime.MIN);
            case 10:
                LocalDate parseLocalDate10 = parseLocalDate10(cArr, i);
                if (parseLocalDate10 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate10, LocalTime.MIN);
            case 11:
                LocalDate parseLocalDate11 = parseLocalDate11(cArr, i);
                if (parseLocalDate11 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate11, LocalTime.MIN);
            case 12:
                return parseLocalDateTime12(cArr, i);
            case 14:
                return parseLocalDateTime14(cArr, i);
            case 16:
                return parseLocalDateTime16(cArr, i);
            case 17:
                return parseLocalDateTime17(cArr, i);
            case 18:
                return parseLocalDateTime18(cArr, i);
            case 19:
                return parseLocalDateTime19(cArr, i);
            case 20:
                return parseLocalDateTime20(cArr, i);
        }
    }

    public static LocalTime parseLocalTime5(char[] cArr, int i) {
        if (i + 5 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        if (c3 == ':' && c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9') {
            int i2 = ((c - '0') * 10) + (c2 - '0');
            if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
                return LocalTime.of(i2, ((c4 - '0') * 10) + (c5 - '0'));
            }
        }
        return null;
    }

    public static long millis(LocalDateTime localDateTime, ZoneId zoneId) {
        return millis(zoneId, localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth(), localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), localDateTime.getNano());
    }

    public static ZonedDateTime parseZonedDateTime(byte[] bArr, int i, int i2) {
        return parseZonedDateTime(bArr, i, i2, DEFAULT_ZONE_ID);
    }

    public static int readNanos(byte[] bArr, int i, int i2) {
        switch (i) {
            case 1:
                return (bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH;
            case 2:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000);
            case 3:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000);
            case 4:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000) + ((bArr[i2 + 3] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100000);
            case 5:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000) + ((bArr[i2 + 3] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100000) + ((bArr[i2 + 4] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000);
            case 6:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000) + ((bArr[i2 + 3] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100000) + ((bArr[i2 + 4] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000) + ((bArr[i2 + 5] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000);
            case 7:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000) + ((bArr[i2 + 3] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100000) + ((bArr[i2 + 4] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000) + ((bArr[i2 + 5] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000) + ((bArr[i2 + 6] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100);
            case 8:
                return ((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000) + ((bArr[i2 + 3] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100000) + ((bArr[i2 + 4] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000) + ((bArr[i2 + 5] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000) + ((bArr[i2 + 6] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100) + ((bArr[i2 + 7] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10);
            default:
                return ((((((((((bArr[i2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((bArr[i2 + 1] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000000)) + ((bArr[i2 + 2] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000)) + ((bArr[i2 + 3] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100000)) + ((bArr[i2 + 4] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10000)) + ((bArr[i2 + 5] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000)) + ((bArr[i2 + 6] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 100)) + ((bArr[i2 + 7] + JSONB.Constants.BC_INT64_BYTE_ZERO) * 10)) + bArr[i2 + 8]) - 48;
        }
    }

    public static LocalTime parseLocalTime8(char[] cArr, int i) {
        if (i + 8 > cArr.length) {
            return null;
        }
        return parseLocalTime(cArr[i], cArr[i + 1], cArr[i + 2], cArr[i + 3], cArr[i + 4], cArr[i + 5], cArr[i + 6], cArr[i + 7]);
    }

    public static ZonedDateTime parseZonedDateTime(char[] cArr, int i, int i2) {
        return parseZonedDateTime(cArr, i, i2, DEFAULT_ZONE_ID);
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x0469, code lost:
    
        if (r0 != 'Z') goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x05c3, code lost:
    
        if (r15 == 'P') goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x07f3, code lost:
    
        if (r6 != 'Z') goto L343;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0872, code lost:
    
        if (r10 != 'Z') goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x08ec, code lost:
    
        if (r13 != 'Z') goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0968, code lost:
    
        if (r5 != 'Z') goto L443;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x09e1, code lost:
    
        if (r13 != 'Z') goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0a92, code lost:
    
        if (r5 != 'Z') goto L513;
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0c74, code lost:
    
        if (r9 != 'Z') goto L605;
     */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0613  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x069b  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0721  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x07c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x07fc  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0844 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x08be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x093a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x09b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0a64 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0d00  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0adf  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0b5e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0d18 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0bcf  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0d1a  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0c46 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0cbc  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0da1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0d8e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0d91  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0e3f  */
    /* JADX WARN: Removed duplicated region for block: B:601:0x0e57  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0d99  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0c7f  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x0c82  */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0a9f  */
    /* JADX WARN: Removed duplicated region for block: B:629:0x0aa2  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x0975  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x0978  */
    /* JADX WARN: Removed duplicated region for block: B:654:0x08f9  */
    /* JADX WARN: Removed duplicated region for block: B:656:0x08fc  */
    /* JADX WARN: Removed duplicated region for block: B:662:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:665:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:689:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0d0e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.ZonedDateTime parseZonedDateTime(byte[] r59, int r60, int r61, java.time.ZoneId r62) {
        /*
            Method dump skipped, instructions count: 3734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseZonedDateTime(byte[], int, int, java.time.ZoneId):java.time.ZonedDateTime");
    }

    public static LocalTime parseLocalTime10(char[] cArr, int i) {
        if (i + 10 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        if (c3 == ':' && c6 == ':' && c9 == '.' && c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9') {
            int i2 = ((c - '0') * 10) + (c2 - '0');
            if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
                int i3 = ((c4 - '0') * 10) + (c5 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    int i4 = ((c7 - '0') * 10) + (c8 - '0');
                    if (c10 >= '0' && c10 <= '9') {
                        return LocalTime.of(i2, i3, i4, (c10 - '0') * 100 * 1000000);
                    }
                }
            }
        }
        return null;
    }

    public static LocalDate parseLocalDate8(char[] cArr, int i) {
        if (i + 8 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        if (c5 == '-' && c7 == '-') {
            c5 = '0';
            c7 = '0';
        } else if (c2 == '/' && c4 == '/') {
            c4 = c8;
            c8 = c3;
            c2 = c6;
            c3 = c7;
            c7 = '0';
            c6 = c;
            c = c5;
            c5 = '0';
        } else if (c2 == '-' && c6 == '-') {
            int month = month(c3, c4, c5);
            if (month <= 0) {
                return null;
            }
            c5 = (char) ((month / 10) + 48);
            c4 = c8;
            c6 = (char) ((month % 10) + 48);
            c8 = c;
            c = '2';
            c3 = c7;
            c2 = '0';
            c7 = '0';
        }
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            int i2 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
            if (c5 >= '0' && c5 <= '9' && c6 >= '0' && c6 <= '9') {
                int i3 = ((c5 - '0') * 10) + (c6 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    int i4 = ((c7 - '0') * 10) + (c8 - '0');
                    if (i2 == 0 && i3 == 0 && i4 == 0) {
                        return null;
                    }
                    return LocalDate.of(i2, i3, i4);
                }
            }
        }
        return null;
    }

    public static LocalTime parseLocalTime11(char[] cArr, int i) {
        if (i + 11 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        if (c3 == ':' && c6 == ':' && c9 == '.' && c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9') {
            int i2 = ((c - '0') * 10) + (c2 - '0');
            if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
                int i3 = ((c4 - '0') * 10) + (c5 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    int i4 = ((c7 - '0') * 10) + (c8 - '0');
                    if (c10 >= '0' && c10 <= '9' && c11 >= '0' && c11 <= '9') {
                        return LocalTime.of(i2, i3, i4, (((c10 - '0') * 100) + ((c11 - '0') * 10)) * 1000000);
                    }
                }
            }
        }
        return null;
    }

    public static String format(ZonedDateTime zonedDateTime, String str) {
        if (zonedDateTime == null) {
            return null;
        }
        int year = zonedDateTime.getYear();
        int monthValue = zonedDateTime.getMonthValue();
        int dayOfMonth = zonedDateTime.getDayOfMonth();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -159776256:
                if (str.equals("yyyy-MM-dd")) {
                    c = 0;
                    break;
                }
                break;
            case -102516032:
                if (str.equals("yyyy/MM/dd")) {
                    c = 1;
                    break;
                }
                break;
            case 1333195168:
                if (str.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                    c = 2;
                    break;
                }
                break;
            case 1798231098:
                if (str.equals("yyyy-MM-dd'T'HH:mm:ss")) {
                    c = 3;
                    break;
                }
                break;
            case 1834843604:
                if (str.equals("yyyy-MM-ddTHH:mm:ss")) {
                    c = 4;
                    break;
                }
                break;
            case 1900521056:
                if (str.equals("dd.MM.yyyy")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_DASH);
            case 1:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_SLASH);
            case 2:
                return m7577a(year, monthValue, dayOfMonth, zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
            case 3:
            case 4:
                return m7577a(year, monthValue, dayOfMonth, zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH_T);
            case 5:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_DOT);
            default:
                return DateTimeFormatter.ofPattern(str).format(zonedDateTime);
        }
    }

    public static LocalDate parseLocalDate(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return null;
        }
        if (i + i2 <= cArr.length) {
            switch (i2) {
                case 8:
                    return parseLocalDate8(cArr, i);
                case 9:
                    return parseLocalDate9(cArr, i);
                case 10:
                    return parseLocalDate10(cArr, i);
                case 11:
                    return parseLocalDate11(cArr, i);
                default:
                    if (i2 == 4 && cArr[i] == 'n' && cArr[i + 1] == 'u' && cArr[i + 2] == 'l' && cArr[i + 3] == 'l') {
                        return null;
                    }
                    String str = new String(cArr, i, i2);
                    throw new DateTimeParseException("illegal input " + str, str, 0);
            }
        }
        String str2 = new String(cArr, i, i2);
        throw new DateTimeParseException("illegal input " + str2, str2, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDate parseLocalDate9(char[] r13, int r14) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDate9(char[], int):java.time.LocalDate");
    }

    public static LocalTime parseLocalTime12(char[] cArr, int i) {
        if (i + 12 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        if (c3 == ':' && c6 == ':' && c9 == '.' && c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9') {
            int i2 = ((c - '0') * 10) + (c2 - '0');
            if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
                int i3 = ((c4 - '0') * 10) + (c5 - '0');
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
                    int i4 = ((c7 - '0') * 10) + (c8 - '0');
                    if (c10 >= '0' && c10 <= '9' && c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9') {
                        return LocalTime.of(i2, i3, i4, (((c10 - '0') * 100) + ((c11 - '0') * 10) + (c12 - '0')) * 1000000);
                    }
                }
            }
        }
        return null;
    }

    public static LocalDate parseLocalDate10(char[] cArr, int i) {
        int month;
        char c;
        char c2;
        if (i + 10 > cArr.length) {
            return null;
        }
        char c3 = cArr[i];
        char c4 = cArr[i + 1];
        char c5 = cArr[i + 2];
        char c6 = cArr[i + 3];
        char c7 = cArr[i + 4];
        char c8 = cArr[i + 5];
        char c9 = cArr[i + 6];
        char c10 = cArr[i + 7];
        char c11 = cArr[i + 8];
        char c12 = cArr[i + 9];
        if ((c7 == '-' && c10 == '-') || (c7 == '/' && c10 == '/')) {
            c10 = c11;
            c11 = c12;
            c2 = c5;
            c = '0';
        } else if ((c5 == '.' && c8 == '.') || (c5 == '-' && c8 == '-')) {
            c8 = c6;
            c = '0';
            c6 = c12;
            c2 = c11;
            c11 = c4;
            c4 = c10;
            c10 = c3;
            c3 = c9;
            c9 = c7;
        } else if (c5 == '/' && c8 == '/') {
            c8 = c3;
            c3 = c9;
            c = '0';
            c9 = c4;
            c4 = c10;
            c10 = c6;
            c6 = c12;
            c2 = c11;
            c11 = c7;
        } else if ((c7 == 24180 && c9 == 26376 && c12 == 26085) || (c7 == 45380 && c9 == 50900 && c12 == 51068)) {
            c2 = c5;
            c9 = c8;
            c = '0';
            c8 = '0';
        } else if ((c7 == 24180 && c10 == 26376 && c12 == 26085) || (c7 == 45380 && c10 == 50900 && c12 == 51068)) {
            c2 = c5;
            c = '0';
            c10 = '0';
        } else {
            if (c4 != ' ' || c8 != ' ' || (month = month(c5, c6, c7)) <= 0) {
                return null;
            }
            c = '0';
            c6 = c12;
            c8 = (char) ((month / 10) + 48);
            c2 = c11;
            c11 = c3;
            c3 = c9;
            c9 = (char) ((month % 10) + 48);
            c4 = c10;
            c10 = '0';
        }
        if (c3 < c || c3 > '9' || c4 < c || c4 > '9' || c2 < c || c2 > '9' || c6 < c || c6 > '9') {
            return null;
        }
        int i2 = ((c3 - c) * 1000) + ((c4 - c) * 100) + ((c2 - c) * 10) + (c6 - c);
        if (c8 < c || c8 > '9' || c9 < c || c9 > '9') {
            return null;
        }
        int i3 = ((c8 - c) * 10) + (c9 - c);
        if (c10 < c || c10 > '9' || c11 < c || c11 > '9') {
            return null;
        }
        int i4 = ((c10 - c) * 10) + (c11 - c);
        if (i2 == 0 && i3 == 0 && i4 == 0) {
            return null;
        }
        return LocalDate.of(i2, i3, i4);
    }

    public static long millis(ZoneId zoneId, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (zoneId == null) {
            zoneId = DEFAULT_ZONE_ID;
        }
        long j = (i * 365) + (((i + 3) / 4) - ((i + 99) / 100)) + ((i + 399) / 400) + (((i2 * 367) - 362) / 12) + (i3 - 1);
        int i8 = 0;
        boolean z = true;
        if (i2 > 2) {
            j--;
            if (!((i & 3) == 0 && (i % 100 != 0 || i % 400 == 0))) {
                j--;
            }
        }
        long j2 = ((j - 719528) * 86400) + (i4 * 3600) + (i5 * 60) + i6;
        if (zoneId != SHANGHAI_ZONE_ID && zoneId.getRules() != SHANGHAI_ZONE_RULES) {
            z = false;
        }
        if (z && j2 >= 684900000) {
            i8 = 28800;
        } else if (zoneId != ZoneOffset.UTC && !"UTC".equals(zoneId.getId())) {
            i8 = zoneId.getRules().getOffset(LocalDateTime.of(LocalDate.of(i, i2, i3), LocalTime.of(i4, i5, i6, i7))).getTotalSeconds();
        }
        long j3 = (j2 - i8) * 1000;
        return i7 != 0 ? j3 + (i7 / 1000000) : j3;
    }

    public static LocalDate parseLocalDate11(byte[] bArr, int i) {
        int month;
        if (i + 11 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        char c11 = (char) bArr[i + 10];
        if (c5 != '-' || c8 != '-' || c11 != 'Z') {
            if (c3 == ' ' && c7 == ' ' && (month = month(c4, c5, c6)) > 0) {
                c6 = (char) ((month / 10) + 48);
                c7 = (char) ((month % 10) + 48);
                c4 = c11;
                c3 = c10;
                c10 = c2;
                c2 = c9;
                c9 = c;
                c = c8;
            }
            return null;
        }
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            int i2 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
            if (c6 >= '0' && c6 <= '9' && c7 >= '0' && c7 <= '9') {
                int i3 = ((c6 - '0') * 10) + (c7 - '0');
                if (c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
                    int i4 = ((c9 - '0') * 10) + (c10 - '0');
                    if (i2 == 0 && i3 == 0 && i4 == 0) {
                        return null;
                    }
                    return LocalDate.of(i2, i3, i4);
                }
            }
        }
        return null;
    }

    public static LocalDateTime parseLocalDateTime14(byte[] bArr, int i) {
        if (i + 14 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        char c11 = (char) bArr[i + 10];
        char c12 = (char) bArr[i + 11];
        char c13 = (char) bArr[i + 12];
        char c14 = (char) bArr[i + 13];
        if (c < '0' || c > '9' || c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9' || c4 < '0' || c4 > '9') {
            return null;
        }
        int i2 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
        if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9') {
            return null;
        }
        int i3 = ((c5 - '0') * 10) + (c6 - '0');
        if (c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
            return null;
        }
        int i4 = ((c7 - '0') * 10) + (c8 - '0');
        if (c9 < '0' || c9 > '9' || c10 < '0' || c10 > '9') {
            return null;
        }
        int i5 = ((c9 - '0') * 10) + (c10 - '0');
        if (c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9') {
            return null;
        }
        int i6 = ((c11 - '0') * 10) + (c12 - '0');
        if (c13 < '0' || c13 > '9' || c14 < '0' || c14 > '9') {
            return null;
        }
        return LocalDateTime.of(i2, i3, i4, i5, i6, ((c13 - '0') * 10) + (c14 - '0'));
    }

    public static LocalTime parseLocalTime18(char[] cArr, int i) {
        if (i + 18 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        char c13 = cArr[i + 12];
        char c14 = cArr[i + 13];
        char c15 = cArr[i + 14];
        char c16 = cArr[i + 15];
        char c17 = cArr[i + 16];
        char c18 = cArr[i + 17];
        if (c3 != ':' || c6 != ':' || c9 != '.' || c < '0' || c > '9' || c2 < '0' || c2 > '9') {
            return null;
        }
        int i2 = ((c - '0') * 10) + (c2 - '0');
        if (c4 < '0' || c4 > '9' || c5 < '0' || c5 > '9') {
            return null;
        }
        int i3 = ((c4 - '0') * 10) + (c5 - '0');
        if (c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
            return null;
        }
        int i4 = ((c7 - '0') * 10) + (c8 - '0');
        if (c10 < '0' || c10 > '9' || c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9' || c13 < '0' || c13 > '9' || c14 < '0' || c14 > '9' || c15 < '0' || c15 > '9' || c16 < '0' || c16 > '9' || c17 < '0' || c17 > '9' || c18 < '0' || c18 > '9') {
            return null;
        }
        return LocalTime.of(i2, i3, i4, ((c10 - '0') * HwmfPicture.DEFAULT_MAX_RECORD_LENGTH) + ((c11 - '0') * 10000000) + ((c12 - '0') * 1000000) + ((c13 - '0') * 100000) + ((c14 - '0') * 10000) + ((c15 - '0') * 1000) + ((c16 - '0') * 100) + ((c17 - '0') * 10) + (c18 - '0'));
    }

    public static String formatYMDHMS19(ZonedDateTime zonedDateTime) {
        if (zonedDateTime == null) {
            return null;
        }
        return m7577a(zonedDateTime.getYear(), zonedDateTime.getMonthValue(), zonedDateTime.getDayOfMonth(), zonedDateTime.getHour(), zonedDateTime.getMinute(), zonedDateTime.getSecond(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0136, code lost:
    
        if (r12 == 32) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0241 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDateTime parseLocalDateTime16(byte[] r25, int r26) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime16(byte[], int):java.time.LocalDateTime");
    }

    public static LocalDateTime parseLocalDateTime19(String str, int i) {
        int i2 = i + 19;
        if (i2 > str.length()) {
            return null;
        }
        char[] cArr = new char[19];
        str.getChars(i, i2, cArr, 0);
        return parseLocalDateTime19(cArr, i);
    }

    public static LocalDateTime parseLocalDateTime20(byte[] bArr, int i) {
        char c;
        int i2 = i + 19;
        if (i2 > bArr.length) {
            return null;
        }
        char c2 = (char) bArr[i];
        char c3 = (char) bArr[i + 1];
        char c4 = (char) bArr[i + 2];
        char c5 = (char) bArr[i + 3];
        char c6 = (char) bArr[i + 4];
        char c7 = (char) bArr[i + 5];
        char c8 = (char) bArr[i + 6];
        char c9 = (char) bArr[i + 7];
        char c10 = (char) bArr[i + 8];
        char c11 = (char) bArr[i + 9];
        char c12 = (char) bArr[i + 10];
        char c13 = (char) bArr[i + 11];
        char c14 = (char) bArr[i + 12];
        char c15 = (char) bArr[i + 13];
        char c16 = (char) bArr[i + 14];
        char c17 = (char) bArr[i + 15];
        char c18 = (char) bArr[i + 16];
        char c19 = (char) bArr[i + 17];
        char c20 = (char) bArr[i + 18];
        char c21 = (char) bArr[i2];
        if (c4 != ' ' || c8 != ' ' || c13 != ' ' || c16 != ':' || c19 != ':') {
            return null;
        }
        int month = month(c5, c6, c7);
        char c22 = '0';
        if (month > 0) {
            char c23 = (char) ((month / 10) + 48);
            c = (char) ((month % 10) + 48);
            c22 = c23;
        } else {
            c = '0';
        }
        return localDateTime(c9, c10, c11, c12, c22, c, c2, c3, c14, c15, c17, c18, c20, c21);
    }

    public static LocalDateTime parseLocalDateTime12(byte[] bArr, int i) {
        byte[] bArr2;
        int i2 = i + 12;
        if (i2 <= bArr.length) {
            char c = (char) bArr[i];
            char c2 = (char) bArr[i + 1];
            char c3 = (char) bArr[i + 2];
            char c4 = (char) bArr[i + 3];
            char c5 = (char) bArr[i + 4];
            char c6 = (char) bArr[i + 5];
            char c7 = (char) bArr[i + 6];
            char c8 = (char) bArr[i + 7];
            char c9 = (char) bArr[i + 8];
            char c10 = (char) bArr[i + 9];
            char c11 = (char) bArr[i + 10];
            char c12 = (char) bArr[i + 11];
            if (c < '0') {
                bArr2 = bArr;
            } else {
                if (c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
                    int i3 = ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0');
                    if (c5 < '0' || c5 > '9' || c6 < '0' || c6 > '9') {
                        String str = new String(bArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str, str, 0);
                    }
                    int i4 = ((c5 - '0') * 10) + (c6 - '0');
                    if (c7 < '0' || c7 > '9' || c8 < '0' || c8 > '9') {
                        String str2 = new String(bArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str2, str2, 0);
                    }
                    int i5 = ((c7 - '0') * 10) + (c8 - '0');
                    if (c9 < '0' || c9 > '9' || c10 < '0' || c10 > '9') {
                        String str3 = new String(bArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str3, str3, 0);
                    }
                    int i6 = ((c9 - '0') * 10) + (c10 - '0');
                    if (c11 < '0' || c11 > '9' || c12 < '0' || c12 > '9') {
                        String str4 = new String(bArr, i, i2);
                        throw new DateTimeParseException("illegal input " + str4, str4, 0);
                    }
                    int i7 = ((c11 - '0') * 10) + (c12 - '0');
                    if (i3 == 0 && i4 == 0 && i5 == 0 && i6 == 0 && i7 == 0) {
                        return null;
                    }
                    return LocalDateTime.of(i3, i4, i5, i6, i7, 0);
                }
                bArr2 = bArr;
            }
            String str5 = new String(bArr2, i, i2);
            throw new DateTimeParseException("illegal input " + str5, str5, 0);
        }
        String str6 = new String(bArr, i, bArr.length - i);
        throw new DateTimeParseException("illegal input " + str6, str6, 0);
    }

    public static LocalDateTime parseLocalDateTime19(byte[] bArr, int i) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        if (i + 19 > bArr.length) {
            return null;
        }
        char c8 = (char) bArr[i];
        char c9 = (char) bArr[i + 1];
        char c10 = (char) bArr[i + 2];
        char c11 = (char) bArr[i + 3];
        char c12 = (char) bArr[i + 4];
        char c13 = (char) bArr[i + 5];
        char c14 = (char) bArr[i + 6];
        char c15 = (char) bArr[i + 7];
        char c16 = (char) bArr[i + 8];
        char c17 = (char) bArr[i + 9];
        char c18 = (char) bArr[i + 10];
        char c19 = (char) bArr[i + 11];
        char c20 = (char) bArr[i + 12];
        char c21 = (char) bArr[i + 13];
        char c22 = (char) bArr[i + 14];
        char c23 = (char) bArr[i + 15];
        char c24 = c14;
        char c25 = (char) bArr[i + 16];
        char c26 = c16;
        char c27 = (char) bArr[i + 17];
        char c28 = (char) bArr[i + 18];
        if (c12 != '-' || c15 != '-' || ((c18 != ' ' && c18 != 'T') || c21 != ':' || c25 != ':')) {
            char c29 = '/';
            if (c12 == '/' && c15 == '/') {
                if ((c18 != ' ' && c18 != 'T') || c21 != ':' || c25 != ':') {
                    c29 = '/';
                }
            }
            if (c10 == c29 && c13 == c29 && ((c18 == ' ' || c18 == 'T') && c21 == ':' && c25 == ':')) {
                c4 = c9;
                c3 = c17;
                c5 = c24;
                c6 = c26;
                c24 = c12;
                c26 = c8;
                c7 = c11;
            } else {
                if (c9 != ' ' || c13 != ' ' || c18 != ' ' || c21 != ':' || c25 != ':') {
                    return null;
                }
                int month = month(c10, c11, c12);
                if (month > 0) {
                    c = (char) ((month / 10) + 48);
                    c2 = (char) ((month % 10) + 48);
                } else {
                    c = '0';
                    c2 = '0';
                }
                c3 = c17;
                c4 = c8;
                c5 = c24;
                c6 = c26;
                c26 = '0';
                c7 = c;
                c24 = c2;
            }
            return localDateTime(c5, c15, c6, c3, c7, c24, c26, c4, c19, c20, c22, c23, c27, c28);
        }
        c15 = c9;
        c3 = c11;
        c4 = c17;
        c5 = c8;
        c6 = c10;
        c7 = c13;
        return localDateTime(c5, c15, c6, c3, c7, c24, c26, c4, c19, c20, c22, c23, c27, c28);
    }

    public static LocalDateTime parseLocalDateTime(byte[] bArr, int i, int i2) {
        if (bArr == null || i2 == 0) {
            return null;
        }
        switch (i2) {
            case 4:
                if (bArr[i] == 110 && bArr[i + 1] == 117 && bArr[i + 2] == 108 && bArr[i + 3] == 108) {
                    return null;
                }
                String str = new String(bArr, i, i2);
                throw new DateTimeParseException("illegal input " + str, str, 0);
            case 5:
            case 6:
            case 7:
            case 13:
            case 15:
            default:
                return parseLocalDateTimeX(bArr, i, i2);
            case 8:
                LocalDate parseLocalDate8 = parseLocalDate8(bArr, i);
                if (parseLocalDate8 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate8, LocalTime.MIN);
            case 9:
                LocalDate parseLocalDate9 = parseLocalDate9(bArr, i);
                if (parseLocalDate9 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate9, LocalTime.MIN);
            case 10:
                LocalDate parseLocalDate10 = parseLocalDate10(bArr, i);
                if (parseLocalDate10 == null) {
                    return null;
                }
                return LocalDateTime.of(parseLocalDate10, LocalTime.MIN);
            case 11:
                return LocalDateTime.of(parseLocalDate11(bArr, i), LocalTime.MIN);
            case 12:
                return parseLocalDateTime12(bArr, i);
            case 14:
                return parseLocalDateTime14(bArr, i);
            case 16:
                return parseLocalDateTime16(bArr, i);
            case 17:
                return parseLocalDateTime17(bArr, i);
            case 18:
                return parseLocalDateTime18(bArr, i);
            case 19:
                return parseLocalDateTime19(bArr, i);
            case 20:
                return parseLocalDateTime20(bArr, i);
        }
    }

    public static LocalDateTime parseLocalDateTime26(char[] cArr, int i) {
        if (i + 26 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        char c13 = cArr[i + 12];
        char c14 = cArr[i + 13];
        char c15 = cArr[i + 14];
        char c16 = cArr[i + 15];
        char c17 = cArr[i + 16];
        char c18 = cArr[i + 17];
        char c19 = cArr[i + 18];
        char c20 = cArr[i + 19];
        char c21 = cArr[i + 20];
        char c22 = cArr[i + 21];
        char c23 = cArr[i + 22];
        char c24 = cArr[i + 23];
        char c25 = cArr[i + 24];
        char c26 = cArr[i + 25];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, '0', '0', '0');
        }
        return null;
    }

    public static String formatYMD8(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        int year = localDate.getYear();
        int monthValue = localDate.getMonthValue();
        int dayOfMonth = localDate.getDayOfMonth();
        int i = year / 100;
        char[] cArr = new char[8];
        Unsafe unsafe = JDKUtils.UNSAFE;
        long j = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
        int[] iArr = IOUtils.PACKED_DIGITS_UTF16;
        unsafe.putInt(cArr, j, iArr[i]);
        unsafe.putInt(cArr, 4 + j, iArr[year - (i * 100)]);
        unsafe.putInt(cArr, 8 + j, iArr[monthValue]);
        unsafe.putInt(cArr, j + 12, iArr[dayOfMonth]);
        return new String(cArr);
    }

    public static LocalDateTime parseLocalDateTime27(char[] cArr, int i) {
        if (i + 27 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        char c13 = cArr[i + 12];
        char c14 = cArr[i + 13];
        char c15 = cArr[i + 14];
        char c16 = cArr[i + 15];
        char c17 = cArr[i + 16];
        char c18 = cArr[i + 17];
        char c19 = cArr[i + 18];
        char c20 = cArr[i + 19];
        char c21 = cArr[i + 20];
        char c22 = cArr[i + 21];
        char c23 = cArr[i + 22];
        char c24 = cArr[i + 23];
        char c25 = cArr[i + 24];
        char c26 = cArr[i + 25];
        char c27 = cArr[i + 26];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, c27, '0', '0');
        }
        return null;
    }

    public static LocalDateTime parseLocalDateTime28(byte[] bArr, int i) {
        if (i + 28 > bArr.length) {
            return null;
        }
        char c = (char) bArr[i];
        char c2 = (char) bArr[i + 1];
        char c3 = (char) bArr[i + 2];
        char c4 = (char) bArr[i + 3];
        char c5 = (char) bArr[i + 4];
        char c6 = (char) bArr[i + 5];
        char c7 = (char) bArr[i + 6];
        char c8 = (char) bArr[i + 7];
        char c9 = (char) bArr[i + 8];
        char c10 = (char) bArr[i + 9];
        char c11 = (char) bArr[i + 10];
        char c12 = (char) bArr[i + 11];
        char c13 = (char) bArr[i + 12];
        char c14 = (char) bArr[i + 13];
        char c15 = (char) bArr[i + 14];
        char c16 = (char) bArr[i + 15];
        char c17 = (char) bArr[i + 16];
        char c18 = (char) bArr[i + 17];
        char c19 = (char) bArr[i + 18];
        char c20 = (char) bArr[i + 19];
        char c21 = (char) bArr[i + 20];
        char c22 = (char) bArr[i + 21];
        char c23 = (char) bArr[i + 22];
        char c24 = (char) bArr[i + 23];
        char c25 = (char) bArr[i + 24];
        char c26 = (char) bArr[i + 25];
        char c27 = (char) bArr[i + 26];
        char c28 = (char) bArr[i + 27];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, c27, c28, '0');
        }
        return null;
    }

    public static String format(LocalDateTime localDateTime, String str) {
        if (localDateTime == null) {
            return null;
        }
        int year = localDateTime.getYear();
        int monthValue = localDateTime.getMonthValue();
        int dayOfMonth = localDateTime.getDayOfMonth();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -159776256:
                if (str.equals("yyyy-MM-dd")) {
                    c = 0;
                    break;
                }
                break;
            case -102516032:
                if (str.equals("yyyy/MM/dd")) {
                    c = 1;
                    break;
                }
                break;
            case 1333195168:
                if (str.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                    c = 2;
                    break;
                }
                break;
            case 1798231098:
                if (str.equals("yyyy-MM-dd'T'HH:mm:ss")) {
                    c = 3;
                    break;
                }
                break;
            case 1834843604:
                if (str.equals("yyyy-MM-ddTHH:mm:ss")) {
                    c = 4;
                    break;
                }
                break;
            case 1900521056:
                if (str.equals("dd.MM.yyyy")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return formatYMD10(year, monthValue, dayOfMonth);
            case 1:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_SLASH);
            case 2:
                return m7577a(year, monthValue, dayOfMonth, localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
            case 3:
            case 4:
                return m7577a(year, monthValue, dayOfMonth, localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH_T);
            case 5:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_DOT);
            default:
                return DateTimeFormatter.ofPattern(str).format(localDateTime);
        }
    }

    public static String formatYMDHMS19(LocalDateTime localDateTime) {
        if (localDateTime == null) {
            return null;
        }
        int year = localDateTime.getYear();
        int monthValue = localDateTime.getMonthValue();
        int dayOfMonth = localDateTime.getDayOfMonth();
        int hour = localDateTime.getHour();
        int minute = localDateTime.getMinute();
        int second = localDateTime.getSecond();
        char[] cArr = new char[19];
        IOUtils.writeLocalDate(cArr, 0, year, monthValue, dayOfMonth);
        cArr[10] = ' ';
        IOUtils.writeLocalTime(cArr, 11, hour, minute, second);
        return new String(cArr);
    }

    public static LocalDateTime parseLocalDateTime29(char[] cArr, int i) {
        if (i + 29 > cArr.length) {
            return null;
        }
        char c = cArr[i];
        char c2 = cArr[i + 1];
        char c3 = cArr[i + 2];
        char c4 = cArr[i + 3];
        char c5 = cArr[i + 4];
        char c6 = cArr[i + 5];
        char c7 = cArr[i + 6];
        char c8 = cArr[i + 7];
        char c9 = cArr[i + 8];
        char c10 = cArr[i + 9];
        char c11 = cArr[i + 10];
        char c12 = cArr[i + 11];
        char c13 = cArr[i + 12];
        char c14 = cArr[i + 13];
        char c15 = cArr[i + 14];
        char c16 = cArr[i + 15];
        char c17 = cArr[i + 16];
        char c18 = cArr[i + 17];
        char c19 = cArr[i + 18];
        char c20 = cArr[i + 19];
        char c21 = cArr[i + 20];
        char c22 = cArr[i + 21];
        char c23 = cArr[i + 22];
        char c24 = cArr[i + 23];
        char c25 = cArr[i + 24];
        char c26 = cArr[i + 25];
        char c27 = cArr[i + 26];
        char c28 = cArr[i + 27];
        char c29 = cArr[i + 28];
        if (c5 != '-' || c8 != '-') {
            return null;
        }
        if ((c11 == ' ' || c11 == 'T') && c14 == ':' && c17 == ':' && c20 == '.') {
            return localDateTime(c, c2, c3, c4, c6, c7, c9, c10, c12, c13, c15, c16, c18, c19, c21, c22, c23, c24, c25, c26, c27, c28, c29);
        }
        return null;
    }

    public static Date parseDate(String str) {
        long parseMillis = parseMillis(str, DEFAULT_ZONE_ID);
        if (parseMillis == 0) {
            return null;
        }
        return new Date(parseMillis);
    }

    public static Date parseDate(String str, ZoneId zoneId) {
        long parseMillis = parseMillis(str, zoneId);
        if (parseMillis == 0) {
            return null;
        }
        return new Date(parseMillis);
    }

    public static LocalDateTime parseLocalDateTime17(byte[] bArr, int i) {
        String str;
        byte b;
        byte b2;
        String str2;
        byte b3;
        String str3;
        String str4;
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        int i2;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        char c11;
        char c12;
        char c13;
        char c14;
        char c15;
        char c16;
        char c17;
        char c18;
        if (i + 17 <= bArr.length) {
            byte b4 = bArr[i];
            byte b5 = bArr[i + 1];
            byte b6 = bArr[i + 2];
            byte b7 = bArr[i + 3];
            byte b8 = bArr[i + 4];
            byte b9 = bArr[i + 5];
            byte b10 = bArr[i + 6];
            byte b11 = bArr[i + 7];
            byte b12 = bArr[i + 8];
            byte b13 = bArr[i + 9];
            byte b14 = bArr[i + 10];
            byte b15 = bArr[i + 11];
            byte b16 = bArr[i + 12];
            byte b17 = bArr[i + 13];
            byte b18 = bArr[i + 14];
            byte b19 = bArr[i + 15];
            byte b20 = bArr[i + 16];
            if (b8 != 45 || b11 != 45 || ((b14 != 84 && b14 != 32) || b17 != 58 || b20 != 90)) {
                if (b8 == 45 && b10 == 45 && ((b12 == 32 || b12 == 84) && b15 == 58 && b18 == 58)) {
                    c10 = (char) b4;
                    char c19 = (char) b5;
                    char c20 = (char) b6;
                    char c21 = (char) b7;
                    c7 = (char) b9;
                    c14 = (char) b11;
                    char c22 = (char) b13;
                    char c23 = (char) b14;
                    c4 = (char) b16;
                    c3 = c23;
                    c12 = (char) b20;
                    str4 = "illegal input ";
                    c5 = '0';
                    i2 = 0;
                    c8 = c22;
                    c15 = (char) b19;
                    c2 = '0';
                    c = c21;
                    c9 = (char) b17;
                    c13 = '0';
                    c11 = c19;
                    c6 = c20;
                } else if (b8 == -27 && b9 == -71 && b10 == -76 && b13 == -26 && b14 == -100 && b15 == -120 && b18 == -26 && b19 == -105 && b20 == -91) {
                    c17 = (char) b4;
                    c18 = (char) b5;
                    c6 = (char) b6;
                    c13 = (char) b11;
                    c7 = (char) b12;
                    c14 = (char) b17;
                    c = (char) b7;
                    c2 = (char) b16;
                    str4 = "illegal input ";
                    c9 = '0';
                    c8 = '0';
                    c15 = '0';
                    c12 = '0';
                    c3 = '0';
                    c4 = '0';
                    i2 = 0;
                } else {
                    byte b21 = 32;
                    if (b6 != 32 || b10 != 32 || b15 != 32) {
                        str = "illegal input ";
                        b = b20;
                    } else if (b18 == 58) {
                        c10 = (char) b11;
                        char c24 = (char) b12;
                        char c25 = (char) b13;
                        char c26 = (char) b14;
                        int month = month((char) b7, (char) b8, (char) b9);
                        if (month > 0) {
                            c3 = (char) b17;
                            c13 = (char) ((month / 10) + 48);
                            c4 = (char) b19;
                            str4 = "illegal input ";
                            c12 = '0';
                            i2 = 0;
                            c8 = (char) b16;
                            c14 = (char) b5;
                            c11 = c24;
                            c9 = (char) b20;
                            c5 = '0';
                            c15 = '0';
                            c16 = c26;
                            c2 = (char) b4;
                            c6 = c25;
                            c7 = (char) ((month % 10) + 48);
                            c = c16;
                        } else {
                            String str5 = new String(bArr, i, 17);
                            throw new DateTimeParseException("illegal input " + str5, str5, 0);
                        }
                    } else {
                        str = "illegal input ";
                        b = b20;
                        b21 = 32;
                    }
                    if (b5 == b21 && b9 == b21 && b14 == b21 && b16 == 58 && b18 == 58) {
                        char c27 = (char) b4;
                        int month2 = month((char) b6, (char) b7, (char) b8);
                        if (month2 > 0) {
                            char c28 = (char) ((month2 / 10) + 48);
                            c7 = (char) ((month2 % 10) + 48);
                            c10 = (char) b10;
                            c11 = (char) b11;
                            char c29 = (char) b12;
                            c = (char) b13;
                            char c30 = (char) b17;
                            c3 = (char) b15;
                            c15 = (char) b19;
                            c12 = (char) b;
                            str4 = str;
                            c8 = '0';
                            c2 = '0';
                            c4 = '0';
                            i2 = 0;
                            c14 = c27;
                            c5 = '0';
                            c13 = c28;
                            c6 = c29;
                            c9 = c30;
                        } else {
                            String str6 = new String(bArr, i, 17);
                            throw new DateTimeParseException(str + str6, str6, 0);
                        }
                    } else {
                        byte b22 = b;
                        String str7 = str;
                        byte b23 = 32;
                        if (b5 != 32 || b9 != 32 || b14 != 32) {
                            b2 = b22;
                            str2 = str7;
                        } else if (b16 == 58 && b19 == 58) {
                            char c31 = (char) b4;
                            int month3 = month((char) b6, (char) b7, (char) b8);
                            if (month3 > 0) {
                                char c32 = (char) ((month3 / 10) + 48);
                                c7 = (char) ((month3 % 10) + 48);
                                c10 = (char) b10;
                                c11 = (char) b11;
                                char c33 = (char) b12;
                                c = (char) b13;
                                c4 = (char) b17;
                                c3 = (char) b15;
                                c12 = (char) b22;
                                str4 = str7;
                                c2 = '0';
                                c15 = '0';
                                i2 = 0;
                                c14 = c31;
                                c13 = c32;
                                c6 = c33;
                                c9 = (char) b18;
                                c5 = '0';
                                c8 = '0';
                            } else {
                                String str8 = new String(bArr, i, 17);
                                throw new DateTimeParseException(str7 + str8, str8, 0);
                            }
                        } else {
                            b2 = b22;
                            str2 = str7;
                            b23 = 32;
                        }
                        if (b5 != b23 || b9 != b23 || b14 != b23) {
                            b3 = b2;
                            str3 = str2;
                        } else if (b17 == 58 && b19 == 58) {
                            char c34 = (char) b4;
                            int month4 = month((char) b6, (char) b7, (char) b8);
                            if (month4 > 0) {
                                char c35 = (char) ((month4 / 10) + 48);
                                c7 = (char) ((month4 % 10) + 48);
                                char c36 = (char) b10;
                                char c37 = (char) b11;
                                char c38 = (char) b12;
                                c = (char) b13;
                                c3 = (char) b16;
                                c12 = (char) b2;
                                str4 = str2;
                                c5 = '0';
                                c2 = '0';
                                c15 = '0';
                                c4 = '0';
                                i2 = 0;
                                c14 = c34;
                                c10 = c36;
                                c6 = c38;
                                c9 = (char) b18;
                                c8 = (char) b15;
                                c13 = c35;
                                c11 = c37;
                            } else {
                                String str9 = new String(bArr, i, 17);
                                throw new DateTimeParseException(str2 + str9, str9, 0);
                            }
                        } else {
                            b3 = b2;
                            str3 = str2;
                            b23 = 32;
                        }
                        if (b6 == b23 && b10 == b23 && b15 == b23 && b17 == 58 && b19 == 58) {
                            char c39 = (char) b4;
                            char c40 = (char) b5;
                            int month5 = month((char) b7, (char) b8, (char) b9);
                            if (month5 > 0) {
                                c13 = (char) ((month5 / 10) + 48);
                                c7 = (char) ((month5 % 10) + 48);
                                char c41 = (char) b11;
                                char c42 = (char) b12;
                                char c43 = (char) b13;
                                char c44 = (char) b14;
                                c3 = (char) b16;
                                c12 = (char) b3;
                                str4 = str3;
                                c8 = '0';
                                c15 = '0';
                                c4 = '0';
                                i2 = 0;
                                c2 = c39;
                                c10 = c41;
                                c11 = c42;
                                c9 = (char) b18;
                                c5 = '0';
                                c16 = c44;
                                c14 = c40;
                                c6 = c43;
                                c = c16;
                            } else {
                                String str10 = new String(bArr, i, 17);
                                throw new DateTimeParseException(str3 + str10, str10, 0);
                            }
                        } else {
                            byte b24 = b3;
                            str4 = str3;
                            char c45 = (char) b4;
                            char c46 = (char) b5;
                            char c47 = (char) b6;
                            c = (char) b7;
                            char c48 = (char) b8;
                            char c49 = (char) b9;
                            c2 = (char) b10;
                            char c50 = (char) b11;
                            char c51 = (char) b12;
                            c3 = (char) b13;
                            c4 = (char) b14;
                            char c52 = (char) b15;
                            char c53 = (char) b16;
                            char c54 = (char) b17;
                            c5 = '0';
                            if (b18 < 48 || b18 > 57 || b19 < 48 || b19 > 57 || b24 < 48 || b24 > 57) {
                                return null;
                            }
                            i2 = (((b18 - 48) * 100) + ((b19 - 48) * 10) + b24 + JSONB.Constants.BC_INT64_BYTE_ZERO) * 1000000;
                            c6 = c47;
                            c7 = c49;
                            c8 = c51;
                            c9 = c52;
                            c10 = c45;
                            c11 = c46;
                            c12 = c54;
                            c13 = c48;
                            c14 = c50;
                            c15 = c53;
                        }
                    }
                }
                if (c10 >= c5 || c10 > '9' || c11 < c5 || c11 > '9' || c6 < c5 || c6 > '9' || c < c5 || c > '9') {
                    String str11 = new String(bArr, i, 17);
                    throw new DateTimeParseException(str4 + str11, str11, 0);
                }
                int i3 = ((c10 - c5) * 1000) + ((c11 - c5) * 100) + ((c6 - c5) * 10) + (c - c5);
                if (c13 < c5 || c13 > '9' || c7 < c5 || c7 > '9') {
                    String str12 = new String(bArr, i, 17);
                    throw new DateTimeParseException(str4 + str12, str12, 0);
                }
                int i4 = ((c13 - c5) * 10) + (c7 - c5);
                if (c2 < c5 || c2 > '9' || c14 < c5 || c14 > '9') {
                    String str13 = new String(bArr, i, 17);
                    throw new DateTimeParseException(str4 + str13, str13, 0);
                }
                int i5 = ((c2 - c5) * 10) + (c14 - c5);
                if (c8 < c5 || c8 > '9' || c3 < c5 || c3 > '9') {
                    String str14 = new String(bArr, i, 17);
                    throw new DateTimeParseException(str4 + str14, str14, 0);
                }
                int i6 = ((c8 - c5) * 10) + (c3 - c5);
                if (c4 < c5 || c4 > '9' || c9 < c5 || c9 > '9') {
                    String str15 = new String(bArr, i, 17);
                    throw new DateTimeParseException(str4 + str15, str15, 0);
                }
                int i7 = ((c4 - c5) * 10) + (c9 - c5);
                if (c15 >= c5 && c15 <= '9' && c12 >= c5 && c12 <= '9') {
                    return LocalDateTime.of(i3, i4, i5, i6, i7, ((c15 - c5) * 10) + (c12 - c5), i2);
                }
                String str16 = new String(bArr, i, 17);
                throw new DateTimeParseException(str4 + str16, str16, 0);
            }
            c17 = (char) b4;
            c18 = (char) b5;
            c6 = (char) b6;
            char c55 = (char) b7;
            c13 = (char) b9;
            c7 = (char) b10;
            char c56 = (char) b12;
            c14 = (char) b13;
            c8 = (char) b15;
            char c57 = (char) b16;
            char c58 = (char) b18;
            c9 = (char) b19;
            c3 = c57;
            c4 = c58;
            str4 = "illegal input ";
            c15 = '0';
            c12 = '0';
            i2 = 0;
            c2 = c56;
            c = c55;
            c11 = c18;
            c10 = c17;
            c5 = '0';
            if (c10 >= c5) {
            }
            String str112 = new String(bArr, i, 17);
            throw new DateTimeParseException(str4 + str112, str112, 0);
        }
        String str17 = new String(bArr, i, bArr.length - i);
        throw new DateTimeParseException("illegal input " + str17, str17, 0);
    }

    public static long parseMillis(char[] cArr, int i, int i2) {
        return parseMillis(cArr, i, i2, DEFAULT_ZONE_ID);
    }

    public static long parseMillis(char[] cArr, int i, int i2, ZoneId zoneId) {
        int i3;
        char c;
        int i4 = i2;
        ZoneId zoneId2 = zoneId;
        if (cArr == null || i4 == 0) {
            return 0L;
        }
        if (i4 == 4 && cArr[i] == 'n' && cArr[i + 1] == 'u' && cArr[i + 2] == 'l' && cArr[i + 3] == 'l') {
            return 0L;
        }
        char c2 = cArr[i];
        if (c2 != '\"' || cArr[i4 - 1] != '\"') {
            if (i4 == 19) {
                return parseMillis19(cArr, i, zoneId2);
            }
            boolean z = false;
            if (i4 <= 19 && (i4 != 16 || ((c = cArr[i + 10]) != '+' && c != '-'))) {
                if ((c2 == '-' || (c2 >= '0' && c2 <= '9')) && IOUtils.isNumber(cArr, i, i2)) {
                    long parseLong = TypeUtils.parseLong(cArr, i, i2);
                    if (i4 == 8 && parseLong >= 19700101 && parseLong <= 21000101) {
                        int i5 = (int) parseLong;
                        int i6 = i5 / 10000;
                        int i7 = (i5 % 10000) / 100;
                        int i8 = i5 % 100;
                        if (i7 >= 1 && i7 <= 12) {
                            if (i7 != 2) {
                                i3 = (i7 == 4 || i7 == 6 || i7 == 9 || i7 == 11) ? 30 : 31;
                            } else {
                                if ((i6 & 3) == 0 && (i6 % 100 != 0 || i6 % 400 == 0)) {
                                    z = true;
                                }
                                i3 = z ? 29 : 28;
                            }
                            if (i8 <= i3) {
                                parseLong = ZonedDateTime.ofLocal(LocalDateTime.of(i6, i7, i8, 0, 0, 0), zoneId2, null).toEpochSecond() * 1000;
                            }
                        }
                    }
                    return parseLong;
                }
                if (cArr[i4 - 1] == 'Z') {
                    i4--;
                    zoneId2 = ZoneOffset.UTC;
                }
                LocalDateTime parseLocalDateTime = parseLocalDateTime(cArr, i, i4);
                if (parseLocalDateTime == null && cArr[i] == '0' && cArr[i + 1] == '0' && cArr[i + 2] == '0' && cArr[i + 3] == '0' && cArr[i + 4] == '-' && cArr[i + 5] == '0' && cArr[i + 6] == '0' && cArr[i + 7] == '-' && cArr[i + 8] == '0' && cArr[i + 9] == '0') {
                    parseLocalDateTime = LocalDateTime.of(1970, 1, 1, 0, 0, 0);
                }
                if (parseLocalDateTime != null) {
                    long epochSecond = ZonedDateTime.ofLocal(parseLocalDateTime, zoneId2, null).toEpochSecond();
                    return (epochSecond >= 0 || parseLocalDateTime.getNano() <= 0) ? (r2 / 1000000) + (epochSecond * 1000) : (((epochSecond + 1) * 1000) + (r2 / 1000000)) - 1000;
                }
                String str = new String(cArr, i, i4 - i);
                throw new DateTimeParseException("illegal input " + str, str, 0);
            }
            ZonedDateTime parseZonedDateTime = parseZonedDateTime(cArr, i, i2, zoneId);
            if (parseZonedDateTime != null) {
                return parseZonedDateTime.toInstant().toEpochMilli();
            }
            String str2 = new String(cArr, i, i4 - i);
            throw new DateTimeParseException("illegal input " + str2, str2, 0);
        }
        JSONReader m7310of = JSONReader.m7310of(cArr, i, i2);
        try {
            long time = ((Date) ObjectReaderImplDate.INSTANCE.readObject(m7310of, null, null, 0L)).getTime();
            if (m7310of == null) {
                return time;
            }
            m7310of.close();
            return time;
        } finally {
        }
    }

    public static String formatYMDHMS19(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        char[] cArr = new char[19];
        IOUtils.writeLocalDate(cArr, 0, localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth());
        cArr[10] = ' ';
        IOUtils.writeLocalTime(cArr, 11, 0, 0, 0);
        return new String(cArr);
    }

    public static String format(LocalDate localDate, String str) {
        if (localDate == null) {
            return null;
        }
        int year = localDate.getYear();
        int monthValue = localDate.getMonthValue();
        int dayOfMonth = localDate.getDayOfMonth();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -159776256:
                if (str.equals("yyyy-MM-dd")) {
                    c = 0;
                    break;
                }
                break;
            case -102516032:
                if (str.equals("yyyy/MM/dd")) {
                    c = 1;
                    break;
                }
                break;
            case 1333195168:
                if (str.equals(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS)) {
                    c = 2;
                    break;
                }
                break;
            case 1798231098:
                if (str.equals("yyyy-MM-dd'T'HH:mm:ss")) {
                    c = 3;
                    break;
                }
                break;
            case 1834843604:
                if (str.equals("yyyy-MM-ddTHH:mm:ss")) {
                    c = 4;
                    break;
                }
                break;
            case 1900521056:
                if (str.equals("dd.MM.yyyy")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_DASH);
            case 1:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_SLASH);
            case 2:
                return m7577a(year, monthValue, dayOfMonth, 0, 0, 0, DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
            case 3:
            case 4:
                return m7577a(year, monthValue, dayOfMonth, 0, 0, 0, DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH_T);
            case 5:
                return format(year, monthValue, dayOfMonth, DateTimeFormatPattern.DATE_FORMAT_10_DOT);
            default:
                return DateTimeFormatter.ofPattern(str).format(localDate);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x00d5, code lost:
    
        if (r10 == ':') goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0218  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseMillis19(byte[] r23, int r24, java.time.ZoneId r25) {
        /*
            Method dump skipped, instructions count: 1185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseMillis19(byte[], int, java.time.ZoneId):long");
    }

    public static String format(int i, int i2, int i3) {
        return format(i, i2, i3, DateTimeFormatPattern.DATE_FORMAT_10_DASH);
    }

    public static String format(int i, int i2, int i3, DateTimeFormatPattern dateTimeFormatPattern) {
        int i4 = i / 100;
        int i5 = i - (i4 * 100);
        char[] cArr = new char[10];
        if (dateTimeFormatPattern == DateTimeFormatPattern.DATE_FORMAT_10_DOT) {
            Unsafe unsafe = JDKUtils.UNSAFE;
            long j = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
            int[] iArr = IOUtils.PACKED_DIGITS_UTF16;
            unsafe.putInt(cArr, j, iArr[i3]);
            cArr[2] = '.';
            unsafe.putInt(cArr, 6 + j, iArr[i2]);
            cArr[5] = '.';
            unsafe.putInt(cArr, 12 + j, iArr[i4]);
            unsafe.putInt(cArr, j + 16, iArr[i5]);
        } else {
            char c = dateTimeFormatPattern == DateTimeFormatPattern.DATE_FORMAT_10_DASH ? '-' : '/';
            Unsafe unsafe2 = JDKUtils.UNSAFE;
            long j2 = JDKUtils.ARRAY_CHAR_BASE_OFFSET;
            int[] iArr2 = IOUtils.PACKED_DIGITS_UTF16;
            unsafe2.putInt(cArr, j2, iArr2[i4]);
            unsafe2.putInt(cArr, 4 + j2, iArr2[i5]);
            cArr[4] = c;
            unsafe2.putInt(cArr, 10 + j2, iArr2[i2]);
            cArr[7] = c;
            unsafe2.putInt(cArr, j2 + 16, iArr2[i3]);
        }
        return new String(cArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x041f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.LocalDateTime parseLocalDateTime18(byte[] r31, int r32) {
        /*
            Method dump skipped, instructions count: 1180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime18(byte[], int):java.time.LocalDateTime");
    }

    public static LocalDateTime parseLocalDateTimeX(byte[] bArr, int i, int i2) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        if (bArr == null || i2 == 0 || i2 < 21 || i2 > 29) {
            return null;
        }
        char c11 = (char) bArr[i];
        char c12 = (char) bArr[i + 1];
        char c13 = (char) bArr[i + 2];
        char c14 = (char) bArr[i + 3];
        char c15 = (char) bArr[i + 4];
        char c16 = (char) bArr[i + 5];
        char c17 = (char) bArr[i + 6];
        char c18 = (char) bArr[i + 7];
        char c19 = (char) bArr[i + 8];
        char c20 = (char) bArr[i + 9];
        char c21 = (char) bArr[i + 10];
        char c22 = (char) bArr[i + 11];
        char c23 = (char) bArr[i + 12];
        char c24 = (char) bArr[i + 13];
        char c25 = (char) bArr[i + 14];
        char c26 = (char) bArr[i + 15];
        char c27 = (char) bArr[i + 16];
        char c28 = (char) bArr[i + 17];
        char c29 = (char) bArr[i + 18];
        char c30 = (char) bArr[i + 19];
        switch (i2) {
            case 21:
                c = (char) bArr[i + 20];
                c2 = '0';
                c3 = '0';
                c4 = '0';
                c5 = '0';
                c6 = '0';
                c7 = '0';
                c8 = '0';
                c9 = '0';
                break;
            case 22:
                c10 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c2 = '0';
                c5 = '0';
                c6 = '0';
                c7 = c6;
                c8 = c7;
                c9 = c8;
                c = c10;
                c3 = c9;
                break;
            case 23:
                c10 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c5 = (char) bArr[i + 22];
                c2 = '0';
                c6 = '0';
                c7 = c6;
                c8 = c7;
                c9 = c8;
                c = c10;
                c3 = c9;
                break;
            case 24:
                c10 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c5 = (char) bArr[i + 22];
                c6 = (char) bArr[i + 23];
                c2 = '0';
                c7 = '0';
                c8 = c7;
                c9 = c8;
                c = c10;
                c3 = c9;
                break;
            case 25:
                c10 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c5 = (char) bArr[i + 22];
                c6 = (char) bArr[i + 23];
                c7 = (char) bArr[i + 24];
                c2 = '0';
                c8 = '0';
                c9 = c8;
                c = c10;
                c3 = c9;
                break;
            case 26:
                c10 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c5 = (char) bArr[i + 22];
                c6 = (char) bArr[i + 23];
                c7 = (char) bArr[i + 24];
                c8 = (char) bArr[i + 25];
                c2 = '0';
                c9 = '0';
                c = c10;
                c3 = c9;
                break;
            case 27:
                char c31 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c5 = (char) bArr[i + 22];
                c6 = (char) bArr[i + 23];
                c7 = (char) bArr[i + 24];
                c8 = (char) bArr[i + 25];
                char c32 = (char) bArr[i + 26];
                c2 = '0';
                c9 = '0';
                c = c31;
                c3 = c32;
                break;
            case 28:
                char c33 = (char) bArr[i + 20];
                c4 = (char) bArr[i + 21];
                c5 = (char) bArr[i + 22];
                char c34 = (char) bArr[i + 23];
                char c35 = (char) bArr[i + 24];
                char c36 = (char) bArr[i + 25];
                char c37 = (char) bArr[i + 26];
                c2 = (char) bArr[i + 27];
                c9 = '0';
                c = c33;
                c3 = c37;
                c8 = c36;
                c7 = c35;
                c6 = c34;
                break;
            default:
                c = (char) bArr[i + 20];
                char c38 = (char) bArr[i + 21];
                char c39 = (char) bArr[i + 22];
                char c40 = (char) bArr[i + 23];
                char c41 = (char) bArr[i + 24];
                char c42 = (char) bArr[i + 25];
                char c43 = (char) bArr[i + 26];
                char c44 = (char) bArr[i + 27];
                char c45 = (char) bArr[i + 28];
                c2 = c44;
                c9 = c45;
                c4 = c38;
                c3 = c43;
                c8 = c42;
                c7 = c41;
                c6 = c40;
                c5 = c39;
                break;
        }
        if (c15 != '-' || c18 != '-') {
            return null;
        }
        if ((c21 == ' ' || c21 == 'T') && c24 == ':' && c27 == ':' && c30 == '.') {
            return localDateTime(c11, c12, c13, c14, c16, c17, c19, c20, c22, c23, c25, c26, c28, c29, c, c4, c5, c6, c7, c8, c3, c2, c9);
        }
        return null;
    }

    public static String format(long j) {
        return format(j, DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
    }

    public static String format(Date date) {
        if (date == null) {
            return null;
        }
        return format(date.getTime(), DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
    }

    public static String format(long j, DateTimeFormatPattern dateTimeFormatPattern) {
        int shanghaiZoneOffsetTotalSeconds;
        long j2;
        ZoneId zoneId = DEFAULT_ZONE_ID;
        long floorDiv = Math.floorDiv(j, 1000L);
        if (zoneId != SHANGHAI_ZONE_ID && zoneId.getRules() != SHANGHAI_ZONE_RULES) {
            shanghaiZoneOffsetTotalSeconds = zoneId.getRules().getOffset(Instant.ofEpochMilli(j)).getTotalSeconds();
        } else {
            shanghaiZoneOffsetTotalSeconds = getShanghaiZoneOffsetTotalSeconds(floorDiv);
        }
        long j3 = floorDiv + shanghaiZoneOffsetTotalSeconds;
        long floorDiv2 = Math.floorDiv(j3, 86400L);
        int floorMod = (int) Math.floorMod(j3, 86400L);
        long j4 = (floorDiv2 + 719528) - 60;
        if (j4 < 0) {
            long j5 = ((j4 + 1) / 146097) - 1;
            j2 = j5 * 400;
            j4 += (-j5) * 146097;
        } else {
            j2 = 0;
        }
        long j6 = ((j4 * 400) + 591) / 146097;
        long j7 = j4 - ((((j6 * 365) + (j6 / 4)) - (j6 / 100)) + (j6 / 400));
        if (j7 < 0) {
            j6--;
            j7 = j4 - ((((365 * j6) + (j6 / 4)) - (j6 / 100)) + (j6 / 400));
        }
        int i = (int) j7;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j8 = j6 + j2 + (i2 / 10);
        if (j8 >= -999999999 && j8 <= 999999999) {
            int i5 = (int) j8;
            if (dateTimeFormatPattern == DateTimeFormatPattern.DATE_FORMAT_10_DASH || dateTimeFormatPattern == DateTimeFormatPattern.DATE_FORMAT_10_SLASH || dateTimeFormatPattern == DateTimeFormatPattern.DATE_FORMAT_10_DOT) {
                return format(i5, i3, i4, dateTimeFormatPattern);
            }
            long j9 = floorMod;
            if (j9 >= 0 && j9 <= 86399) {
                int i6 = (int) (j9 / 3600);
                long j10 = j9 - (i6 * 3600);
                return m7577a(i5, i3, i4, i6, (int) (j10 / 60), (int) (j10 - (r4 * 60)), dateTimeFormatPattern);
            }
            throw new DateTimeException("Invalid secondOfDay " + j9);
        }
        throw new DateTimeException("Invalid year " + j8);
    }

    public static String format(int i, int i2, int i3, int i4, int i5, int i6) {
        return m7577a(i, i2, i3, i4, i5, i6, DateTimeFormatPattern.DATE_TIME_FORMAT_19_DASH);
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x00c1, code lost:
    
        if (r10 == ':') goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x01f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseMillis19(char[] r24, int r25, java.time.ZoneId r26) {
        /*
            Method dump skipped, instructions count: 1152
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseMillis19(char[], int, java.time.ZoneId):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0371, code lost:
    
        if (r0 != 'Z') goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03e6, code lost:
    
        if (r1 != 'Z') goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0547, code lost:
    
        if (r14 == 'P') goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x077b, code lost:
    
        if (r6 != 'Z') goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x07fc, code lost:
    
        if (r12 != 'Z') goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0876, code lost:
    
        if (r4 != 'Z') goto L412;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x08f2, code lost:
    
        if (r1 != 'Z') goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0962, code lost:
    
        if (r4 != 'Z') goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x09fe, code lost:
    
        if (r1 != 'Z') goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x0bf2, code lost:
    
        if (r14 != 'Z') goto L607;
     */
    /* JADX WARN: Removed duplicated region for block: B:183:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0749 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0784  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0787  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x07ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0848 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x08c4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0934 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:410:0x09d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0c78  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0a42  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0c90 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0acb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0c92  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0b3c  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0bc4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0c36  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0d1a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0d07  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0d0a  */
    /* JADX WARN: Removed duplicated region for block: B:593:0x0db8  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x0dd0  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0bfb  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0bfe  */
    /* JADX WARN: Removed duplicated region for block: B:623:0x0a09  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x0a0c  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x08fd  */
    /* JADX WARN: Removed duplicated region for block: B:645:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:650:0x0881  */
    /* JADX WARN: Removed duplicated region for block: B:652:0x0884  */
    /* JADX WARN: Removed duplicated region for block: B:657:0x0805  */
    /* JADX WARN: Removed duplicated region for block: B:659:0x0808  */
    /* JADX WARN: Removed duplicated region for block: B:683:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0c86  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.time.ZonedDateTime parseZonedDateTime(char[] r58, int r59, int r60, java.time.ZoneId r61) {
        /*
            Method dump skipped, instructions count: 3630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.DateUtils.parseZonedDateTime(char[], int, int, java.time.ZoneId):java.time.ZonedDateTime");
    }
}
