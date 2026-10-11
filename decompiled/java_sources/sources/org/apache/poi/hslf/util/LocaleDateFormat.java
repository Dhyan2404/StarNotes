package org.apache.poi.hslf.util;

import com.bumptech.glide.load.engine.GlideException;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.format.FormatStyle;
import java.util.AbstractMap;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.poi.hslf.util.LocaleDateFormat;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleID;
import org.apache.poi.util.SuppressForbidden;

@Internal
/* loaded from: classes12.dex */
public final class LocaleDateFormat {

    @SuppressForbidden("DateTimeFormatter::ofLocalizedDate and others will be localized in mapFormatId")
    /* loaded from: classes12.dex */
    public enum MapFormatBase {
        SHORT_DATE(null, FormatStyle.MEDIUM, new Function() { // from class: com.sunia.HTREnginev2.e1j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DateTimeFormatter.ofLocalizedDate((FormatStyle) obj);
            }
        }),
        LONG_DATE(null, FormatStyle.FULL, new Function() { // from class: com.sunia.HTREnginev2.e1j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DateTimeFormatter.ofLocalizedDate((FormatStyle) obj);
            }
        }),
        LONG_DATE_WITHOUT_WEEKDAY("d. MMMM yyyy", null, null),
        ALTERNATE_SHORT_DATE("dd/MM/yy", null, null),
        ISO_STANDARD_DATE("yyyy-MM-dd", null, null),
        SHORT_DATE_WITH_ABBREVIATED_MONTH("d-MMM-yy", null, null),
        SHORT_DATE_WITH_SLASHES("d/M/y", null, null),
        ALTERNATE_SHORT_DATE_WITH_ABBREVIATED_MONTH("d. MMM yy", null, null),
        ENGLISH_DATE("d MMMM yyyy", null, null),
        MONTH_AND_YEAR("MMMM yy", null, null),
        ABBREVIATED_MONTH_AND_YEAR(LocaleDateFormat.access$000() ? "MMM-yy" : "LLL-yy", null, null),
        DATE_AND_HOUR12_TIME(null, FormatStyle.MEDIUM, new Function() { // from class: org.apache.poi.hslf.util.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DateTimeFormatter lambda$static$0;
                lambda$static$0 = LocaleDateFormat.MapFormatBase.lambda$static$0((FormatStyle) obj);
                return lambda$static$0;
            }
        }),
        DATE_AND_HOUR12_TIME_WITH_SECONDS(null, FormatStyle.MEDIUM, new Function() { // from class: org.apache.poi.hslf.util.b
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DateTimeFormatter lambda$static$1;
                lambda$static$1 = LocaleDateFormat.MapFormatBase.lambda$static$1((FormatStyle) obj);
                return lambda$static$1;
            }
        }),
        HOUR12_TIME("K:mm", null, null),
        HOUR12_TIME_WITH_SECONDS("K:mm:ss", null, null),
        HOUR24_TIME("HH:mm", null, null),
        HOUR24_TIME_WITH_SECONDS("HH:mm:ss", null, null);

        private final String datefmt;
        private final Function<FormatStyle, DateTimeFormatter> formatFct;
        private final FormatStyle formatStyle;

        MapFormatBase(String str, FormatStyle formatStyle, Function function) {
            this.formatStyle = formatStyle;
            this.datefmt = str;
            this.formatFct = function;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ DateTimeFormatter lambda$static$0(FormatStyle formatStyle) {
            return new DateTimeFormatterBuilder().appendLocalized(FormatStyle.SHORT, null).appendLiteral(GlideException.C1935a.f14609h).appendLocalized(null, FormatStyle.SHORT).toFormatter();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ DateTimeFormatter lambda$static$1(FormatStyle formatStyle) {
            return new DateTimeFormatterBuilder().appendLocalized(FormatStyle.SHORT, null).appendLiteral(GlideException.C1935a.f14609h).appendLocalized(null, formatStyle).toFormatter();
        }

        public static DateTimeFormatter mapFormatId(Locale locale, int i) {
            MapFormatBase[] values = values();
            if (i < 0 || i >= values.length) {
                return DateTimeFormatter.BASIC_ISO_DATE;
            }
            MapFormatBase mapFormatBase = values[i];
            String str = mapFormatBase.datefmt;
            return str == null ? mapFormatBase.formatFct.apply(mapFormatBase.formatStyle).withLocale(locale) : DateTimeFormatter.ofPattern(str, locale);
        }
    }

    /* loaded from: classes12.dex */
    public enum MapFormatException {
        CHINESE(new LocaleID[]{LocaleID.ZH, LocaleID.ZH_HANS, LocaleID.ZH_HANT, LocaleID.ZH_CN, LocaleID.ZH_SG, LocaleID.ZH_MO, LocaleID.ZH_HK, LocaleID.ZH_YUE_HK}, 0, 1, "yyyy年M月d日星期W", "yyyy年M月d日", "yyyy/M/d", "yy.M.d", "yyyy年M月d日星期W", "yyyy年M月d日", "yyyy年M月d日星期W", "yyyy年M月", "yyyy年M月", "h时m分s秒", "h时m分", "h时m分", "h时m分", "ah时m分", "ah时m分", "EEEE年O月A日", "EEEE年O月A日星期W", "EEEE年O月"),
        HINDI(new LocaleID[]{LocaleID.HI, LocaleID.HI_IN}, "dd/M/g", "dddd, d MMMM yyyy", "dd MMMM yyyy", "dd/M/yy", "yy-M-dd", "d-MMMM-yyyy", "dd.M.g", "dd MMMM. yy", "dd MMMM yy", "MMMM YY", "MMMM-g", "dd/M/g HH:mm", "dd/M/g HH:mm:ss", "HH:mm a", "HH:mm:ss a", "HH:mm", "HH:mm:ss"),
        JAPANESE(new LocaleID[]{LocaleID.JA, LocaleID.JA_JP, LocaleID.JA_PLOC_JP}, 0, 1, "EEEy年M月d日", "yyyy年M月d日", "yyyy/M/d", "yyyy年M月d日", "yy年M月d日", "yyyy年M月d日", "yyyy年M月d日(EEE)", "yyyy年M月", "yyyy年M月", "yy/M/d H時m分", "yy/M/d H時m分s秒", "a h時m分", "a h時m分s秒", "H時m分", "H時m分s秒", "yyyy年M月d日 EEE曜日"),
        KOREAN(new LocaleID[]{LocaleID.KO, LocaleID.KO_KR}, 0, 1, "yyyy년 M월 d일 EEE요일", "yyyy년 M월 d일", "yyyy/M/d", "yyMMdd", "yyyy년 M월 d일", "yyyy년 M월", "yyyy년 M월 d일", "yyyy", "yyyy년 M월", "yyyy년 M월 d일 a h시 m분", "yy년 M월 d일 H시 m분 s초", "a h시 m분", "a h시 m분 s초", "H시 m분", "H시 m분 S초"),
        HUNGARIAN(new LocaleID[]{LocaleID.HU, LocaleID.HU_HU}, 0, 1, 2, 3, 4, 5, 6, "yy. MMM. dd.", "’yy MMM.", "MMMM ’yy", 10, 11, 12, "a h:mm", "a h:mm:ss", 15, 16),
        BOKMAL(new LocaleID[]{LocaleID.NB_NO}, 0, 1, 2, 3, 4, "d. MMM. yyyy", "d/m yyyy", "MMM. yy", "yyyy.mm.dd", 9, "d. MMM.", 11, 12, 13, 14, 15, 16),
        CZECH(new LocaleID[]{LocaleID.CS, LocaleID.CS_CZ}, 0, 1, 2, 3, 4, 5, 6, 7, 8, "MMMM ’yy", 10, 11, 12, 13, 14, 15, 16),
        DANISH(new LocaleID[]{LocaleID.DA, LocaleID.DA_DK}, 0, "d. MMMM yyyy", "yy-MM-dd", "yyyy.MM.dd", 4, "MMMM yyyy", "d.M.yy", "d/M yyyy", "dd.MM.yyyy", "d.M.yyyy", "dd/MM yyyy", 11, 12, 13, 14, 15, 16),
        DUTCH(new LocaleID[]{LocaleID.NL, LocaleID.NL_BE, LocaleID.NL_NL}, 0, 1, 2, 3, 4, 5, 6, 7, 8, "MMMM ’yy", 10, 11, 12, 13, 14, 15, 16),
        FINISH(new LocaleID[]{LocaleID.FI, LocaleID.FI_FI}, 0, 1, 2, 3, 4, 5, 6, 7, 8, "MMMM ’yy", 10, 11, 12, 13, 14, 15, 16),
        FRENCH_CANADIAN(new LocaleID[]{LocaleID.FR_CA}, 0, 1, 2, "yy MM dd", 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
        GERMAN(new LocaleID[]{LocaleID.DE, LocaleID.DE_AT, LocaleID.DE_CH, LocaleID.DE_DE, LocaleID.DE_LI, LocaleID.DE_LU}, 0, 1, 2, 3, 4, "yy-MM-dd", 6, "dd. MMM. yyyy", 8, 9, 10, 11, 12, 13, 14, 15, 16),
        ITALIAN(new LocaleID[]{LocaleID.IT, LocaleID.IT_IT, LocaleID.IT_CH}, 0, 1, 2, 3, 4, "d-MMM.-yy", 6, "d. MMM. yy", "MMM. ’yy", "MMMM ’yy", 10, 11, 12, 13, 14, 15, 16),
        NO_MAP(new LocaleID[]{LocaleID.INVALID_O}, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

        private static final Map<LocaleID, MapFormatException> LCID_LOOKUP = (Map) Stream.of((Object[]) values()).flatMap(new Function() { // from class: org.apache.poi.hslf.util.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream lambda$static$1;
                lambda$static$1 = LocaleDateFormat.MapFormatException.lambda$static$1((LocaleDateFormat.MapFormatException) obj);
                return lambda$static$1;
            }
        }).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.f1j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (LocaleID) ((AbstractMap.SimpleEntry) obj).getKey();
            }
        }, new Function() { // from class: org.apache.poi.hslf.util.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (LocaleDateFormat.MapFormatException) ((AbstractMap.SimpleEntry) obj).getValue();
            }
        }));
        private final LocaleID[] lcid;
        private final Object[] mapping;

        MapFormatException(LocaleID[] localeIDArr, Object... objArr) {
            this.lcid = localeIDArr;
            this.mapping = objArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AbstractMap.SimpleEntry lambda$null$0(MapFormatException mapFormatException, LocaleID localeID) {
            return new AbstractMap.SimpleEntry(localeID, mapFormatException);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Stream lambda$static$1(final MapFormatException mapFormatException) {
            return Stream.of((Object[]) mapFormatException.lcid).map(new Function() { // from class: org.apache.poi.hslf.util.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AbstractMap.SimpleEntry lambda$null$0;
                    lambda$null$0 = LocaleDateFormat.MapFormatException.lambda$null$0(LocaleDateFormat.MapFormatException.this, (LocaleID) obj);
                    return lambda$null$0;
                }
            });
        }

        public static Object mapFormatId(LocaleID localeID, int i) {
            Object[] objArr = LCID_LOOKUP.getOrDefault(localeID, NO_MAP).mapping;
            return (i < 0 || i >= objArr.length) ? Integer.valueOf(i) : objArr[i];
        }
    }

    /* loaded from: classes12.dex */
    public enum MapFormatId {
        NONE,
        PPT
    }

    /* loaded from: classes12.dex */
    public enum MapFormatPPT {
        EN_US(LocaleID.EN_US, "MM/dd/yyyy", 1, 8, "MMMM dd, yyyy", 5, 9, 10, 11, 12, 15, 16, "h:mm a", "h:mm:ss a"),
        EN_AU(LocaleID.EN_AU, 0, 1, "d MMMM, yyy", 2, 5, 9, 10, 11, 12, 15, 16, 13, 14),
        JA_JP(LocaleID.JA_JP, 4, 8, 7, 3, 0, 9, 5, 11, 12, "HH:mm", "HH:mm:ss", 15, 16),
        ZH_TW(LocaleID.ZH_TW, 0, 1, 3, 7, 12, 9, 10, 4, 11, "HH:mm", "HH:mm:ss", "H:mm a", "H:mm:ss a"),
        KO_KR(LocaleID.KO_KR, 0, 1, 6, 3, 4, 10, 7, 12, 11, "HH:mm", "HH:mm:ss", 13, 14),
        AR_SA(LocaleID.AR_SA, 0, 1, 2, 3, 4, 5, 8, 7, 8, 1, 10, 11, 5),
        HE_IL(LocaleID.HE_IL, 0, 1, 2, 6, 11, 5, 12, 7, 8, 9, 1, 11, 6),
        SV_SE(LocaleID.SV_SE, 0, 1, 3, 2, 7, 9, 10, 11, 12, 15, 16, 13, 14),
        ZH_CN(LocaleID.ZH_CN, 0, 1, 2, 2, 4, 9, 5, "yyyy年M月d日h时m分", "yyyy年M月d日星期Wh时m分s秒", "HH:mm", "HH:mm:ss", "a h时m分", "a h时m分s秒"),
        ZH_SG(LocaleID.ZH_SG, 0, 1, 3, 2, 4, 9, 5, "yyyy年M月d日h时m分", "yyyy年M月d日星期Wh时m分s秒", "HH:mm", "HH:mm:ss", "a h时m分", "a h时m分s秒"),
        ZH_MO(LocaleID.ZH_MO, 0, 1, 3, 2, 4, 9, 5, "yyyy年M月d日h时m分", "yyyy年M月d日星期Wh时m分s秒", "HH:mm", "HH:mm:ss", "a h时m分", "a h时m分s秒"),
        ZH_HK(LocaleID.ZH_HK, 0, 1, 3, 2, 4, 9, 5, "yyyy年M月d日h时m分", "yyyy年M月d日星期Wh时m分s秒", "HH:mm", "HH:mm:ss", "a h时m分", "a h时m分s秒"),
        TH_TH(LocaleID.TH_TH, 0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 13, 14),
        VI_VN(LocaleID.VI_VN, 0, 1, 2, 3, 5, 6, 10, 11, 12, 13, 14, 15, 16),
        HI_IN(LocaleID.HI_IN, 1, 2, 3, 5, 7, 11, 13, 0, 1, 5, 10, 11, 14),
        SYR_SY(LocaleID.SYR_SY, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
        NO_MAP(LocaleID.INVALID_O, 0, 1, 3, 2, 5, 9, 10, 11, 12, 15, 16, 13, 14, 4, 6, 7, 8);

        private static final Map<LocaleID, MapFormatPPT> LCID_LOOKUP = (Map) Stream.of((Object[]) values()).collect(Collectors.toMap(new Function() { // from class: org.apache.poi.hslf.util.f
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((LocaleDateFormat.MapFormatPPT) obj).getLocaleID();
            }
        }, Function.identity()));
        private final LocaleID lcid;
        private final Object[] mapping;

        MapFormatPPT(LocaleID localeID, Object... objArr) {
            this.lcid = localeID;
            this.mapping = objArr;
        }

        public static Object mapFormatId(LocaleID localeID, int i) {
            Object[] objArr = LCID_LOOKUP.getOrDefault(localeID, NO_MAP).mapping;
            return (i < 0 || i >= objArr.length) ? Integer.valueOf(i) : objArr[i];
        }

        public LocaleID getLocaleID() {
            return this.lcid;
        }
    }

    private LocaleDateFormat() {
    }

    public static /* synthetic */ boolean access$000() {
        return isOldFmt();
    }

    private static boolean isOldFmt() {
        return System.getProperty("java.version").startsWith("1.8");
    }

    public static DateTimeFormatter map(LocaleID localeID, int i, MapFormatId mapFormatId) {
        Locale forLanguageTag = Locale.forLanguageTag(localeID.getLanguageTag());
        if (mapFormatId == MapFormatId.PPT) {
            Object mapFormatId2 = MapFormatPPT.mapFormatId(localeID, i);
            if (mapFormatId2 instanceof String) {
                return DateTimeFormatter.ofPattern((String) mapFormatId2, forLanguageTag);
            }
            i = ((Integer) mapFormatId2).intValue();
        }
        Object mapFormatId3 = MapFormatException.mapFormatId(localeID, i);
        return mapFormatId3 instanceof String ? DateTimeFormatter.ofPattern((String) mapFormatId3, forLanguageTag) : MapFormatBase.mapFormatId(forLanguageTag, ((Integer) mapFormatId3).intValue());
    }
}
