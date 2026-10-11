package androidx.core.text;

import android.annotation.SuppressLint;
import android.icu.util.ULocale;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class ICUCompat {

    /* renamed from: a */
    public static final String f5664a = "ICUCompat";

    /* renamed from: b */
    public static Method f5665b;

    /* renamed from: c */
    public static Method f5666c;

    @RequiresApi(21)
    /* renamed from: androidx.core.text.ICUCompat$a */
    /* loaded from: classes3.dex */
    public static class C0737a {
        @DoNotInline
        /* renamed from: a */
        public static String m3221a(Locale locale) {
            return locale.getScript();
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.text.ICUCompat$b */
    /* loaded from: classes3.dex */
    public static class C0738b {
        @DoNotInline
        /* renamed from: a */
        public static ULocale m3222a(Object obj) {
            return ULocale.addLikelySubtags((ULocale) obj);
        }

        @DoNotInline
        /* renamed from: b */
        public static ULocale m3223b(Locale locale) {
            return ULocale.forLocale(locale);
        }

        @DoNotInline
        /* renamed from: c */
        public static String m3224c(Object obj) {
            return ((ULocale) obj).getScript();
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: a */
    public static String m3219a(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = f5666c;
            if (method != null) {
                return (String) method.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w(f5664a, e);
        } catch (InvocationTargetException e2) {
            Log.w(f5664a, e2);
        }
        return locale2;
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: b */
    public static String m3220b(String str) {
        try {
            Method method = f5665b;
            if (method != null) {
                return (String) method.invoke(null, str);
            }
        } catch (IllegalAccessException e) {
            Log.w(f5664a, e);
        } catch (InvocationTargetException e2) {
            Log.w(f5664a, e2);
        }
        return null;
    }

    @Nullable
    public static String maximizeAndGetScript(@NonNull Locale locale) {
        return C0738b.m3224c(C0738b.m3222a(C0738b.m3223b(locale)));
    }
}
