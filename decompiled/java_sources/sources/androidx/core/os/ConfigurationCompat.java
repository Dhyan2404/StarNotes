package androidx.core.os;

import android.content.res.Configuration;
import android.os.LocaleList;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class ConfigurationCompat {

    @RequiresApi(24)
    /* renamed from: androidx.core.os.ConfigurationCompat$a */
    /* loaded from: classes3.dex */
    public static class C0702a {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m3111a(Configuration configuration) {
            return configuration.getLocales();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3112b(@NonNull Configuration configuration, @NonNull LocaleListCompat localeListCompat) {
            configuration.setLocales((LocaleList) localeListCompat.unwrap());
        }
    }

    @NonNull
    public static LocaleListCompat getLocales(@NonNull Configuration configuration) {
        return LocaleListCompat.wrap(C0702a.m3111a(configuration));
    }

    public static void setLocales(@NonNull Configuration configuration, @NonNull LocaleListCompat localeListCompat) {
        C0702a.m3112b(configuration, localeListCompat);
    }
}
