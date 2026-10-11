package com.miui.penengine.facade.algorithm;

import android.content.res.AssetManager;

/* loaded from: classes7.dex */
public class JNIPathEstimateInterface {
    static {
        System.loadLibrary("estimate_interface");
    }

    public static native int destroy();

    public static native int init(AssetManager assetManager, String str, int i, boolean z);

    public static native boolean isEstimateSystemSoEnable();

    public static native float[] runModel(float[] fArr, int i, int i2);
}
