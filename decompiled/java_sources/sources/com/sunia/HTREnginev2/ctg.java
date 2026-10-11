package com.sunia.HTREnginev2;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public abstract class ctg<F extends Format> {

    /* renamed from: b */
    public static final int f67169b = -1;

    /* renamed from: c */
    public static final ConcurrentMap<C13586a, String> f67170c = new ConcurrentHashMap(7);

    /* renamed from: a */
    public final ConcurrentMap<C13586a, F> f67171a = new ConcurrentHashMap(7);

    /* renamed from: com.sunia.HTREnginev2.ctg$a */
    /* loaded from: classes12.dex */
    public static class C13586a {

        /* renamed from: a */
        public final Object[] f67172a;

        /* renamed from: b */
        public int f67173b;

        public C13586a(Object... objArr) {
            this.f67172a = objArr;
        }

        public boolean equals(Object obj) {
            return Arrays.equals(this.f67172a, ((C13586a) obj).f67172a);
        }

        public int hashCode() {
            if (this.f67173b == 0) {
                int i = 0;
                for (Object obj : this.f67172a) {
                    if (obj != null) {
                        i = (i * 7) + obj.hashCode();
                    }
                }
                this.f67173b = i;
            }
            return this.f67173b;
        }
    }

    /* renamed from: g */
    public static String m53511g(Integer num, Integer num2, Locale locale) {
        C13586a c13586a = new C13586a(num, num2, locale);
        ConcurrentMap<C13586a, String> concurrentMap = f67170c;
        String str = concurrentMap.get(c13586a);
        if (str != null) {
            return str;
        }
        try {
            String pattern = ((SimpleDateFormat) (num == null ? DateFormat.getTimeInstance(num2.intValue(), locale) : num2 == null ? DateFormat.getDateInstance(num.intValue(), locale) : DateFormat.getDateTimeInstance(num.intValue(), num2.intValue(), locale))).toPattern();
            String putIfAbsent = concurrentMap.putIfAbsent(c13586a, pattern);
            return putIfAbsent != null ? putIfAbsent : pattern;
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("No date time pattern for locale: " + locale);
        }
    }

    /* renamed from: a */
    public abstract F mo53512a(String str, TimeZone timeZone, Locale locale);

    /* renamed from: b */
    public F m53513b(int i, TimeZone timeZone, Locale locale) {
        return m53515d(Integer.valueOf(i), null, timeZone, locale);
    }

    /* renamed from: c */
    public F m53514c(int i, int i2, TimeZone timeZone, Locale locale) {
        return m53515d(Integer.valueOf(i), Integer.valueOf(i2), timeZone, locale);
    }

    /* renamed from: d */
    public final F m53515d(Integer num, Integer num2, TimeZone timeZone, Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return m53517f(m53511g(num, num2, locale), timeZone, locale);
    }

    /* renamed from: e */
    public F m53516e() {
        return m53514c(3, 3, TimeZone.getDefault(), Locale.getDefault());
    }

    /* renamed from: f */
    public F m53517f(String str, TimeZone timeZone, Locale locale) {
        Validate.notNull(str, "pattern must not be null", new Object[0]);
        if (timeZone == null) {
            timeZone = TimeZone.getDefault();
        }
        if (locale == null) {
            locale = Locale.getDefault();
        }
        C13586a c13586a = new C13586a(str, timeZone, locale);
        F f = this.f67171a.get(c13586a);
        if (f != null) {
            return f;
        }
        F mo53512a = mo53512a(str, timeZone, locale);
        F putIfAbsent = this.f67171a.putIfAbsent(c13586a, mo53512a);
        return putIfAbsent != null ? putIfAbsent : mo53512a;
    }

    /* renamed from: h */
    public F m53518h(int i, TimeZone timeZone, Locale locale) {
        return m53515d(null, Integer.valueOf(i), timeZone, locale);
    }
}
