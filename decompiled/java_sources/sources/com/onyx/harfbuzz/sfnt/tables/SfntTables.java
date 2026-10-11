package com.onyx.harfbuzz.sfnt.tables;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.sfnt.tables.NameTable;

/* loaded from: classes9.dex */
class SfntTables {

    /* renamed from: a */
    public static final int f62880a = 0;

    /* renamed from: b */
    public static final int f62881b = 1;

    /* renamed from: c */
    public static final int f62882c = 2;

    /* renamed from: d */
    public static final int f62883d = 3;

    /* renamed from: e */
    public static final int f62884e = 5;

    static {
        JniBridge.loadLibrary();
    }

    public static native String getGlyphName(@NonNull HBTypeface hBTypeface, int i);

    public static native String getNameCharset(int i, int i2);

    public static native int getNameCount(@NonNull HBTypeface hBTypeface);

    public static native String[] getNameLocale(int i, int i2);

    public static native NameTable.Record getNameRecord(@NonNull HBTypeface hBTypeface, int i);

    public static native long getTablePointer(@NonNull HBTypeface hBTypeface, int i);
}
