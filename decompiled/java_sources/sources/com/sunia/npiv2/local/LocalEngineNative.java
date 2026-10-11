package com.sunia.npiv2.local;

import android.media.Image;

/* loaded from: classes10.dex */
public class LocalEngineNative {
    static {
        m58920a();
    }

    /* renamed from: a */
    public static void m58920a() {
        synchronized (LocalEngineNative.class) {
            System.loadLibrary("npiengine");
        }
    }

    public static native long npiCreateEngine(String str);

    public static native boolean npiDestroyEngine(long j);

    public static native boolean npiEngineValid(long j);

    public static native boolean npiExtractFromData(long j, byte[] bArr);

    public static native boolean npiExtractFromFile(long j, String str);

    public static native boolean npiExtractFromObject(long j, Image image);

    public static native int npiGetLineCount(long j);

    public static native int npiGetLinePoints(long j, int i, double[] dArr, double[] dArr2);

    public static native int npiGetLinePointsCount(long j, int i);
}
