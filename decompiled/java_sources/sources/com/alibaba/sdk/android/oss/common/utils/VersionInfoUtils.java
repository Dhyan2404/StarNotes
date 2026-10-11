package com.alibaba.sdk.android.oss.common.utils;

import android.os.Build;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;

/* loaded from: classes3.dex */
public class VersionInfoUtils {

    /* renamed from: a */
    public static String f12980a;

    /* renamed from: a */
    public static String m7671a() {
        StringBuilder sb = new StringBuilder();
        sb.append(MotionUtils.f31761c);
        sb.append(System.getProperty("os.name"));
        sb.append("/Android " + Build.VERSION.RELEASE);
        sb.append("/");
        sb.append(HttpUtil.urlEncode(Build.MODEL, "utf-8") + AndroidTreeView.f47214k + HttpUtil.urlEncode(Build.ID, "utf-8"));
        sb.append(MotionUtils.f31762d);
        String sb2 = sb.toString();
        OSSLog.logDebug("user agent : " + sb2);
        return OSSUtils.isEmptyString(sb2) ? System.getProperty("http.agent").replaceAll("[^\\p{ASCII}]", "?") : sb2;
    }

    public static String getUserAgent(String str) {
        if (OSSUtils.isEmptyString(f12980a)) {
            f12980a = "aliyun-sdk-android/" + getVersion() + m7671a();
        }
        if (OSSUtils.isEmptyString(str)) {
            return f12980a;
        }
        return f12980a + "/" + str;
    }

    public static String getVersion() {
        return "2.9.11";
    }
}
