package com.onyx.android.sdk.base.utils;

import android.graphics.Typeface;
import android.os.Environment;
import androidx.annotation.WorkerThread;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.data.font.FontInfo;
import com.onyx.android.sdk.base.data.font.FontType;
import com.onyx.android.sdk.base.data.font.TTCFont;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bU\u0010VJ\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u001e\u0010\r\u001a\u00020\f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0002J\u0010\u0010\u0016\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0011J<\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nJF\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u001e\u0010\u001d\u001a\u00020\f2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u001eJ\u001e\u0010\u001f\u001a\u00020\u00032\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\u001eJ(\u0010&\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\n\u0018\u00010%2\u0006\u0010#\u001a\u00020\"2\b\u0010$\u001a\u0004\u0018\u00010\u0011J&\u0010'\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\n0%2\u0006\u0010!\u001a\u00020 2\b\u0010$\u001a\u0004\u0018\u00010\u0011J\u000e\u0010)\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u0011J\u000e\u0010*\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u0011J\u0006\u0010+\u001a\u00020\fJ\u0014\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00030,J\u0010\u0010.\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0011J\u0010\u00100\u001a\u00020\b2\b\u0010/\u001a\u0004\u0018\u00010\u0011J\u0010\u00101\u001a\u00020\b2\b\u0010/\u001a\u0004\u0018\u00010\u0011J\u0010\u00102\u001a\u00020\b2\b\u0010/\u001a\u0004\u0018\u00010\u0011J\u0010\u00104\u001a\u00020\b2\b\u00103\u001a\u0004\u0018\u00010\u0011J\u0010\u00105\u001a\u00020\b2\b\u00103\u001a\u0004\u0018\u00010\u0011J\u0010\u00107\u001a\u00020\b2\b\u00106\u001a\u0004\u0018\u00010\u0011J\u0010\u00108\u001a\u00020\b2\b\u00106\u001a\u0004\u0018\u00010\u0011J\u0010\u0010:\u001a\u0002092\u0006\u0010\u0015\u001a\u00020\u0011H\u0007R\u0014\u0010;\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010=\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u0010<R\u0014\u0010>\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\b>\u0010<R\u0014\u0010?\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\b?\u0010<R\u0014\u0010@\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010B\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010AR\u0014\u0010C\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\bC\u0010AR\u0014\u0010D\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\bD\u0010<R\u0014\u0010E\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\bE\u0010<R\u0014\u0010F\u001a\u00020\u00118\u0006X\u0086T¢\u0006\u0006\n\u0004\bF\u0010<R\u0017\u0010J\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\bG\u0010<\u001a\u0004\bH\u0010IR\u0014\u0010L\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\bK\u0010<R\u0018\u0010N\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010<R\u001a\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00110\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR \u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00030R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010S¨\u0006W"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/FontUtils;", "", "", "Lcom/onyx/android/sdk/base/data/font/FontInfo;", "fontInfoList", "", "e", "fontInfo", "", "i", "Lcom/onyx/android/sdk/base/data/font/FontType;", "fontType", "", C6997f.f39671c, "", FirebaseAnalytics.Param.INDEX, "isCJKFontIndex", "", "getOnyxSystemDefaultFontId", "getOnyxSystemDefaultFontPath", "getCustomFontPathList", "path", "isCustomizeFontsPath", "fontsFolderList", "currentFont", "preferredFonts", "buildFontItemAdapter", "Ljava/io/FilenameFilter;", "fontFilter", "fontListCurrentFontHandle", "Ljava/io/File;", "loadFontInfo", "Lcom/onyx/android/sdk/base/data/font/TTFFont;", "ttfFont", "Lcom/onyx/android/sdk/base/data/font/TTCFont;", "ttcFont", "filePath", "Lkotlin/Pair;", "parseTtc", "parseTtf", "name", "getFontPath", "createCustomizeTtfPath", "clearFontInfoCache", "", "getFontInfoCache", "isFontFile", "file", "isTtfFile", "isTtcFile", "isOtfFIle", "fontPath", "isSystemFont", "isExternalStorageFont", "fontId", "isSerif", "isFontExist", "Landroid/graphics/Typeface;", "loadTypefaceFromFile", "TTF", Constants.STRING_SIG, "TTC", "OTF", "FONTS", "FONT_LANG_INDEX_ALL", "I", "FONT_LANG_INDEX_CJK", "FONT_LANG_INDEX_EN", "KEY_FONT_LANG", "KEY_FONT_FILE_NAME", "SYSTEM_FONTS_PATH", "a", "getCUSTOMIZE_FONTS_PATH", "()Ljava/lang/String;", "CUSTOMIZE_FONTS_PATH", "b", "ONYX_SYSTEM_DEFAULT_SYSTEM_FONT_FILE_NAME", "c", "onyxSystemDefaultSystemFontPath", "d", "Ljava/util/List;", "CJK_FILTERS", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/concurrent/ConcurrentHashMap;", "fontInfoCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class FontUtils {
    public static final int FONT_LANG_INDEX_ALL = 0;
    public static final int FONT_LANG_INDEX_CJK = 1;
    public static final int FONT_LANG_INDEX_EN = 2;

    @NotNull
    public static final String KEY_FONT_FILE_NAME = "font_file_name";

    @NotNull
    public static final String KEY_FONT_LANG = "font_lang";

    @NotNull
    public static final String OTF = "otf";

    @NotNull
    public static final String SYSTEM_FONTS_PATH = "/system/fonts/";

    @NotNull
    public static final String TTC = "ttc";

    @NotNull
    public static final String TTF = "ttf";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String ONYX_SYSTEM_DEFAULT_SYSTEM_FONT_FILE_NAME = "OnyxCustomFont-Regular";

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public static String onyxSystemDefaultSystemFontPath;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final List<String> CJK_FILTERS;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentHashMap<String, FontInfo> fontInfoCache;

    @NotNull
    public static final FontUtils INSTANCE = new FontUtils();

    @NotNull
    public static final String FONTS = "fonts";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String CUSTOMIZE_FONTS_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + FONTS;

    static {
        List<String> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("CJK", "JP", "KR");
        CJK_FILTERS = mutableListOf;
        fontInfoCache = new ConcurrentHashMap<>();
    }

    /* renamed from: d */
    public static final boolean m32083d(File file, String str) {
        return INSTANCE.isFontFile(str);
    }

    /* renamed from: g */
    public static final int m32084g(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: h */
    public static final int m32085h(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @NotNull
    public final List<FontInfo> buildFontItemAdapter(@NotNull List<String> fontsFolderList, @Nullable String currentFont, @Nullable List<String> preferredFonts, @NotNull FontType fontType) {
        Intrinsics.checkNotNullParameter(fontsFolderList, "fontsFolderList");
        Intrinsics.checkNotNullParameter(fontType, "fontType");
        return buildFontItemAdapter(fontsFolderList, currentFont, preferredFonts, fontType, new FilenameFilter() { // from class: com.sunia.HTREnginev2.jsg
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m32083d;
                m32083d = FontUtils.m32083d(file, str);
                return m32083d;
            }
        });
    }

    public final void clearFontInfoCache() {
        fontInfoCache.clear();
    }

    @NotNull
    public final String createCustomizeTtfPath(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return CUSTOMIZE_FONTS_PATH + File.separator + name + ".ttf";
    }

    /* renamed from: e */
    public final List<FontInfo> m32086e(List<FontInfo> fontInfoList) {
        List<FontInfo> mutableList;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (FontInfo fontInfo : fontInfoList) {
            if (!linkedHashMap.containsKey(fontInfo.getFilePath()) || m32088i(fontInfo)) {
                String filePath = fontInfo.getFilePath();
                Intrinsics.checkNotNull(filePath);
                linkedHashMap.put(filePath, fontInfo);
            }
        }
        Collection values = linkedHashMap.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        mutableList = CollectionsKt___CollectionsKt.toMutableList(values);
        return mutableList;
    }

    /* renamed from: f */
    public final void m32087f(List<FontInfo> fontInfoList, FontType fontType) {
        if (CollectionKt.isNullOrEmpty(fontInfoList) || fontType != FontType.CUSTOMIZE) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < fontInfoList.size()) {
            if (StringKt.isCJK(fontInfoList.get(i).getName())) {
                arrayList.add(fontInfoList.remove(i));
                i--;
            }
            i++;
        }
        final FontUtils$fontListGroupAndSort$1 fontUtils$fontListGroupAndSort$1 = new Function2<FontInfo, FontInfo, Integer>() { // from class: com.onyx.android.sdk.base.utils.FontUtils$fontListGroupAndSort$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(FontInfo fontInfo, FontInfo fontInfo2) {
                return Integer.valueOf(ComparatorUtils.INSTANCE.stringComparator(StringKt.safelyGetStr(fontInfo.getName()), StringKt.safelyGetStr(fontInfo2.getName()), SortOrder.Asc));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.sunia.HTREnginev2.hsg
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m32084g;
                m32084g = FontUtils.m32084g(Function2.this, obj, obj2);
                return m32084g;
            }
        });
        final FontUtils$fontListGroupAndSort$2 fontUtils$fontListGroupAndSort$2 = new Function2<FontInfo, FontInfo, Integer>() { // from class: com.onyx.android.sdk.base.utils.FontUtils$fontListGroupAndSort$2
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(FontInfo fontInfo, FontInfo fontInfo2) {
                return Integer.valueOf(ComparatorUtils.INSTANCE.stringComparator(StringKt.safelyGetStr(fontInfo.getName()), StringKt.safelyGetStr(fontInfo2.getName()), SortOrder.Asc));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(fontInfoList, new Comparator() { // from class: com.sunia.HTREnginev2.isg
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m32085h;
                m32085h = FontUtils.m32085h(Function2.this, obj, obj2);
                return m32085h;
            }
        });
        fontInfoList.addAll(arrayList);
    }

    public final void fontListCurrentFontHandle(@NotNull List<FontInfo> fontInfoList, @Nullable String currentFont) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(fontInfoList, "fontInfoList");
        if (currentFont == null || currentFont.length() == 0) {
            return;
        }
        int size = fontInfoList.size();
        for (int i = 0; i < size; i++) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) StringKt.safelyGetStr(fontInfoList.get(i).getId()), (CharSequence) currentFont, false, 2, (Object) null);
            if (contains$default) {
                fontInfoList.add(0, fontInfoList.remove(i));
                return;
            }
        }
    }

    @NotNull
    public final String getCUSTOMIZE_FONTS_PATH() {
        return CUSTOMIZE_FONTS_PATH;
    }

    @NotNull
    public final List<String> getCustomFontPathList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(CUSTOMIZE_FONTS_PATH);
        return arrayList;
    }

    @NotNull
    public final Map<String, FontInfo> getFontInfoCache() {
        return fontInfoCache;
    }

    @NotNull
    public final String getFontPath(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String str = "/system/fonts/" + name;
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (fileUtils.fileExist(str)) {
            return str;
        }
        String str2 = CUSTOMIZE_FONTS_PATH + File.separator + name;
        return fileUtils.fileExist(str2) ? str2 : name;
    }

    @Nullable
    public final String getOnyxSystemDefaultFontId() {
        return getOnyxSystemDefaultFontPath();
    }

    @Nullable
    public final String getOnyxSystemDefaultFontPath() {
        List<String> listOf;
        String str = onyxSystemDefaultSystemFontPath;
        if (str != null) {
            return str;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"/system/fonts/OnyxCustomFont-Regular.otf", "/system/fonts/OnyxCustomFont-Regular.ttf"});
        for (String str2 : listOf) {
            if (FileUtils.INSTANCE.fileCanRead(str2)) {
                onyxSystemDefaultSystemFontPath = str2;
                return str2;
            }
        }
        return onyxSystemDefaultSystemFontPath;
    }

    /* renamed from: i */
    public final boolean m32088i(FontInfo fontInfo) {
        return Objects.equals(getOnyxSystemDefaultFontId(), fontInfo.getId());
    }

    public final boolean isCJKFontIndex(int index) {
        return index == 1;
    }

    public final boolean isCustomizeFontsPath(@Nullable String path) {
        boolean contains;
        contains = CollectionsKt___CollectionsKt.contains(getCustomFontPathList(), path);
        return contains;
    }

    public final boolean isExternalStorageFont(@Nullable String fontPath) {
        boolean startsWith$default;
        String valueOf = String.valueOf(fontPath);
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(valueOf, absolutePath, false, 2, null);
        return startsWith$default;
    }

    public final boolean isFontExist(@Nullable String fontId) {
        if (isSerif(fontId)) {
            return true;
        }
        if (isSystemFont(fontId) || isExternalStorageFont(fontId)) {
            return FileUtils.INSTANCE.fileExist(fontId);
        }
        return false;
    }

    public final boolean isFontFile(@Nullable String path) {
        return isTtfFile(path) || isTtcFile(path) || isOtfFIle(path);
    }

    public final boolean isOtfFIle(@Nullable String file) {
        return StringUtils.equalsIgnoreCase(FileUtils.INSTANCE.getFileExtension(String.valueOf(file)), "otf");
    }

    public final boolean isSerif(@Nullable String fontId) {
        return StringUtils.equalsIgnoreCase(fontId, FontInfo.INSTANCE.getDEFAULT_ID());
    }

    public final boolean isSystemFont(@Nullable String fontPath) {
        return StringUtils.startsWith(fontPath, "/system/fonts/");
    }

    public final boolean isTtcFile(@Nullable String file) {
        return StringUtils.equalsIgnoreCase(FileUtils.INSTANCE.getFileExtension(String.valueOf(file)), "ttc");
    }

    public final boolean isTtfFile(@Nullable String file) {
        return StringUtils.equalsIgnoreCase(FileUtils.INSTANCE.getFileExtension(String.valueOf(file)), "ttf");
    }

    @NotNull
    public final FontInfo loadFontInfo(@NotNull File f) {
        Intrinsics.checkNotNullParameter(f, "f");
        return loadFontInfo(new TTFFont(), new TTCFont(), f);
    }

    @WorkerThread
    @NotNull
    public final Typeface loadTypefaceFromFile(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            Typeface createFromFile = Typeface.createFromFile(path);
            Intrinsics.checkNotNull(createFromFile);
            return createFromFile;
        } catch (Throwable th) {
            Debug.INSTANCE.m32045e(FontUtils.class, th);
            Typeface typeface = Typeface.DEFAULT;
            Intrinsics.checkNotNull(typeface);
            return typeface;
        }
    }

    @Nullable
    public final Pair<String, FontType> parseTtc(@NotNull TTCFont ttcFont, @Nullable String filePath) {
        Intrinsics.checkNotNullParameter(ttcFont, "ttcFont");
        if (!isTtcFile(filePath)) {
            return null;
        }
        TTCFont parse = ttcFont.parse(filePath);
        Intrinsics.checkNotNull(parse);
        return parse.getFontNameAndFontType();
    }

    @NotNull
    public final Pair<String, FontType> parseTtf(@NotNull TTFFont ttfFont, @Nullable String filePath) {
        Intrinsics.checkNotNullParameter(ttfFont, "ttfFont");
        ttfFont.parse(filePath);
        return ttfFont.getFontNameAndFontType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
    
        if (r19.contains(r13.getName()) == false) goto L36;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.base.data.font.FontInfo> buildFontItemAdapter(@org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r17, @org.jetbrains.annotations.Nullable java.lang.String r18, @org.jetbrains.annotations.Nullable java.util.List<java.lang.String> r19, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.font.FontType r20, @org.jetbrains.annotations.Nullable java.io.FilenameFilter r21) {
        /*
            r16 = this;
            r1 = r16
            r2 = r19
            r3 = r20
            java.lang.String r0 = "fontsFolderList"
            r4 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "fontType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            com.onyx.android.sdk.base.data.font.TTFFont r6 = new com.onyx.android.sdk.base.data.font.TTFFont
            r6.<init>()
            com.onyx.android.sdk.base.data.font.TTCFont r7 = new com.onyx.android.sdk.base.data.font.TTCFont
            r7.<init>()
            java.util.Iterator r4 = r17.iterator()
        L25:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto Lac
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            java.io.File r8 = new java.io.File
            r8.<init>(r0)
            r9 = r21
            java.io.File[] r8 = r8.listFiles(r9)
            if (r8 == 0) goto L25
            int r10 = r8.length
            r12 = 0
        L40:
            if (r12 >= r10) goto L25
            r13 = r8[r12]
            boolean r0 = r13.isFile()
            if (r0 == 0) goto L74
            boolean r0 = r13.isHidden()
            if (r0 == 0) goto L51
            goto L74
        L51:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r13)
            com.onyx.android.sdk.base.data.font.FontInfo r14 = r1.loadFontInfo(r6, r7, r13)
            boolean r0 = onyx.org.apache.commons.io.FileUtils.isSymlink(r13)     // Catch: java.io.IOException -> L66
            if (r0 == 0) goto L6a
            java.lang.String r0 = r13.getCanonicalPath()     // Catch: java.io.IOException -> L66
            r14.setFilePath(r0)     // Catch: java.io.IOException -> L66
            goto L6a
        L66:
            r0 = move-exception
            r0.printStackTrace()
        L6a:
            com.onyx.android.sdk.base.data.font.FontType r0 = com.onyx.android.sdk.base.data.font.FontType.ENGLISH
            if (r3 != r0) goto L76
            com.onyx.android.sdk.base.data.font.FontType r15 = r14.getFontType()
            if (r15 == r0) goto L76
        L74:
            r11 = 0
            goto La9
        L76:
            com.onyx.android.sdk.base.data.font.FontType r15 = com.onyx.android.sdk.base.data.font.FontType.CJK
            if (r3 != r15) goto L81
            com.onyx.android.sdk.base.data.font.FontType r11 = r14.getFontType()
            if (r11 == r15) goto L81
            goto L74
        L81:
            if (r2 == 0) goto L9a
            r11 = r2
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            java.lang.String r15 = r14.getName()
            boolean r11 = kotlin.collections.CollectionsKt.contains(r11, r15)
            if (r11 != 0) goto La0
            java.lang.String r11 = r13.getName()
            boolean r11 = r2.contains(r11)
            if (r11 != 0) goto La0
        L9a:
            com.onyx.android.sdk.base.data.font.FontType r11 = r14.getFontType()
            if (r11 == r0) goto La5
        La0:
            r11 = 0
            r5.add(r11, r14)
            goto La9
        La5:
            r11 = 0
            r5.add(r14)
        La9:
            int r12 = r12 + 1
            goto L40
        Lac:
            java.util.List r0 = r1.m32086e(r5)
            r1.m32087f(r0, r3)
            r2 = r18
            r1.fontListCurrentFontHandle(r0, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.FontUtils.buildFontItemAdapter(java.util.List, java.lang.String, java.util.List, com.onyx.android.sdk.base.data.font.FontType, java.io.FilenameFilter):java.util.List");
    }

    @NotNull
    public final FontInfo loadFontInfo(@NotNull TTFFont ttfFont, @NotNull TTCFont ttcFont, @NotNull File f) {
        Intrinsics.checkNotNullParameter(ttfFont, "ttfFont");
        Intrinsics.checkNotNullParameter(ttcFont, "ttcFont");
        Intrinsics.checkNotNullParameter(f, "f");
        String absolutePath = f.getAbsolutePath();
        ConcurrentHashMap<String, FontInfo> concurrentHashMap = fontInfoCache;
        FontInfo fontInfo = concurrentHashMap.get(absolutePath);
        if (fontInfo != null) {
            return fontInfo;
        }
        Pair<String, FontType> parseTtc = parseTtc(ttcFont, absolutePath);
        if (parseTtc == null) {
            parseTtc = parseTtf(ttfFont, absolutePath);
        }
        String first = parseTtc.getFirst();
        FontType second = parseTtc.getSecond();
        FontInfo fontInfo2 = new FontInfo();
        fontInfo2.setFontType(second);
        if (first == null || first.length() == 0) {
            first = FilenameUtils.getBaseName(f.getName());
        }
        fontInfo2.setName(first);
        fontInfo2.setId(absolutePath);
        fontInfo2.setFilePath(absolutePath);
        Intrinsics.checkNotNull(absolutePath);
        concurrentHashMap.put(absolutePath, fontInfo2);
        return fontInfo2;
    }
}
