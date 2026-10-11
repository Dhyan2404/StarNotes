package com.onyx.galaxy.note.settings.data;

import androidx.annotation.StringRes;
import androidx.core.content.FileProvider;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\u0081\u0002\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/LanguageType;", "", "locale", Constants.LOCALE_SIG, FileProvider.f5230t, "", "(Ljava/lang/String;ILjava/util/Locale;I)V", "getDisplayName", "()I", "getLocale", "()Ljava/util/Locale;", "DEFAULT", "CHINESE_SIMPLIFIED", "CHINESE_TRADITIONAL", "ENGLISH_UK", "ENGLISH_US", "GERMAN", "SPANISH", "PORTUGUESE", "TURKISH", "KOREAN", "JAPANESE", "ARABIC", "FRENCH", "ITALIAN", "RUSSIAN", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LanguageType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LanguageType[] $VALUES;
    public static final LanguageType ARABIC;
    public static final LanguageType CHINESE_SIMPLIFIED;
    public static final LanguageType CHINESE_TRADITIONAL;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final LanguageType DEFAULT = new LanguageType("DEFAULT", 0, new Locale(""), C10651R.string.language_default);
    public static final LanguageType ENGLISH_UK;
    public static final LanguageType ENGLISH_US;
    public static final LanguageType FRENCH;
    public static final LanguageType GERMAN;
    public static final LanguageType ITALIAN;
    public static final LanguageType JAPANESE;
    public static final LanguageType KOREAN;
    public static final LanguageType PORTUGUESE;
    public static final LanguageType RUSSIAN;
    public static final LanguageType SPANISH;
    public static final LanguageType TURKISH;
    private final int displayName;

    @NotNull
    private final Locale locale;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/LanguageType$Companion;", "", "()V", "getByAppLanguageCode", "Lcom/onyx/galaxy/note/settings/data/LanguageType;", "appLanguageCode", "", "getLanguageListFromConfig", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nLanguageType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageType.kt\ncom/onyx/galaxy/note/settings/data/LanguageType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1549#2:44\n1620#2,3:45\n*S KotlinDebug\n*F\n+ 1 LanguageType.kt\ncom/onyx/galaxy/note/settings/data/LanguageType$Companion\n*L\n38#1:44\n38#1:45,3\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LanguageType getByAppLanguageCode(@Nullable String appLanguageCode) {
            Object obj;
            if (appLanguageCode != null && !Intrinsics.areEqual(appLanguageCode, "VALUE_FOLLOW_SYSTEM")) {
                Iterator<E> it2 = LanguageType.getEntries().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it2.next();
                    LanguageType languageType = (LanguageType) obj;
                    if (Intrinsics.areEqual(languageType.getLocale().getLanguage() + LocaleUtils.INSTANCE.getLOCALE_SPLIT_CHAR() + languageType.getLocale().getCountry(), appLanguageCode)) {
                        break;
                    }
                }
                LanguageType languageType2 = (LanguageType) obj;
                return languageType2 != null ? languageType2 : LanguageType.DEFAULT;
            }
            return LanguageType.DEFAULT;
        }

        @NotNull
        public final List<LanguageType> getLanguageListFromConfig() {
            int collectionSizeOrDefault;
            List<String> languageList = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getLanguageList();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(languageList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = languageList.iterator();
            while (it2.hasNext()) {
                arrayList.add(LanguageType.valueOf((String) it2.next()));
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ LanguageType[] $values() {
        return new LanguageType[]{DEFAULT, CHINESE_SIMPLIFIED, CHINESE_TRADITIONAL, ENGLISH_UK, ENGLISH_US, GERMAN, SPANISH, PORTUGUESE, TURKISH, KOREAN, JAPANESE, ARABIC, FRENCH, ITALIAN, RUSSIAN};
    }

    static {
        Locale SIMPLIFIED_CHINESE = Locale.SIMPLIFIED_CHINESE;
        Intrinsics.checkNotNullExpressionValue(SIMPLIFIED_CHINESE, "SIMPLIFIED_CHINESE");
        CHINESE_SIMPLIFIED = new LanguageType("CHINESE_SIMPLIFIED", 1, SIMPLIFIED_CHINESE, C10651R.string.chinese_simplified);
        Locale TRADITIONAL_CHINESE = Locale.TRADITIONAL_CHINESE;
        Intrinsics.checkNotNullExpressionValue(TRADITIONAL_CHINESE, "TRADITIONAL_CHINESE");
        CHINESE_TRADITIONAL = new LanguageType("CHINESE_TRADITIONAL", 2, TRADITIONAL_CHINESE, C10651R.string.chinese_traditional);
        Locale UK = Locale.UK;
        Intrinsics.checkNotNullExpressionValue(UK, "UK");
        ENGLISH_UK = new LanguageType("ENGLISH_UK", 3, UK, C10651R.string.english_uk);
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        ENGLISH_US = new LanguageType("ENGLISH_US", 4, US, C10651R.string.english_us);
        GERMAN = new LanguageType("GERMAN", 5, new Locale(OcrValues.LANG_GERMAN), C10651R.string.german);
        SPANISH = new LanguageType("SPANISH", 6, new Locale("es"), C10651R.string.spanish);
        PORTUGUESE = new LanguageType("PORTUGUESE", 7, new Locale(ExtUnits.UNIT_PT), C10651R.string.portuguese);
        TURKISH = new LanguageType("TURKISH", 8, new Locale("tr"), C10651R.string.turkish);
        KOREAN = new LanguageType("KOREAN", 9, new Locale(OcrValues.LANG_KOREAN), C10651R.string.korean);
        JAPANESE = new LanguageType("JAPANESE", 10, new Locale(OcrValues.LANG_JAPANESE), C10651R.string.japanese);
        ARABIC = new LanguageType("ARABIC", 11, new Locale(ArchiveStreamFactory.f105352AR), C10651R.string.arabic);
        FRENCH = new LanguageType("FRENCH", 12, new Locale(OcrValues.LANG_FRENCH), C10651R.string.french);
        ITALIAN = new LanguageType("ITALIAN", 13, new Locale(OcrValues.LANG_ITALIAN), C10651R.string.italian);
        RUSSIAN = new LanguageType("RUSSIAN", 14, new Locale(OcrValues.LANG_RUSSIAN), C10651R.string.russian);
        LanguageType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private LanguageType(String str, @StringRes int i, Locale locale, int i2) {
        this.locale = locale;
        this.displayName = i2;
    }

    @NotNull
    public static EnumEntries<LanguageType> getEntries() {
        return $ENTRIES;
    }

    public static LanguageType valueOf(String str) {
        return (LanguageType) Enum.valueOf(LanguageType.class, str);
    }

    public static LanguageType[] values() {
        return (LanguageType[]) $VALUES.clone();
    }

    public final int getDisplayName() {
        return this.displayName;
    }

    @NotNull
    public final Locale getLocale() {
        return this.locale;
    }
}
