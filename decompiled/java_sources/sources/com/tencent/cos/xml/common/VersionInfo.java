package com.tencent.cos.xml.common;

import android.text.TextUtils;
import com.tencent.cos.xml.base.BuildConfig;

/* loaded from: classes10.dex */
public class VersionInfo {
    public static String sdkName = null;
    public static int versionCode = -1;
    public static String versionName;

    public static String getQuicUserAgent() {
        return String.format("%s-android-quic-sdk-%s", getSdkName(), getVersionName());
    }

    public static String getSdkName() {
        if (TextUtils.isEmpty(sdkName)) {
            sdkName = "cos-base";
        }
        return sdkName;
    }

    public static String getUserAgent() {
        return String.format("%s-android-sdk-%s", getSdkName(), getVersionName());
    }

    public static int getVersionCode() {
        if (versionCode == -1) {
            versionCode = BuildConfig.VERSION_CODE;
        }
        return versionCode;
    }

    public static String getVersionName() {
        if (TextUtils.isEmpty(versionName)) {
            versionName = BuildConfig.VERSION_NAME;
        }
        return versionName;
    }
}
