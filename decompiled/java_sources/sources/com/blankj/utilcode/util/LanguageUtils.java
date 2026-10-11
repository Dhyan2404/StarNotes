package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.Utils;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public class LanguageUtils {

    /* renamed from: a */
    public static final String f13784a = "KEY_LOCALE";

    /* renamed from: b */
    public static final String f13785b = "VALUE_FOLLOW_SYSTEM";

    /* renamed from: com.blankj.utilcode.util.LanguageUtils$a */
    /* loaded from: classes3.dex */
    public static class C1819a implements Utils.Consumer<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ boolean f13786a;

        public C1819a(boolean z) {
            this.f13786a = z;
        }

        @Override // com.blankj.utilcode.util.Utils.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Boolean bool) {
            if (bool.booleanValue()) {
                LanguageUtils.m8126i(this.f13786a);
            } else {
                C1887b.m8464Q0();
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.LanguageUtils$b */
    /* loaded from: classes3.dex */
    public static class RunnableC1820b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Locale f13787e;

        /* renamed from: f */
        public final /* synthetic */ int f13788f;

        /* renamed from: g */
        public final /* synthetic */ Utils.Consumer f13789g;

        public RunnableC1820b(Locale locale, int i, Utils.Consumer consumer) {
            this.f13787e = locale;
            this.f13788f = i;
            this.f13789g = consumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            LanguageUtils.m8125h(this.f13787e, this.f13788f + 1, this.f13789g);
        }
    }

    public LanguageUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void applyLanguage(@NonNull Locale locale) {
        applyLanguage(locale, false);
    }

    public static void applySystemLanguage() {
        applySystemLanguage(false);
    }

    public static Context attachBaseContext(Context context) {
        Locale m8128k;
        String string = C1887b.m8493d0().getString("KEY_LOCALE");
        if (TextUtils.isEmpty(string) || "VALUE_FOLLOW_SYSTEM".equals(string) || (m8128k = m8128k(string)) == null) {
            return context;
        }
        Configuration configuration = context.getResources().getConfiguration();
        m8127j(configuration, m8128k);
        return context.createConfigurationContext(configuration);
    }

    /* renamed from: b */
    public static void m8119b(Activity activity) {
        String string = C1887b.m8493d0().getString("KEY_LOCALE");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        Locale m8121d = "VALUE_FOLLOW_SYSTEM".equals(string) ? m8121d(Resources.getSystem().getConfiguration()) : m8128k(string);
        if (m8121d == null) {
            return;
        }
        m8130m(activity, m8121d);
        m8130m(Utils.getApp(), m8121d);
    }

    /* renamed from: c */
    public static void m8120c(Locale locale, boolean z) {
        if (locale == null) {
            C1887b.m8493d0().put("KEY_LOCALE", "VALUE_FOLLOW_SYSTEM", true);
        } else {
            C1887b.m8493d0().put("KEY_LOCALE", m8124g(locale), true);
        }
        if (locale == null) {
            locale = m8121d(Resources.getSystem().getConfiguration());
        }
        updateAppContextLanguage(locale, new C1819a(z));
    }

    /* renamed from: d */
    public static Locale m8121d(Configuration configuration) {
        return configuration.getLocales().get(0);
    }

    /* renamed from: e */
    public static boolean m8122e(String str) {
        int i = 0;
        for (char c : str.toCharArray()) {
            if (c == '$') {
                if (i >= 1) {
                    return false;
                }
                i++;
            }
        }
        return i == 1;
    }

    /* renamed from: f */
    public static boolean m8123f(Locale locale, Locale locale2) {
        return C1887b.m8431A(locale2.getLanguage(), locale.getLanguage()) && C1887b.m8431A(locale2.getCountry(), locale.getCountry());
    }

    /* renamed from: g */
    public static String m8124g(Locale locale) {
        return locale.getLanguage() + "$" + locale.getCountry();
    }

    public static Locale getAppContextLanguage() {
        return getContextLanguage(Utils.getApp());
    }

    public static Locale getAppliedLanguage() {
        String string = C1887b.m8493d0().getString("KEY_LOCALE");
        if (TextUtils.isEmpty(string) || "VALUE_FOLLOW_SYSTEM".equals(string)) {
            return null;
        }
        return m8128k(string);
    }

    public static Locale getContextLanguage(Context context) {
        return m8121d(context.getResources().getConfiguration());
    }

    public static Locale getSystemLanguage() {
        return m8121d(Resources.getSystem().getConfiguration());
    }

    /* renamed from: h */
    public static void m8125h(Locale locale, int i, Utils.Consumer<Boolean> consumer) {
        Resources resources = Utils.getApp().getResources();
        Configuration configuration = resources.getConfiguration();
        Locale m8121d = m8121d(configuration);
        m8127j(configuration, locale);
        Utils.getApp().getResources().updateConfiguration(configuration, resources.getDisplayMetrics());
        if (consumer == null) {
            return;
        }
        if (m8123f(m8121d, locale)) {
            consumer.accept(Boolean.TRUE);
        } else if (i < 20) {
            C1887b.m8476W0(new RunnableC1820b(locale, i, consumer), 16L);
        } else {
            Log.e("LanguageUtils", "appLocal didn't update.");
            consumer.accept(Boolean.FALSE);
        }
    }

    /* renamed from: i */
    public static void m8126i(boolean z) {
        if (z) {
            C1887b.m8464Q0();
            return;
        }
        Iterator<Activity> it2 = C1887b.m8449J().iterator();
        while (it2.hasNext()) {
            it2.next().recreate();
        }
    }

    public static boolean isAppliedLanguage() {
        return getAppliedLanguage() != null;
    }

    /* renamed from: j */
    public static void m8127j(Configuration configuration, Locale locale) {
        configuration.setLocale(locale);
    }

    /* renamed from: k */
    public static Locale m8128k(String str) {
        Locale m8129l = m8129l(str);
        if (m8129l == null) {
            Log.e("LanguageUtils", "The string of " + str + " is not in the correct format.");
            C1887b.m8493d0().remove("KEY_LOCALE");
        }
        return m8129l;
    }

    /* renamed from: l */
    public static Locale m8129l(String str) {
        if (!m8122e(str)) {
            return null;
        }
        try {
            int indexOf = str.indexOf("$");
            return new Locale(str.substring(0, indexOf), str.substring(indexOf + 1));
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: m */
    public static void m8130m(Context context, Locale locale) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        m8127j(configuration, locale);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    public static void updateAppContextLanguage(@NonNull Locale locale, @Nullable Utils.Consumer<Boolean> consumer) {
        m8125h(locale, 0, consumer);
    }

    public static void applyLanguage(@NonNull Locale locale, boolean z) {
        m8120c(locale, z);
    }

    public static void applySystemLanguage(boolean z) {
        m8120c(null, z);
    }

    public static boolean isAppliedLanguage(@NonNull Locale locale) {
        Locale appliedLanguage = getAppliedLanguage();
        if (appliedLanguage == null) {
            return false;
        }
        return m8123f(locale, appliedLanguage);
    }
}
