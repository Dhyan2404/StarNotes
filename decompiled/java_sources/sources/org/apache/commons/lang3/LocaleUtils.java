package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes12.dex */
public class LocaleUtils {

    /* renamed from: a */
    public static final ConcurrentMap<String, List<Locale>> f107401a = new ConcurrentHashMap();

    /* renamed from: b */
    public static final ConcurrentMap<String, List<Locale>> f107402b = new ConcurrentHashMap();

    /* renamed from: org.apache.commons.lang3.LocaleUtils$a */
    /* loaded from: classes12.dex */
    public static class C18918a {

        /* renamed from: a */
        public static final List<Locale> f107403a;

        /* renamed from: b */
        public static final Set<Locale> f107404b;

        static {
            ArrayList arrayList = new ArrayList(Arrays.asList(Locale.getAvailableLocales()));
            f107403a = Collections.unmodifiableList(arrayList);
            f107404b = Collections.unmodifiableSet(new HashSet(arrayList));
        }
    }

    /* renamed from: a */
    public static boolean m67238a(String str) {
        return StringUtils.isAllUpperCase(str) && str.length() == 2;
    }

    public static List<Locale> availableLocaleList() {
        return C18918a.f107403a;
    }

    public static Set<Locale> availableLocaleSet() {
        return C18918a.f107404b;
    }

    /* renamed from: b */
    public static boolean m67239b(String str) {
        return StringUtils.isAllLowerCase(str) && (str.length() == 2 || str.length() == 3);
    }

    /* renamed from: c */
    public static boolean m67240c(String str) {
        return StringUtils.isNumeric(str) && str.length() == 3;
    }

    public static List<Locale> countriesByLanguage(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<Locale> list = f107402b.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (Locale locale : availableLocaleList()) {
            if (str.equals(locale.getLanguage()) && locale.getCountry().length() != 0 && locale.getVariant().isEmpty()) {
                arrayList.add(locale);
            }
        }
        List<Locale> unmodifiableList = Collections.unmodifiableList(arrayList);
        ConcurrentMap<String, List<Locale>> concurrentMap = f107402b;
        concurrentMap.putIfAbsent(str, unmodifiableList);
        return concurrentMap.get(str);
    }

    /* renamed from: d */
    public static Locale m67241d(String str) {
        if (m67239b(str)) {
            return new Locale(str);
        }
        String[] split = str.split("_", -1);
        String str2 = split[0];
        if (split.length == 2) {
            String str3 = split[1];
            if ((m67239b(str2) && m67238a(str3)) || m67240c(str3)) {
                return new Locale(str2, str3);
            }
        } else if (split.length == 3) {
            String str4 = split[1];
            String str5 = split[2];
            if (m67239b(str2) && ((str4.length() == 0 || m67238a(str4) || m67240c(str4)) && str5.length() > 0)) {
                return new Locale(str2, str4, str5);
            }
        }
        throw new IllegalArgumentException("Invalid locale format: " + str);
    }

    public static boolean isAvailableLocale(Locale locale) {
        return availableLocaleList().contains(locale);
    }

    public static List<Locale> languagesByCountry(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<Locale> list = f107401a.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (Locale locale : availableLocaleList()) {
            if (str.equals(locale.getCountry()) && locale.getVariant().isEmpty()) {
                arrayList.add(locale);
            }
        }
        List<Locale> unmodifiableList = Collections.unmodifiableList(arrayList);
        ConcurrentMap<String, List<Locale>> concurrentMap = f107401a;
        concurrentMap.putIfAbsent(str, unmodifiableList);
        return concurrentMap.get(str);
    }

    public static List<Locale> localeLookupList(Locale locale) {
        return localeLookupList(locale, locale);
    }

    public static Locale toLocale(String str) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return new Locale("", "");
        }
        if (str.contains("#")) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        int length = str.length();
        if (length < 2) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (str.charAt(0) != '_') {
            return m67241d(str);
        }
        if (length < 3) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        char charAt = str.charAt(1);
        char charAt2 = str.charAt(2);
        if (!Character.isUpperCase(charAt) || !Character.isUpperCase(charAt2)) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (length == 3) {
            return new Locale("", str.substring(1, 3));
        }
        if (length < 5) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (str.charAt(3) == '_') {
            return new Locale("", str.substring(1, 3), str.substring(4));
        }
        throw new IllegalArgumentException("Invalid locale format: " + str);
    }

    public static List<Locale> localeLookupList(Locale locale, Locale locale2) {
        ArrayList arrayList = new ArrayList(4);
        if (locale != null) {
            arrayList.add(locale);
            if (locale.getVariant().length() > 0) {
                arrayList.add(new Locale(locale.getLanguage(), locale.getCountry()));
            }
            if (locale.getCountry().length() > 0) {
                arrayList.add(new Locale(locale.getLanguage(), ""));
            }
            if (!arrayList.contains(locale2)) {
                arrayList.add(locale2);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}
