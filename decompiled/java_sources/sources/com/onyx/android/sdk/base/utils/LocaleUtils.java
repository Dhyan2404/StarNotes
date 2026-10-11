package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.os.LocaleList;
import androidx.core.text.TextUtilsCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010%\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bF\u0010GJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\tJ\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eJ\u0018\u0010\u000b\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012J\u001c\u0010\u0015\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eJ\u000e\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u0002J\u000e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0002J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002R\u001a\u0010&\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001a\u0010)\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b'\u0010#\u001a\u0004\b(\u0010%R\u001a\u0010,\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b*\u0010#\u001a\u0004\b+\u0010%R\u001a\u0010/\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b-\u0010#\u001a\u0004\b.\u0010%R\u001a\u00102\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b0\u0010#\u001a\u0004\b1\u0010%R\u001a\u00105\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b3\u0010#\u001a\u0004\b4\u0010%R\"\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0011\u0010:\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0011\u0010<\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b<\u0010;R\u0011\u0010=\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b=\u0010;R\u0011\u0010>\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b>\u0010;R\u0011\u0010?\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b?\u0010;R\u0011\u0010@\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b@\u0010;R\u0011\u0010B\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bA\u0010%R\u0011\u0010C\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\bC\u0010;R\u0011\u0010D\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\bD\u0010;R\u0011\u0010E\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\bE\u0010;¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/LocaleUtils;", "", "", "getNoteLanguage", Constants.LOCALE_SIG, "getNoteLanguageLocale", "getSystemLanguage", "sourceLocal", "compareLocal", "", "isSameLocale", "isSameLanguage", "isEnglishLocale", "targetLocale", "", "localeCollection", "language", "locale", "Landroid/content/Context;", "context", "getCurrentLocale", Keywords.FUNC_CONTAINS_STRING, "getLocaleStr", "localStr", "getLocal", "getLocalSafely", "getDisplayNameSafely", "getDisplayCountrySafely", "isTWHKLocale", "isChinaLocale", "isChineLanguage", "getLocaleByLang", "getLocaleByMap", "getLocalMappingServiceLanguage", "a", Constants.STRING_SIG, "getLOCALE_SPLIT_CHAR", "()Ljava/lang/String;", "LOCALE_SPLIT_CHAR", "b", "getLOCALE_RUSSIAN_LANGUAGE", "LOCALE_RUSSIAN_LANGUAGE", "c", "getLOCALE_TURKEY_LANGUAGE", "LOCALE_TURKEY_LANGUAGE", "d", "getLOCALE_RUSSIAN_COUNTRY", "LOCALE_RUSSIAN_COUNTRY", "e", "getLOCALE_TURKEY_COUNTRY", "LOCALE_TURKEY_COUNTRY", C6997f.f39671c, "getLOCALE_HONGKONG", "LOCALE_HONGKONG", "", C6998g.f39679a, "Ljava/util/Map;", "langLocaleMap", "isChinese", Constants.BOOLEAN_VALUE_SIG, "isSimplifiedChinese", "isTraditionalChinese", "isEnglish", "isRussian", "isTurkey", "getCurrentLocaleStr", "currentLocaleStr", "isCJK", "isCurrentLayoutDirectionRTL", "isCurrentLayoutDirectionVerticalLR", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLocaleUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocaleUtils.kt\ncom/onyx/android/sdk/base/utils/LocaleUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,254:1\n731#2,9:255\n731#2,9:266\n37#3,2:264\n37#3,2:275\n*S KotlinDebug\n*F\n+ 1 LocaleUtils.kt\ncom/onyx/android/sdk/base/utils/LocaleUtils\n*L\n163#1:255,9\n174#1:266,9\n164#1:264,2\n175#1:275,2\n*E\n"})
/* loaded from: classes7.dex */
public final class LocaleUtils {

    @NotNull
    public static final LocaleUtils INSTANCE = new LocaleUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String LOCALE_SPLIT_CHAR = "_";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String LOCALE_RUSSIAN_LANGUAGE = OcrValues.LANG_RUSSIAN;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String LOCALE_TURKEY_LANGUAGE = "tr";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String LOCALE_RUSSIAN_COUNTRY = "RU";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String LOCALE_TURKEY_COUNTRY = "TR";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String LOCALE_HONGKONG = "HK";

    /* renamed from: g, reason: from kotlin metadata */
    public static Map<String, Locale> langLocaleMap;

    public final boolean contains(@NotNull Locale targetLocale, @NotNull Collection<Locale> localeCollection) {
        Intrinsics.checkNotNullParameter(targetLocale, "targetLocale");
        Intrinsics.checkNotNullParameter(localeCollection, "localeCollection");
        Iterator<Locale> it2 = localeCollection.iterator();
        while (it2.hasNext()) {
            if (isSameLocale(targetLocale, it2.next())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Locale getCurrentLocale(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        LocaleList locales = context.getResources().getConfiguration().getLocales();
        Intrinsics.checkNotNullExpressionValue(locales, "getLocales(...)");
        if (locales.size() > 0) {
            Locale locale = locales.get(0);
            Intrinsics.checkNotNullExpressionValue(locale, "get(...)");
            return locale;
        }
        Locale locale2 = context.getResources().getConfiguration().locale;
        Intrinsics.checkNotNullExpressionValue(locale2, "locale");
        return locale2;
    }

    @NotNull
    public final String getCurrentLocaleStr() {
        String language = Locale.getDefault().getLanguage();
        Intrinsics.checkNotNull(language);
        return getLocaleStr(getLocaleByLang(language));
    }

    @NotNull
    public final String getDisplayCountrySafely(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (!isTWHKLocale(locale)) {
            String displayCountry = locale.getDisplayCountry();
            Intrinsics.checkNotNullExpressionValue(displayCountry, "getDisplayCountry(...)");
            return displayCountry;
        }
        StringBuilder sb = new StringBuilder(Locale.CHINA.getDisplayCountry());
        if (StringUtils.isAlpha(Locale.CHINA.getDisplayCountry())) {
            sb.append(" ");
        }
        sb.append(locale.getDisplayCountry());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String getDisplayNameSafely(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (!isTWHKLocale(locale)) {
            String displayName = locale.getDisplayName();
            Intrinsics.checkNotNullExpressionValue(displayName, "getDisplayName(...)");
            return displayName;
        }
        return locale.getDisplayLanguage() + " (" + getDisplayCountrySafely(locale) + ')';
    }

    @NotNull
    public final String getLOCALE_HONGKONG() {
        return LOCALE_HONGKONG;
    }

    @NotNull
    public final String getLOCALE_RUSSIAN_COUNTRY() {
        return LOCALE_RUSSIAN_COUNTRY;
    }

    @NotNull
    public final String getLOCALE_RUSSIAN_LANGUAGE() {
        return LOCALE_RUSSIAN_LANGUAGE;
    }

    @NotNull
    public final String getLOCALE_SPLIT_CHAR() {
        return LOCALE_SPLIT_CHAR;
    }

    @NotNull
    public final String getLOCALE_TURKEY_COUNTRY() {
        return LOCALE_TURKEY_COUNTRY;
    }

    @NotNull
    public final String getLOCALE_TURKEY_LANGUAGE() {
        return LOCALE_TURKEY_LANGUAGE;
    }

    @Nullable
    public final Locale getLocal(@NotNull String localStr) {
        List emptyList;
        Intrinsics.checkNotNullParameter(localStr, "localStr");
        List<String> split = new Regex(LOCALE_SPLIT_CHAR).split(localStr, 0);
        if (!split.isEmpty()) {
            ListIterator<String> listIterator = split.listIterator(split.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        String[] strArr = (String[]) emptyList.toArray(new String[0]);
        if (strArr.length < 2) {
            return null;
        }
        return strArr.length > 2 ? new Locale(strArr[0], strArr[1], strArr[2]) : new Locale(strArr[0], strArr[1]);
    }

    @NotNull
    public final String getLocalMappingServiceLanguage() {
        LocaleUtils localeUtils = INSTANCE;
        Locale noteLanguageLocale = localeUtils.getNoteLanguageLocale();
        return localeUtils.isChinaLocale(noteLanguageLocale) ? "zh_CN" : localeUtils.isTWHKLocale(noteLanguageLocale) ? "zh_TW" : "en";
    }

    @NotNull
    public final Locale getLocalSafely(@NotNull String localStr) {
        List emptyList;
        Intrinsics.checkNotNullParameter(localStr, "localStr");
        List<String> split = new Regex(LOCALE_SPLIT_CHAR).split(localStr, 0);
        if (!split.isEmpty()) {
            ListIterator<String> listIterator = split.listIterator(split.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        String[] strArr = (String[]) emptyList.toArray(new String[0]);
        return strArr.length < 2 ? new Locale(localStr) : strArr.length > 2 ? new Locale(strArr[0], strArr[1], strArr[2]) : new Locale(strArr[0], strArr[1]);
    }

    @NotNull
    public final Locale getLocaleByLang(@NotNull String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        return getLocaleByMap(language);
    }

    @NotNull
    public final Locale getLocaleByMap(@NotNull String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        if (langLocaleMap == null) {
            Intrinsics.throwUninitializedPropertyAccessException("langLocaleMap");
        }
        Map<String, Locale> map = langLocaleMap;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("langLocaleMap");
            map = null;
        }
        Locale locale = map.get(language);
        if (locale != null) {
            return locale;
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        return US;
    }

    @NotNull
    public final String getLocaleStr(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        StringBuilder sb = new StringBuilder();
        sb.append(language);
        if (StringUtils.isNotBlank(country)) {
            sb.append(LOCALE_SPLIT_CHAR);
            sb.append(country);
        }
        if (!StringUtils.isEmpty(variant)) {
            sb.append(LOCALE_SPLIT_CHAR);
            sb.append(variant);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String getNoteLanguage() {
        String appLanguageStrict = LanguageManager.INSTANCE.getAppLanguageStrict();
        return appLanguageStrict == null ? getSystemLanguage() : appLanguageStrict;
    }

    @NotNull
    public final Locale getNoteLanguageLocale() {
        return LanguageManager.INSTANCE.getAppLocale();
    }

    @NotNull
    public final String getSystemLanguage() {
        boolean isBlank;
        boolean isBlank2;
        Locale locale = Locale.getDefault();
        String script = locale.getScript();
        Intrinsics.checkNotNullExpressionValue(script, "getScript(...)");
        isBlank = StringsKt__StringsJVMKt.isBlank(script);
        if (!isBlank) {
            return locale.getLanguage() + NameUtil.USCORE + locale.getScript();
        }
        String country = locale.getCountry();
        Intrinsics.checkNotNullExpressionValue(country, "getCountry(...)");
        isBlank2 = StringsKt__StringsJVMKt.isBlank(country);
        if (!(!isBlank2)) {
            String language = locale.getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
            return language;
        }
        return locale.getLanguage() + NameUtil.USCORE + locale.getCountry();
    }

    public final boolean isCJK() {
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNull(locale);
        Locale CHINESE = Locale.CHINESE;
        Intrinsics.checkNotNullExpressionValue(CHINESE, "CHINESE");
        if (!isSameLanguage(locale, CHINESE)) {
            Locale JAPANESE = Locale.JAPANESE;
            Intrinsics.checkNotNullExpressionValue(JAPANESE, "JAPANESE");
            if (!isSameLanguage(locale, JAPANESE)) {
                Locale KOREAN = Locale.KOREAN;
                Intrinsics.checkNotNullExpressionValue(KOREAN, "KOREAN");
                if (!isSameLanguage(locale, KOREAN)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean isChinaLocale(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        Locale CHINA = Locale.CHINA;
        Intrinsics.checkNotNullExpressionValue(CHINA, "CHINA");
        return isSameLocale(locale, CHINA);
    }

    public final boolean isChineLanguage(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        Locale CHINA = Locale.CHINA;
        Intrinsics.checkNotNullExpressionValue(CHINA, "CHINA");
        return isSameLanguage(locale, CHINA);
    }

    public final boolean isChinese() {
        return Intrinsics.areEqual(Locale.getDefault().getDisplayLanguage(), Locale.CHINESE.getDisplayLanguage());
    }

    public final boolean isCurrentLayoutDirectionRTL() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public final boolean isCurrentLayoutDirectionVerticalLR() {
        return Intrinsics.areEqual(Locale.getDefault().getLanguage(), "mn");
    }

    public final boolean isEnglish() {
        return Intrinsics.areEqual(Locale.getDefault().getDisplayLanguage(), Locale.ENGLISH.getDisplayLanguage());
    }

    public final boolean isEnglishLocale() {
        return Intrinsics.areEqual(LanguageManager.INSTANCE.getAppLocale().getLanguage(), Locale.ENGLISH.getLanguage());
    }

    public final boolean isRussian() {
        return Intrinsics.areEqual(Locale.getDefault().getLanguage(), LOCALE_RUSSIAN_LANGUAGE);
    }

    public final boolean isSameLanguage(@NotNull Locale sourceLocal, @NotNull Locale compareLocal) {
        boolean equals;
        Intrinsics.checkNotNullParameter(sourceLocal, "sourceLocal");
        Intrinsics.checkNotNullParameter(compareLocal, "compareLocal");
        equals = StringsKt__StringsJVMKt.equals(sourceLocal.getLanguage(), compareLocal.getLanguage(), true);
        return equals;
    }

    public final boolean isSameLocale(@NotNull Locale sourceLocal, @NotNull Locale compareLocal) {
        boolean equals;
        boolean equals2;
        Intrinsics.checkNotNullParameter(sourceLocal, "sourceLocal");
        Intrinsics.checkNotNullParameter(compareLocal, "compareLocal");
        equals = StringsKt__StringsJVMKt.equals(sourceLocal.getLanguage(), compareLocal.getLanguage(), true);
        if (equals) {
            equals2 = StringsKt__StringsJVMKt.equals(sourceLocal.getCountry(), compareLocal.getCountry(), true);
            if (equals2) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSimplifiedChinese() {
        return Intrinsics.areEqual(Locale.getDefault().getDisplayLanguage(), Locale.SIMPLIFIED_CHINESE.getDisplayLanguage()) && Intrinsics.areEqual(Locale.getDefault().getCountry(), Locale.SIMPLIFIED_CHINESE.getCountry());
    }

    public final boolean isTWHKLocale(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        return Intrinsics.areEqual(locale, Locale.TAIWAN) || Intrinsics.areEqual(locale.getCountry(), LOCALE_HONGKONG);
    }

    public final boolean isTraditionalChinese() {
        return isChinese() && !isSimplifiedChinese();
    }

    public final boolean isTurkey() {
        return Intrinsics.areEqual(Locale.getDefault().getLanguage(), LOCALE_TURKEY_LANGUAGE);
    }

    public final boolean isSameLanguage(@NotNull Locale targetLocale, @NotNull Collection<Locale> localeCollection) {
        Intrinsics.checkNotNullParameter(targetLocale, "targetLocale");
        Intrinsics.checkNotNullParameter(localeCollection, "localeCollection");
        Iterator<Locale> it2 = localeCollection.iterator();
        while (it2.hasNext()) {
            if (isSameLanguage(targetLocale, it2.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSameLanguage(@Nullable String language, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        return StringKt.safelyEquals(locale.getLanguage(), language);
    }
}
