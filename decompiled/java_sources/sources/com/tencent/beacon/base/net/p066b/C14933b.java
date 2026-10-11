package com.tencent.beacon.base.net.p066b;

import android.text.TextUtils;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.p073d.C14969b;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.tencent.beacon.base.net.b.b */
/* loaded from: classes10.dex */
public final class C14933b {

    /* renamed from: a */
    public static String f92849a = "https://otheve.beacon.qq.com/analytics/v2_upload";

    /* renamed from: b */
    public static String f92850b = "https://othstr.beacon.qq.com/analytics/v2_upload";

    /* renamed from: c */
    public static String f92851c = "oth.eve.mdt.qq.com";

    /* renamed from: d */
    public static String f92852d = "oth.str.mdt.qq.com";

    /* renamed from: e */
    public static String f92853e = "https://mqqeve.beacon.qq.com/analytics/v2_upload";

    /* renamed from: f */
    public static String f92854f = "";

    /* renamed from: g */
    private static boolean f92855g;

    /* renamed from: a */
    public static String m59279a(String str) {
        if (str == null || "".equals(str)) {
            return "";
        }
        String str2 = str.contains("https") ? CommonConstant.SCHEME_HTTPS : CommonConstant.SCHEME_HTTP;
        int indexOf = str.indexOf(str2);
        if (indexOf == -1) {
            return str;
        }
        String substring = str.substring(indexOf + str2.length(), str.indexOf("/", str2.length()));
        int indexOf2 = substring.indexOf(":");
        return indexOf2 != -1 ? substring.substring(0, indexOf2) : substring;
    }

    /* renamed from: b */
    public static void m59283b(String str) {
        if (TextUtils.isEmpty(str) || f92855g) {
            return;
        }
        f92851c = str;
    }

    /* renamed from: c */
    public static void m59285c(String str) {
        if (TextUtils.isEmpty(str) || f92855g) {
            return;
        }
        f92849a = str;
    }

    /* renamed from: d */
    public static void m59286d(String str) {
        if (TextUtils.isEmpty(str) || f92855g) {
            return;
        }
        f92852d = str;
    }

    /* renamed from: e */
    public static void m59287e(String str) {
        if (TextUtils.isEmpty(str) || f92855g) {
            return;
        }
        f92850b = str;
    }

    /* renamed from: b */
    public static String m59282b(boolean z) {
        return z ? f92852d : f92850b;
    }

    /* renamed from: b */
    public static void m59284b(String str, String str2) {
        Pattern compile = Pattern.compile("((2(5[0-5]|[0-4]\\d))|[0-1]?\\d{1,2})(\\.((2(5[0-5]|[0-4]\\d))|[0-1]?\\d{1,2})){3}");
        Matcher matcher = compile.matcher(str);
        Matcher matcher2 = compile.matcher(str2);
        if (matcher.matches() && matcher2.matches()) {
            f92852d = str;
            f92850b = f92850b.replace("othstr.beacon.qq.com", str);
            f92851c = str2;
            String replace = f92849a.replace("otheve.beacon.qq.com", str2);
            f92849a = replace;
            C14954c.m59392a("[event url] ip modified by api, socketStrategyHost: %s, httpsStrategyUrl: %s, socketLogHost: %s ,httpsLogUrl: %s", f92852d, f92850b, f92851c, replace);
            return;
        }
        C14959h.m59413a("[event url] set report ip is not valid IP address!");
    }

    /* renamed from: a */
    public static String m59280a(boolean z) {
        return z ? f92851c : f92849a;
    }

    /* renamed from: a */
    public static String m59278a() {
        int m59462c = C14969b.m59444b().m59462c();
        if (m59462c != 1) {
            return m59462c != 2 ? "" : f92853e;
        }
        return CommonConstant.SCHEME_HTTPS + f92854f + ":8082";
    }

    /* renamed from: a */
    public static void m59281a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            f92852d = str;
            f92850b = f92850b.replace("othstr.beacon.qq.com", str);
            f92855g = true;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        f92851c = str2;
        f92849a = f92849a.replace("otheve.beacon.qq.com", str2);
        f92855g = true;
    }
}
