package com.alibaba.sdk.android.oss.common;

import android.util.Log;

/* loaded from: classes3.dex */
public class OSSLog {

    /* renamed from: a */
    public static final String f12921a = "OSS-Android-SDK";

    /* renamed from: b */
    public static boolean f12922b;

    /* renamed from: a */
    public static void m7637a(String str, boolean z) {
        if (z) {
            OSSLogToFileUtils.getInstance().write(str);
        }
    }

    public static void disableLog() {
        f12922b = false;
    }

    public static void enableLog() {
        f12922b = true;
    }

    public static boolean isEnableLog() {
        return f12922b;
    }

    public static void logDebug(String str) {
        logDebug(f12921a, str);
    }

    public static void logError(String str) {
        logError(f12921a, str);
    }

    public static void logInfo(String str) {
        logInfo(str, true);
    }

    public static void logThrowable2Local(Throwable th) {
        if (f12922b) {
            OSSLogToFileUtils.getInstance().write(th);
        }
    }

    public static void logVerbose(String str) {
        logVerbose(str, true);
    }

    public static void logWarn(String str) {
        logWarn(str, true);
    }

    public static void logDebug(String str, String str2) {
        logDebug(str, str2, true);
    }

    public static void logError(String str, String str2) {
        logDebug(str, str2, true);
    }

    public static void logInfo(String str, boolean z) {
        if (f12922b) {
            Log.i(f12921a, "[INFO]: ".concat(str));
            m7637a(str, z);
        }
    }

    public static void logVerbose(String str, boolean z) {
        if (f12922b) {
            Log.v(f12921a, "[Verbose]: ".concat(str));
            m7637a(str, z);
        }
    }

    public static void logWarn(String str, boolean z) {
        if (f12922b) {
            Log.w(f12921a, "[Warn]: ".concat(str));
            m7637a(str, z);
        }
    }

    public static void logDebug(String str, boolean z) {
        logDebug(f12921a, str, z);
    }

    public static void logError(String str, boolean z) {
        logError(f12921a, str, z);
    }

    public static void logDebug(String str, String str2, boolean z) {
        if (f12922b) {
            Log.d(str, "[Debug]: ".concat(str2));
            m7637a(str2, z);
        }
    }

    public static void logError(String str, String str2, boolean z) {
        if (f12922b) {
            Log.d(str, "[Error]: ".concat(str2));
            m7637a(str2, z);
        }
    }
}
