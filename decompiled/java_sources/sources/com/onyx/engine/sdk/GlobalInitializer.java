package com.onyx.engine.sdk;

import android.util.Log;

/* loaded from: classes8.dex */
public class GlobalInitializer {
    private static boolean initialized;
    private static boolean sAbsoluteLineSpacing;
    private static boolean sAbsoluteParagraphSpacing;
    private static boolean sScaleImage;

    static {
        System.loadLibrary("engine_sdk");
        initialized = false;
        sScaleImage = true;
        sAbsoluteLineSpacing = true;
        sAbsoluteParagraphSpacing = true;
    }

    public static boolean isAbsoluteLineSpacing() {
        return sAbsoluteLineSpacing;
    }

    public static boolean isAbsoluteParagraphSpacing() {
        return sAbsoluteParagraphSpacing;
    }

    public static boolean isScaleImage() {
        return sScaleImage;
    }

    private static native void nativeSetAbsoluteLineSpacing(boolean z);

    private static native void nativeSetAbsoluteParagraphSpacing(boolean z);

    private static native boolean nativeSetGlobalConfig(String str);

    private static native void nativeSetLogLevel(int i);

    private static native void nativeSetScaleImage(boolean z);

    public static void setAbsoluteLineSpacing(boolean z) {
        if (sAbsoluteLineSpacing != z) {
            nativeSetAbsoluteLineSpacing(z);
            sAbsoluteLineSpacing = z;
        }
    }

    public static void setAbsoluteParagraphSpacing(boolean z) {
        if (sAbsoluteParagraphSpacing != z) {
            nativeSetAbsoluteParagraphSpacing(z);
            sAbsoluteParagraphSpacing = z;
        }
    }

    public static void setGlobalConfig(GlobalConfig globalConfig) {
        if (initialized) {
            return;
        }
        if (!globalConfig.isSetResourcePath()) {
            Log.e(GlobalInitializer.class.getSimpleName(), "Config:" + globalConfig.toJson());
            throw new IllegalArgumentException("Must set resource path");
        }
        if (globalConfig.isSetDefaultFonts()) {
            nativeSetGlobalConfig(globalConfig.toJson());
            initialized = true;
            return;
        }
        Log.e(GlobalInitializer.class.getSimpleName(), "Config:" + globalConfig.toJson());
        throw new IllegalArgumentException("Must set default fonts");
    }

    public static void setLogLevel(LogLevel logLevel) {
        nativeSetLogLevel(logLevel.ordinal());
    }

    public static void setScaleImage(boolean z) {
        if (sScaleImage != z) {
            nativeSetScaleImage(z);
            sScaleImage = z;
        }
    }
}
