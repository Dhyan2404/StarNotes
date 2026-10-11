package com.sunia.HTREnginev2;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C5139R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public class yyn {

    /* renamed from: a */
    public static final String f91198a = "UTC";

    /* renamed from: b */
    public static AtomicReference<gin> f91199b = new AtomicReference<>();

    @TargetApi(24)
    /* renamed from: A */
    public static DateFormat m58511A(Locale locale) {
        return m58518d("yMMMM", locale);
    }

    @TargetApi(24)
    /* renamed from: B */
    public static DateFormat m58512B(Locale locale) {
        return m58518d("yMMMMEEEEd", locale);
    }

    @NonNull
    /* renamed from: C */
    public static String m58513C(@NonNull String str) {
        int m58516b = m58516b(str, "yY", 1, 0);
        if (m58516b >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int m58516b2 = m58516b(str, "EMd", 1, m58516b);
        if (m58516b2 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(m58516b(str, str2, -1, m58516b) + 1, m58516b2), " ").trim();
    }

    /* renamed from: D */
    public static void m58514D(@Nullable gin ginVar) {
        f91199b.set(ginVar);
    }

    /* renamed from: a */
    public static long m58515a(long j) {
        Calendar m58538x = m58538x();
        m58538x.setTimeInMillis(j);
        return m58520f(m58538x).getTimeInMillis();
    }

    /* renamed from: b */
    public static int m58516b(@NonNull String str, @NonNull String str2, int i, int i2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            if (str.charAt(i2) != '\'') {
                i2 += i;
            }
            do {
                i2 += i;
                if (i2 >= 0 && i2 < str.length()) {
                }
                i2 += i;
            } while (str.charAt(i2) != '\'');
            i2 += i;
        }
        return i2;
    }

    @TargetApi(24)
    /* renamed from: c */
    public static DateFormat m58517c(Locale locale) {
        return m58518d("MMMd", locale);
    }

    @TargetApi(24)
    /* renamed from: d */
    public static DateFormat m58518d(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(m58537w());
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        return instanceForSkeleton;
    }

    @NonNull
    /* renamed from: e */
    public static String m58519e(@NonNull String str) {
        return str.replaceAll("[^dMy/\\-.]", "").replaceAll("d{1,2}", "dd").replaceAll("M{1,2}", "MM").replaceAll("y{1,4}", "yyyy").replaceAll("\\.$", "").replaceAll("My", "M/y");
    }

    /* renamed from: f */
    public static Calendar m58520f(Calendar calendar) {
        Calendar m58539y = m58539y(calendar);
        Calendar m58538x = m58538x();
        m58538x.set(m58539y.get(1), m58539y.get(2), m58539y.get(5));
        return m58538x;
    }

    /* renamed from: g */
    public static SimpleDateFormat m58521g() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(m58519e(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toPattern()), Locale.getDefault());
        simpleDateFormat.setTimeZone(m58535u());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    /* renamed from: h */
    public static String m58522h(Resources resources, SimpleDateFormat simpleDateFormat) {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(C5139R.string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(C5139R.string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(C5139R.string.mtrl_picker_text_input_day_abbr);
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage())) {
            pattern = pattern.replaceAll("d+", "d").replaceAll("M+", "M").replaceAll("y+", "y");
        }
        return pattern.replace("d", string3).replace("M", string2).replace("y", string);
    }

    /* renamed from: i */
    public static java.text.DateFormat m58523i(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(m58535u());
        return dateInstance;
    }

    /* renamed from: j */
    public static java.text.DateFormat m58524j() {
        return m58525k(Locale.getDefault());
    }

    /* renamed from: k */
    public static java.text.DateFormat m58525k(Locale locale) {
        return m58523i(0, locale);
    }

    /* renamed from: l */
    public static java.text.DateFormat m58526l() {
        return m58527m(Locale.getDefault());
    }

    /* renamed from: m */
    public static java.text.DateFormat m58527m(Locale locale) {
        return m58523i(2, locale);
    }

    /* renamed from: n */
    public static java.text.DateFormat m58528n() {
        return m58529o(Locale.getDefault());
    }

    /* renamed from: o */
    public static java.text.DateFormat m58529o(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) m58527m(locale);
        simpleDateFormat.applyPattern(m58513C(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    @TargetApi(24)
    /* renamed from: p */
    public static DateFormat m58530p(Locale locale) {
        return m58518d("MMMMEEEEd", locale);
    }

    /* renamed from: q */
    public static java.text.DateFormat m58531q(@NonNull java.text.DateFormat dateFormat) {
        java.text.DateFormat dateFormat2 = (java.text.DateFormat) dateFormat.clone();
        dateFormat2.setTimeZone(m58535u());
        return dateFormat2;
    }

    /* renamed from: r */
    public static SimpleDateFormat m58532r(String str) {
        return m58533s(str, Locale.getDefault());
    }

    /* renamed from: s */
    public static SimpleDateFormat m58533s(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(m58535u());
        return simpleDateFormat;
    }

    /* renamed from: t */
    public static gin m58534t() {
        gin ginVar = f91199b.get();
        return ginVar == null ? gin.m54279e() : ginVar;
    }

    /* renamed from: u */
    public static TimeZone m58535u() {
        return TimeZone.getTimeZone("UTC");
    }

    /* renamed from: v */
    public static Calendar m58536v() {
        Calendar m54280c = m58534t().m54280c();
        m54280c.set(11, 0);
        m54280c.set(12, 0);
        m54280c.set(13, 0);
        m54280c.set(14, 0);
        m54280c.setTimeZone(m58535u());
        return m54280c;
    }

    @TargetApi(24)
    /* renamed from: w */
    public static android.icu.util.TimeZone m58537w() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    /* renamed from: x */
    public static Calendar m58538x() {
        return m58539y(null);
    }

    /* renamed from: y */
    public static Calendar m58539y(@Nullable Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(m58535u());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    /* renamed from: z */
    public static DateFormat m58540z(Locale locale) {
        return m58518d("yMMMd", locale);
    }
}
