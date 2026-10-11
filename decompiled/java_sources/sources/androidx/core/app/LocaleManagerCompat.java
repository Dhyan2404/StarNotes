package androidx.core.app;

import android.app.LocaleManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.AnyThread;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.LocaleListCompat;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class LocaleManagerCompat {

    @RequiresApi(21)
    /* renamed from: androidx.core.app.LocaleManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0544a {
        @DoNotInline
        /* renamed from: a */
        public static String m2371a(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.LocaleManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0545b {
        @DoNotInline
        /* renamed from: a */
        public static LocaleListCompat m2372a(Configuration configuration) {
            return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.core.app.LocaleManagerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0546c {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m2373a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        @DoNotInline
        /* renamed from: b */
        public static LocaleList m2374b(Object obj) {
            return ((LocaleManager) obj).getSystemLocales();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static LocaleListCompat m2369a(Configuration configuration) {
        return C0545b.m2372a(configuration);
    }

    @RequiresApi(33)
    /* renamed from: b */
    public static Object m2370b(Context context) {
        return context.getSystemService("locale");
    }

    @NonNull
    @AnyThread
    public static LocaleListCompat getApplicationLocales(@NonNull Context context) {
        if (Build.VERSION.SDK_INT < 33) {
            return LocaleListCompat.forLanguageTags(AppLocalesStorageHelper.readLocales(context));
        }
        Object m2370b = m2370b(context);
        return m2370b != null ? LocaleListCompat.wrap(C0546c.m2373a(m2370b)) : LocaleListCompat.getEmptyLocaleList();
    }

    @NonNull
    @AnyThread
    public static LocaleListCompat getSystemLocales(@NonNull Context context) {
        LocaleListCompat emptyLocaleList = LocaleListCompat.getEmptyLocaleList();
        if (Build.VERSION.SDK_INT < 33) {
            return m2369a(Resources.getSystem().getConfiguration());
        }
        Object m2370b = m2370b(context);
        return m2370b != null ? LocaleListCompat.wrap(C0546c.m2374b(m2370b)) : emptyLocaleList;
    }
}
