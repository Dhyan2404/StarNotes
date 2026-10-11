package com.sunia.naiv2.local;

import android.content.Context;
import android.content.res.AssetManager;

/* loaded from: classes10.dex */
public class LocalEngineNative {
    static {
        m58918a();
    }

    /* renamed from: a */
    public static void m58918a() {
        synchronized (LocalEngineNative.class) {
            System.loadLibrary("naiengine");
        }
    }

    public static native boolean naiAddFont(byte[] bArr);

    public static native int naiAddLine(long j, double[] dArr, double[] dArr2, int i);

    public static native boolean naiAuthorizeFromFile(Context context, String str, String str2);

    public static native boolean naiClearFonts();

    public static native boolean naiClearPoints(long j);

    public static native long naiCreateEngine(String str, String str2);

    public static native void naiDestroyEngine(long j);

    public static native boolean naiEngineValid(long j);

    public static native String naiGetLastErrorString();

    public static native long naiGetLines(long j);

    public static native int naiLayout(long j, int i);

    public static native int naiLayoutGraphic(long j, int i, int i2);

    public static native int naiLayoutText(long j, String str, int i);

    public static native boolean naiRemoveLines(long j, int[] iArr);

    public static native boolean naiResetConfig(long j);

    public static native boolean naiSetAAssetManager(AssetManager assetManager);

    public static native boolean naiSetConfig(long j, String str);

    public static native String naiSupportLayout(long j, String str, int i);
}
