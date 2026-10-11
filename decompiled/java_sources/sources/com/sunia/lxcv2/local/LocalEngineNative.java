package com.sunia.lxcv2.local;

import android.content.res.AssetManager;
import com.sunia.basev2.engine.BaseEngine;

/* loaded from: classes10.dex */
public class LocalEngineNative extends BaseEngine {
    private static final String TAG = "LocalEngineNative";
    private static volatile boolean support = BaseEngine.loadNativeLibrary("lxcsuggest");

    public static boolean isSupport() {
        return support;
    }

    public static native long lxcCreateEngine();

    public static native void lxcDestroyEngine(long j);

    public static native String lxcDoSuggesterV2(long j, String str, long j2);

    public static native boolean lxcInitSuggesterV2(long j, AssetManager assetManager, int i, int i2, String str, String str2, String str3);
}
