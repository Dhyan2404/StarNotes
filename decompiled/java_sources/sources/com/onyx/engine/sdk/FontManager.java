package com.onyx.engine.sdk;

import com.onyx.engine.sdk.FontManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public class FontManager {
    private String fontDir;
    private long handle;

    /* loaded from: classes8.dex */
    public static class FontList extends DataList<FontPair> {
        public static FontList fromJson(String str) {
            return (FontList) JsonUtils.fromJson(str, FontList.class, new Supplier() { // from class: com.sunia.HTREnginev2.urg
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new FontManager.FontList();
                }
            });
        }
    }

    /* loaded from: classes8.dex */
    public static class FontPair {
        public String familyName;
        public List<FontEntry> fonts;
    }

    static {
        System.loadLibrary("engine_sdk");
    }

    public FontManager(String str) {
        this.fontDir = str;
        this.handle = nativeParse(str);
    }

    public static List<FontPair> getLocalFonts() {
        FontList localFonts;
        ArrayList arrayList = new ArrayList();
        do {
            localFonts = getLocalFonts(arrayList.size(), 40);
            Utils.safelyAddAll(arrayList, localFonts.getList());
            if (arrayList.size() >= localFonts.total) {
                break;
            }
        } while (localFonts.size() >= 40);
        return arrayList;
    }

    private native String nativeGetFonts(long j, int i, int i2);

    private static native String nativeGetLocalFonts(int i, int i2);

    private native long nativeParse(String str);

    private native void nativeRelease(long j);

    public List<FontPair> getFonts() {
        FontList fonts;
        if (this.handle == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        do {
            fonts = getFonts(arrayList.size(), 40);
            Utils.safelyAddAll(arrayList, fonts.getList());
            if (arrayList.size() >= fonts.total) {
                break;
            }
        } while (fonts.size() >= 40);
        return arrayList;
    }

    public void release() {
        long j = this.handle;
        if (j != 0) {
            nativeRelease(j);
            this.handle = 0L;
        }
    }

    public static FontList getLocalFonts(int i, int i2) {
        return FontList.fromJson(nativeGetLocalFonts(i, i2));
    }

    public FontList getFonts(int i, int i2) {
        long j = this.handle;
        if (j == 0) {
            return new FontList();
        }
        return FontList.fromJson(nativeGetFonts(j, i, i2));
    }
}
