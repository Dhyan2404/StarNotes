package com.sunia.HTREnginev2.impl_native.Local;

import android.content.Context;
import android.content.res.AssetManager;
import com.sunia.hwrv2.sdk.BuildConfig;

/* loaded from: classes10.dex */
public class LocalEngineNative {
    private static boolean hasLoadNativeLibrary;

    static {
        loadNativeLibrary();
    }

    public static native void authorize(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, LocalAuthenticateCallBack localAuthenticateCallBack);

    public static native void authorizeOffline(String str, String str2, String str3, String str4, LocalAuthenticateCallBack localAuthenticateCallBack);

    public static native long createEditor(long j, long j2);

    public static native long createEngine(String str, Context context, LocalAuthenticateCallBack localAuthenticateCallBack);

    public static native String getEngineVersion(long j);

    public static void loadNativeLibrary() {
        if (hasLoadNativeLibrary) {
            return;
        }
        synchronized (LocalEngineNative.class) {
            if (hasLoadNativeLibrary) {
                return;
            }
            try {
                BuildConfig.class.getField("versionName").get(null).toString();
                BuildConfig.class.getField("gitBranch").get(null).toString();
                System.loadLibrary("SNHTREnginev2");
                hasLoadNativeLibrary = true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static native void release(long j);

    public static native int setAssetManager(AssetManager assetManager);

    public static native void setDebugLevel(long j, int i);

    public static native void setLogDir(long j, String str);

    public static native int stopEngine(long j);
}
