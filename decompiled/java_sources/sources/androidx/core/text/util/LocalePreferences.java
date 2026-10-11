package androidx.core.text.util;

import android.icu.number.NumberFormatter;
import android.icu.number.UnlocalizedNumberFormatter;
import android.icu.text.DateFormat;
import android.icu.text.DateTimePatternGenerator;
import android.icu.util.Calendar;
import android.icu.util.MeasureUnit;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Locale;

@RequiresApi(21)
/* loaded from: classes3.dex */
public final class LocalePreferences {

    /* renamed from: a */
    public static final String f5701a = "LocalePreferences";

    /* renamed from: b */
    public static final String[] f5702b = {"BS", "BZ", "KY", "PR", "PW", "US"};

    /* loaded from: classes3.dex */
    public static class CalendarType {
        public static final String CHINESE = "chinese";
        public static final String DANGI = "dangi";
        public static final String DEFAULT = "";
        public static final String GREGORIAN = "gregorian";
        public static final String HEBREW = "hebrew";
        public static final String INDIAN = "indian";
        public static final String ISLAMIC = "islamic";
        public static final String ISLAMIC_CIVIL = "islamic-civil";
        public static final String ISLAMIC_RGSA = "islamic-rgsa";
        public static final String ISLAMIC_TBLA = "islamic-tbla";
        public static final String ISLAMIC_UMALQURA = "islamic-umalqura";
        public static final String PERSIAN = "persian";

        /* renamed from: a */
        public static final String f5703a = "ca";

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes3.dex */
        public @interface CalendarTypes {
        }
    }

    /* loaded from: classes3.dex */
    public static class FirstDayOfWeek {
        public static final String DEFAULT = "";
        public static final String FRIDAY = "fri";
        public static final String MONDAY = "mon";
        public static final String SATURDAY = "sat";
        public static final String SUNDAY = "sun";
        public static final String THURSDAY = "thu";
        public static final String TUESDAY = "tue";
        public static final String WEDNESDAY = "wed";

        /* renamed from: a */
        public static final String f5704a = "fw";

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes3.dex */
        public @interface Days {
        }
    }

    /* loaded from: classes3.dex */
    public static class HourCycle {
        public static final String DEFAULT = "";
        public static final String H11 = "h11";
        public static final String H12 = "h12";
        public static final String H23 = "h23";
        public static final String H24 = "h24";

        /* renamed from: a */
        public static final String f5705a = "hc";

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes3.dex */
        public @interface HourCycleTypes {
        }
    }

    /* loaded from: classes3.dex */
    public static class TemperatureUnit {
        public static final String CELSIUS = "celsius";
        public static final String DEFAULT = "";
        public static final String FAHRENHEIT = "fahrenhe";
        public static final String KELVIN = "kelvin";

        /* renamed from: a */
        public static final String f5706a = "mu";

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes3.dex */
        public @interface TemperatureUnits {
        }
    }

    /* renamed from: androidx.core.text.util.LocalePreferences$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0749a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5707a;

        static {
            DateFormat.HourCycle[] values;
            DateFormat.HourCycle hourCycle;
            int ordinal;
            DateFormat.HourCycle hourCycle2;
            int ordinal2;
            DateFormat.HourCycle hourCycle3;
            int ordinal3;
            DateFormat.HourCycle hourCycle4;
            int ordinal4;
            values = DateFormat.HourCycle.values();
            int[] iArr = new int[values.length];
            f5707a = iArr;
            try {
                hourCycle4 = DateFormat.HourCycle.HOUR_CYCLE_11;
                ordinal4 = hourCycle4.ordinal();
                iArr[ordinal4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f5707a;
                hourCycle3 = DateFormat.HourCycle.HOUR_CYCLE_12;
                ordinal3 = hourCycle3.ordinal();
                iArr2[ordinal3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f5707a;
                hourCycle2 = DateFormat.HourCycle.HOUR_CYCLE_23;
                ordinal2 = hourCycle2.ordinal();
                iArr3[ordinal2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f5707a;
                hourCycle = DateFormat.HourCycle.HOUR_CYCLE_24;
                ordinal = hourCycle.ordinal();
                iArr4[ordinal] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.text.util.LocalePreferences$b */
    /* loaded from: classes3.dex */
    public static class C0750b {
        @DoNotInline
        /* renamed from: a */
        public static String m3250a(@NonNull Locale locale) {
            return Calendar.getInstance(locale).getType();
        }

        @DoNotInline
        /* renamed from: b */
        public static Locale m3251b() {
            return Locale.getDefault(Locale.Category.FORMAT);
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.core.text.util.LocalePreferences$c */
    /* loaded from: classes3.dex */
    public static class C0751c {
        @DoNotInline
        /* renamed from: a */
        public static String m3252a(@NonNull Locale locale) {
            return m3253b(DateTimePatternGenerator.getInstance(locale).getDefaultHourCycle());
        }

        /* renamed from: b */
        public static String m3253b(DateFormat.HourCycle hourCycle) {
            int i = C0749a.f5707a[hourCycle.ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "" : HourCycle.H24 : HourCycle.H23 : HourCycle.H12 : HourCycle.H11;
        }

        @DoNotInline
        /* renamed from: c */
        public static String m3254c(@NonNull Locale locale) {
            String identifier = ((UnlocalizedNumberFormatter) ((UnlocalizedNumberFormatter) NumberFormatter.with().usage("weather")).unit(MeasureUnit.CELSIUS)).locale(locale).format(1L).getOutputUnit().getIdentifier();
            return identifier.startsWith(TemperatureUnit.FAHRENHEIT) ? TemperatureUnit.FAHRENHEIT : identifier;
        }
    }

    /* renamed from: a */
    public static String m3244a(@NonNull Locale locale) {
        return m3247d(java.util.Calendar.getInstance(locale).getFirstDayOfWeek());
    }

    /* renamed from: b */
    public static String m3245b(@NonNull Locale locale) {
        return android.text.format.DateFormat.getBestDateTimePattern(locale, "jm").contains("H") ? HourCycle.H23 : HourCycle.H12;
    }

    /* renamed from: c */
    public static Locale m3246c() {
        return Locale.getDefault();
    }

    /* renamed from: d */
    public static String m3247d(int i) {
        return (i < 1 || i > 7) ? "" : new String[]{FirstDayOfWeek.SUNDAY, FirstDayOfWeek.MONDAY, FirstDayOfWeek.TUESDAY, FirstDayOfWeek.WEDNESDAY, FirstDayOfWeek.THURSDAY, FirstDayOfWeek.FRIDAY, FirstDayOfWeek.SATURDAY}[i - 1];
    }

    /* renamed from: e */
    public static String m3248e(Locale locale) {
        return Arrays.binarySearch(f5702b, locale.getCountry()) >= 0 ? TemperatureUnit.FAHRENHEIT : TemperatureUnit.CELSIUS;
    }

    /* renamed from: f */
    public static String m3249f(String str, String str2, Locale locale, boolean z) {
        String unicodeLocaleType = locale.getUnicodeLocaleType(str);
        if (unicodeLocaleType != null) {
            return unicodeLocaleType;
        }
        if (z) {
            return null;
        }
        return str2;
    }

    @NonNull
    public static String getCalendarType() {
        return getCalendarType(true);
    }

    @NonNull
    public static String getFirstDayOfWeek() {
        return getFirstDayOfWeek(true);
    }

    @NonNull
    public static String getHourCycle() {
        return getHourCycle(true);
    }

    @NonNull
    public static String getTemperatureUnit() {
        return getTemperatureUnit(true);
    }

    @NonNull
    public static String getCalendarType(@NonNull Locale locale) {
        return getCalendarType(locale, true);
    }

    @NonNull
    public static String getFirstDayOfWeek(@NonNull Locale locale) {
        return getFirstDayOfWeek(locale, true);
    }

    @NonNull
    public static String getHourCycle(@NonNull Locale locale) {
        return getHourCycle(locale, true);
    }

    @NonNull
    public static String getTemperatureUnit(@NonNull Locale locale) {
        return getTemperatureUnit(locale, true);
    }

    @NonNull
    public static String getCalendarType(boolean z) {
        return getCalendarType(C0750b.m3251b(), z);
    }

    @NonNull
    public static String getFirstDayOfWeek(boolean z) {
        return getFirstDayOfWeek(C0750b.m3251b(), z);
    }

    @NonNull
    public static String getHourCycle(boolean z) {
        return getHourCycle(C0750b.m3251b(), z);
    }

    @NonNull
    public static String getTemperatureUnit(boolean z) {
        return getTemperatureUnit(C0750b.m3251b(), z);
    }

    @NonNull
    public static String getCalendarType(@NonNull Locale locale, boolean z) {
        String m3249f = m3249f(CalendarType.f5703a, "", locale, z);
        return m3249f != null ? m3249f : C0750b.m3250a(locale);
    }

    @NonNull
    public static String getFirstDayOfWeek(@NonNull Locale locale, boolean z) {
        String m3249f = m3249f(FirstDayOfWeek.f5704a, "", locale, z);
        return m3249f != null ? m3249f : m3244a(locale);
    }

    @NonNull
    public static String getHourCycle(@NonNull Locale locale, boolean z) {
        String m3249f = m3249f(HourCycle.f5705a, "", locale, z);
        if (m3249f != null) {
            return m3249f;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            return C0751c.m3252a(locale);
        }
        return m3245b(locale);
    }

    @NonNull
    public static String getTemperatureUnit(@NonNull Locale locale, boolean z) {
        String m3249f = m3249f(TemperatureUnit.f5706a, "", locale, z);
        if (m3249f != null) {
            return m3249f;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            return C0751c.m3254c(locale);
        }
        return m3248e(locale);
    }
}
