package com.onyx.android.sdk.base.utils;

import android.content.Context;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.os.LocaleListCompat;
import com.blankj.utilcode.util.AppUtils;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.SPUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000e\u001a\u0004\u0018\u00010\fJ\u0006\u0010\u000f\u001a\u00020\u0002J\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0013\u001a\u00020\fH\u0002J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\fH\u0002R\u0014\u0010\u001a\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\f8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u001eR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u001eR\u001c\u0010$\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/LanguageManager;", "", Constants.LOCALE_SIG, "locale", "", "isFlowSystem", "isRelaunchApp", "", "setLocale", "Landroid/content/Context;", "appContext", "applyAppLanguage", "", "getAppLanguage", "getAppLanguageStrict", "getAppLocale", "getAppLocaleStrict", "language", C6997f.f39671c, "a", "d", "e", "c", "localStr", "b", Constants.STRING_SIG, "KEY_LOCALE", "VALUE_FOLLOW_SYSTEM", "SHARED_PREFERENCES_NAME", "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "SAVED_LOCALE_SPLIT_CHAR", "LANGUAGE_CODE_SPLIT_CHAR", "Lcom/blankj/utilcode/util/SPUtils;", "kotlin.jvm.PlatformType", "Lcom/blankj/utilcode/util/SPUtils;", "spUtils", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class LanguageManager {

    @NotNull
    public static final String VALUE_FOLLOW_SYSTEM = "VALUE_FOLLOW_SYSTEM";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String KEY_LOCALE = "KEY_LOCALE";

    /* renamed from: c, reason: from kotlin metadata */
    public static final char SAVED_LOCALE_SPLIT_CHAR = '$';

    /* renamed from: d, reason: from kotlin metadata */
    public static final char LANGUAGE_CODE_SPLIT_CHAR = '-';

    @NotNull
    public static final LanguageManager INSTANCE = new LanguageManager();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String SHARED_PREFERENCES_NAME = "Utils";

    /* renamed from: e, reason: from kotlin metadata */
    public static final SPUtils spUtils = SPUtils.getInstance(SHARED_PREFERENCES_NAME);

    public static /* synthetic */ void setLocale$default(LanguageManager languageManager, Locale locale, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        languageManager.setLocale(locale, z, z2);
    }

    /* renamed from: a */
    public final String m32096a() {
        String string = spUtils.getString("KEY_LOCALE", "VALUE_FOLLOW_SYSTEM");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public final void applyAppLanguage(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        if (!BuildKt.isApiLevelAbove(33)) {
            ContextKt.updateLocaleConfiguration(appContext);
            return;
        }
        LocaleListCompat forLanguageTags = LocaleListCompat.forLanguageTags(m32099d(getAppLocale()));
        Intrinsics.checkNotNullExpressionValue(forLanguageTags, "forLanguageTags(...)");
        AppCompatDelegate.setApplicationLocales(forLanguageTags);
    }

    /* renamed from: b */
    public final boolean m32097b(String localStr) {
        char[] charArray = localStr.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        int i = 0;
        for (char c : charArray) {
            if (c == '$') {
                if (i >= 1) {
                    return false;
                }
                i++;
            }
        }
        return i == 1;
    }

    /* renamed from: c */
    public final Locale m32098c(String language) {
        int indexOf$default;
        if (!m32097b(language)) {
            return null;
        }
        try {
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) language, '$', 0, false, 6, (Object) null);
            String substring = language.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String substring2 = language.substring(indexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            return new Locale(substring, substring2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: d */
    public final String m32099d(Locale locale) {
        return locale.getLanguage() + '-' + locale.getCountry();
    }

    /* renamed from: e */
    public final String m32100e(Locale locale) {
        return locale.getLanguage() + '$' + locale.getCountry();
    }

    /* renamed from: f */
    public final void m32101f(String language, boolean isFlowSystem) {
        if (isFlowSystem) {
            spUtils.put("KEY_LOCALE", "VALUE_FOLLOW_SYSTEM");
        } else {
            spUtils.put("KEY_LOCALE", language);
        }
    }

    @NotNull
    public final String getAppLanguage() {
        String replace;
        String m32096a = m32096a();
        LocaleUtils localeUtils = LocaleUtils.INSTANCE;
        replace = StringsKt__StringsJVMKt.replace(m32096a, "$", localeUtils.getLOCALE_SPLIT_CHAR(), true);
        if (!Intrinsics.areEqual(replace, "VALUE_FOLLOW_SYSTEM")) {
            return replace;
        }
        Locale systemLanguage = LanguageUtils.getSystemLanguage();
        return systemLanguage.getLanguage() + localeUtils.getLOCALE_SPLIT_CHAR() + systemLanguage.getCountry();
    }

    @Nullable
    public final String getAppLanguageStrict() {
        String replace;
        replace = StringsKt__StringsJVMKt.replace(m32096a(), "$", LocaleUtils.INSTANCE.getLOCALE_SPLIT_CHAR(), true);
        if (Intrinsics.areEqual(replace, "VALUE_FOLLOW_SYSTEM")) {
            return null;
        }
        return replace;
    }

    @NotNull
    public final Locale getAppLocale() {
        Locale m32098c = m32098c(m32096a());
        if (m32098c != null) {
            return m32098c;
        }
        Locale systemLanguage = LanguageUtils.getSystemLanguage();
        Intrinsics.checkNotNullExpressionValue(systemLanguage, "getSystemLanguage(...)");
        return systemLanguage;
    }

    @Nullable
    public final Locale getAppLocaleStrict() {
        String m32096a = m32096a();
        if (Intrinsics.areEqual(m32096a, "VALUE_FOLLOW_SYSTEM")) {
            return null;
        }
        return m32098c(m32096a);
    }

    public final boolean isFlowSystem() {
        return Intrinsics.areEqual(m32096a(), "VALUE_FOLLOW_SYSTEM");
    }

    public final void setLocale(@NotNull Locale locale, boolean isFlowSystem, boolean isRelaunchApp) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String m32099d = m32099d(locale);
        String m32100e = m32100e(locale);
        LocaleListCompat emptyLocaleList = isFlowSystem ? LocaleListCompat.getEmptyLocaleList() : LocaleListCompat.forLanguageTags(m32099d);
        Intrinsics.checkNotNull(emptyLocaleList);
        AppCompatDelegate.setApplicationLocales(emptyLocaleList);
        m32101f(m32100e, isFlowSystem);
        if (isRelaunchApp) {
            AppUtils.relaunchApp();
        }
    }
}
