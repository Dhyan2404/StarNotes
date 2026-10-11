package com.sunia.nbiv2.local;

import android.content.Context;

/* loaded from: classes10.dex */
public class LocalEngineNative {
    static {
        m58919a();
    }

    /* renamed from: a */
    public static void m58919a() {
        synchronized (LocalEngineNative.class) {
            System.loadLibrary("nbiengine");
        }
    }

    public static native int nbiAddLine(long j, double[] dArr, double[] dArr2, int i, int i2);

    public static native boolean nbiAuthorizeFromFile(Context context, String str);

    public static native boolean nbiClearPoints(long j);

    public static native long nbiCreateEngine();

    public static native void nbiDestroyEngine(long j);

    public static native boolean nbiEngineValid(long j);

    public static native String nbiGetLastErrorString();

    public static native boolean nbiSetAxisOutput(long j, boolean z);

    public static native boolean nbiSetCallback(long j, LocalNBIListener localNBIListener);

    public static native boolean nbiSetOutlineOutput(long j, boolean z);

    public static native boolean nbiSetParameters(long j, int[] iArr);

    public static native void nbiStopTransform(long j);

    public static native boolean nbiTransform(long j, long j2, long j3);

    public static native boolean nbiTransformPointer(long j, long j2, long j3, long j4);
}
