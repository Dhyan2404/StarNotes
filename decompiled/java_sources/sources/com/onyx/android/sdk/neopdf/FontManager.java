package com.onyx.android.sdk.neopdf;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0013\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001f\u0010\u001dJ\u001e\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0082 ¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\t\u001a\u00020\bH\u0082 JF\u0010\u000f\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0082 ¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007¢\u0006\u0004\b\u0012\u0010\u0007J\b\u0010\u0013\u001a\u00020\bH\u0007JE\u0010\u0014\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0014\u0010\u0010R\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0016R \u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001b\u0010\u0018¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/FontManager;", "", "", "", "systemFonts", "", "nativeInit", "([Ljava/lang/String;)Z", "", "nativeDestroy", "charList", "fontList", "substFontList", "", "faceIndexList", "nativeFindSubstFont", "([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)Z", FontUtils.FONTS, "initSystemFonts", "destroy", "findSubstFonts", "a", "[Ljava/lang/String;", "getDEFAULT_SYSTEM_FONTS", "()[Ljava/lang/String;", "DEFAULT_SYSTEM_FONTS", "b", "getDefaultSystemFonts", "getDefaultSystemFonts$annotations", "()V", "defaultSystemFonts", Constants.CONSTRUCTOR_NAME, "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFontManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontManager.kt\ncom/onyx/android/sdk/neopdf/FontManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,102:1\n37#2,2:103\n37#2,2:105\n*S KotlinDebug\n*F\n+ 1 FontManager.kt\ncom/onyx/android/sdk/neopdf/FontManager\n*L\n41#1:103,2\n60#1:105,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FontManager {

    @NotNull
    public static final FontManager INSTANCE = new FontManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String[] DEFAULT_SYSTEM_FONTS = {"/system/fonts/Roboto-Regular.ttf", "/system/fonts/NotoSansCJK-Regular.ttc"};

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public static String[] systemFonts;

    static {
        System.loadLibrary("engine_sdk");
    }

    @JvmStatic
    public static final void destroy() {
        INSTANCE.nativeDestroy();
        systemFonts = null;
        Debug.INSTANCE.m32035d(FontManager.class, "destroy", new Object[0]);
    }

    @JvmStatic
    public static final boolean findSubstFonts(@NotNull String[] charList, @NotNull String[] fontList, @NotNull String[] substFontList, @NotNull int[] faceIndexList) {
        Intrinsics.checkNotNullParameter(charList, "charList");
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        Intrinsics.checkNotNullParameter(substFontList, "substFontList");
        Intrinsics.checkNotNullParameter(faceIndexList, "faceIndexList");
        String[] strArr = systemFonts;
        boolean z = true;
        if (strArr != null) {
            if (!(strArr.length == 0)) {
                z = false;
            }
        }
        if (!z || initSystemFonts(getDefaultSystemFonts())) {
            return INSTANCE.nativeFindSubstFont(charList, fontList, substFontList, faceIndexList);
        }
        return false;
    }

    @NotNull
    public static final String[] getDefaultSystemFonts() {
        File[] listFiles;
        boolean z;
        boolean contains$default;
        boolean contains$default2;
        boolean contains$default3;
        boolean contains$default4;
        boolean contains$default5;
        boolean contains$default6;
        boolean contains$default7;
        boolean contains$default8;
        boolean contains$default9;
        ArrayList arrayList = new ArrayList();
        for (String str : DEFAULT_SYSTEM_FONTS) {
            arrayList.add(str);
        }
        try {
            listFiles = new File("/system/fonts/").listFiles();
            z = true;
            if (listFiles != null) {
                if (!(listFiles.length == 0)) {
                    z = false;
                }
            }
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
        if (z) {
            return (String[]) arrayList.toArray(new String[0]);
        }
        Intrinsics.checkNotNull(listFiles);
        for (File file : listFiles) {
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNull(absolutePath);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Thin", false, 2, (Object) null);
            if (!contains$default) {
                contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Light", false, 2, (Object) null);
                if (!contains$default2) {
                    contains$default3 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Italic", false, 2, (Object) null);
                    if (!contains$default3) {
                        contains$default4 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Medium", false, 2, (Object) null);
                        if (!contains$default4) {
                            contains$default5 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Black", false, 2, (Object) null);
                            if (!contains$default5) {
                                contains$default6 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Bold", false, 2, (Object) null);
                                if (!contains$default6) {
                                    contains$default7 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Condensed", false, 2, (Object) null);
                                    if (!contains$default7) {
                                        contains$default8 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Mono", false, 2, (Object) null);
                                        if (!contains$default8) {
                                            contains$default9 = StringsKt__StringsKt.contains$default((CharSequence) absolutePath, (CharSequence) "Serif", false, 2, (Object) null);
                                            if (!contains$default9) {
                                                arrayList.add(file.getAbsolutePath());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @JvmStatic
    public static /* synthetic */ void getDefaultSystemFonts$annotations() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019 A[RETURN] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean initSystemFonts(@org.jetbrains.annotations.NotNull java.lang.String[] r4) {
        /*
            java.lang.String r0 = "fonts"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String[] r0 = com.onyx.android.sdk.neopdf.FontManager.systemFonts
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L16
            int r0 = r0.length
            if (r0 != 0) goto L10
            r0 = r1
            goto L11
        L10:
            r0 = r2
        L11:
            if (r0 == 0) goto L14
            goto L16
        L14:
            r0 = r2
            goto L17
        L16:
            r0 = r1
        L17:
            if (r0 != 0) goto L1a
            return r1
        L1a:
            int r0 = r4.length
            if (r0 != 0) goto L1f
            r0 = r1
            goto L20
        L1f:
            r0 = r2
        L20:
            java.lang.Class<com.onyx.android.sdk.neopdf.FontManager> r3 = com.onyx.android.sdk.neopdf.FontManager.class
            if (r0 == 0) goto L2e
            com.onyx.android.sdk.base.utils.Debug r4 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.String r0 = "System fonts can not be null or empty!"
            java.lang.Object[] r1 = new java.lang.Object[r2]
            r4.m32044e(r3, r0, r1)
            return r2
        L2e:
            com.onyx.android.sdk.neopdf.FontManager r0 = com.onyx.android.sdk.neopdf.FontManager.INSTANCE
            boolean r0 = r0.nativeInit(r4)
            if (r0 != 0) goto L37
            return r2
        L37:
            java.lang.Object r4 = r4.clone()
            java.lang.String[] r4 = (java.lang.String[]) r4
            com.onyx.android.sdk.neopdf.FontManager.systemFonts = r4
            com.onyx.android.sdk.base.utils.Debug r4 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.String r0 = "init"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r4.m32035d(r3, r0, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.neopdf.FontManager.initSystemFonts(java.lang.String[]):boolean");
    }

    private final native void nativeDestroy();

    private final native boolean nativeFindSubstFont(String[] charList, String[] fontList, String[] substFontList, int[] faceIndexList);

    private final native boolean nativeInit(String[] systemFonts2);

    @NotNull
    public final String[] getDEFAULT_SYSTEM_FONTS() {
        return DEFAULT_SYSTEM_FONTS;
    }
}
