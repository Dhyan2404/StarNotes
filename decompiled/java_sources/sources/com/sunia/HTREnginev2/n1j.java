package com.sunia.HTREnginev2;

import android.os.LocaleList;
import androidx.annotation.RequiresApi;
import androidx.core.os.LocaleListCompat;
import java.util.LinkedHashSet;
import java.util.Locale;

@RequiresApi(24)
/* loaded from: classes3.dex */
public final class n1j {
    /* renamed from: a */
    public static LocaleListCompat m55703a(LocaleListCompat localeListCompat, LocaleListCompat localeListCompat2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i = 0;
        while (i < localeListCompat.size() + localeListCompat2.size()) {
            Locale locale = i < localeListCompat.size() ? localeListCompat.get(i) : localeListCompat2.get(i - localeListCompat.size());
            if (locale != null) {
                linkedHashSet.add(locale);
            }
            i++;
        }
        return LocaleListCompat.create((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
    }

    /* renamed from: b */
    public static LocaleListCompat m55704b(LocaleList localeList, LocaleList localeList2) {
        return (localeList == null || localeList.isEmpty()) ? LocaleListCompat.getEmptyLocaleList() : m55703a(LocaleListCompat.wrap(localeList), LocaleListCompat.wrap(localeList2));
    }

    /* renamed from: c */
    public static LocaleListCompat m55705c(LocaleListCompat localeListCompat, LocaleListCompat localeListCompat2) {
        return (localeListCompat == null || localeListCompat.isEmpty()) ? LocaleListCompat.getEmptyLocaleList() : m55703a(localeListCompat, localeListCompat2);
    }
}
