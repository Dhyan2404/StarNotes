package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.Size;
import androidx.core.text.ICUCompat;
import com.sunia.HTREnginev2.l1j;
import com.sunia.HTREnginev2.m1j;
import java.util.Locale;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;

/* loaded from: classes3.dex */
public final class LocaleListCompat {

    /* renamed from: b */
    public static final LocaleListCompat f5540b = create(new Locale[0]);

    /* renamed from: a */
    public final l1j f5541a;

    @RequiresApi(21)
    /* renamed from: androidx.core.os.LocaleListCompat$a */
    /* loaded from: classes3.dex */
    public static class C0707a {

        /* renamed from: a */
        public static final Locale[] f5542a = {new Locale("en", "XA"), new Locale(ArchiveStreamFactory.f105352AR, "XB")};

        @DoNotInline
        /* renamed from: a */
        public static Locale m3119a(String str) {
            return Locale.forLanguageTag(str);
        }

        /* renamed from: b */
        public static boolean m3120b(Locale locale) {
            for (Locale locale2 : f5542a) {
                if (locale2.equals(locale)) {
                    return true;
                }
            }
            return false;
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3121c(@NonNull Locale locale, @NonNull Locale locale2) {
            if (locale.equals(locale2)) {
                return true;
            }
            if (!locale.getLanguage().equals(locale2.getLanguage()) || m3120b(locale) || m3120b(locale2)) {
                return false;
            }
            String maximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
            if (!maximizeAndGetScript.isEmpty()) {
                return maximizeAndGetScript.equals(ICUCompat.maximizeAndGetScript(locale2));
            }
            String country = locale.getCountry();
            return country.isEmpty() || country.equals(locale2.getCountry());
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.os.LocaleListCompat$b */
    /* loaded from: classes3.dex */
    public static class C0708b {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m3122a(Locale... localeArr) {
            return new LocaleList(localeArr);
        }

        @DoNotInline
        /* renamed from: b */
        public static LocaleList m3123b() {
            return LocaleList.getAdjustedDefault();
        }

        @DoNotInline
        /* renamed from: c */
        public static LocaleList m3124c() {
            return LocaleList.getDefault();
        }
    }

    public LocaleListCompat(l1j l1jVar) {
        this.f5541a = l1jVar;
    }

    /* renamed from: a */
    public static Locale m3118a(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else {
            if (!str.contains("_")) {
                return new Locale(str);
            }
            String[] split2 = str.split("_", -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + IteratorUtils.f104924b);
    }

    @NonNull
    public static LocaleListCompat create(@NonNull Locale... localeArr) {
        return wrap(C0708b.m3122a(localeArr));
    }

    @NonNull
    public static LocaleListCompat forLanguageTags(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            return getEmptyLocaleList();
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = C0707a.m3119a(split[i]);
        }
        return create(localeArr);
    }

    @NonNull
    @Size(min = 1)
    public static LocaleListCompat getAdjustedDefault() {
        return wrap(C0708b.m3123b());
    }

    @NonNull
    @Size(min = 1)
    public static LocaleListCompat getDefault() {
        return wrap(C0708b.m3124c());
    }

    @NonNull
    public static LocaleListCompat getEmptyLocaleList() {
        return f5540b;
    }

    @RequiresApi(21)
    public static boolean matchesLanguageAndScript(@NonNull Locale locale, @NonNull Locale locale2) {
        boolean matchesLanguageAndScript;
        if (Build.VERSION.SDK_INT < 33) {
            return C0707a.m3121c(locale, locale2);
        }
        matchesLanguageAndScript = LocaleList.matchesLanguageAndScript(locale, locale2);
        return matchesLanguageAndScript;
    }

    @RequiresApi(24)
    @Deprecated
    public static LocaleListCompat wrap(Object obj) {
        return wrap((LocaleList) obj);
    }

    public boolean equals(Object obj) {
        return (obj instanceof LocaleListCompat) && this.f5541a.equals(((LocaleListCompat) obj).f5541a);
    }

    @Nullable
    public Locale get(int i) {
        return this.f5541a.get(i);
    }

    @Nullable
    public Locale getFirstMatch(@NonNull String[] strArr) {
        return this.f5541a.mo55107b(strArr);
    }

    public int hashCode() {
        return this.f5541a.hashCode();
    }

    @IntRange(from = -1)
    public int indexOf(@Nullable Locale locale) {
        return this.f5541a.mo55108c(locale);
    }

    public boolean isEmpty() {
        return this.f5541a.isEmpty();
    }

    @IntRange(from = 0)
    public int size() {
        return this.f5541a.size();
    }

    @NonNull
    public String toLanguageTags() {
        return this.f5541a.mo55109d();
    }

    @NonNull
    public String toString() {
        return this.f5541a.toString();
    }

    @Nullable
    public Object unwrap() {
        return this.f5541a.mo55106a();
    }

    @NonNull
    @RequiresApi(24)
    public static LocaleListCompat wrap(@NonNull LocaleList localeList) {
        return new LocaleListCompat(new m1j(localeList));
    }
}
