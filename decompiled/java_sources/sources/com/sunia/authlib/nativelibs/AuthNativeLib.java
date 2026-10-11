package com.sunia.authlib.nativelibs;

import android.content.Context;

/* loaded from: classes10.dex */
public class AuthNativeLib {
    public static native String getAddr(Context context, int i);

    public static native String getErrorMsg(int i);

    public static native String getSdkVersion();

    public static native String getSerialNo();

    public static native String getUserId();

    public static native void release();

    public static native void setAppContext(Context context);

    public static native void setEnableLog(boolean z, String str);
}
