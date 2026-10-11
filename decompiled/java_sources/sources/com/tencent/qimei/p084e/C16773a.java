package com.tencent.qimei.p084e;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.TextUtils;
import com.google.firebase.installations.local.IidStore;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p105y.C16858d;
import java.io.File;

/* renamed from: com.tencent.qimei.e.a */
/* loaded from: classes10.dex */
public class C16773a {

    /* renamed from: a */
    public static String f93460a;

    /* renamed from: b */
    public static String f93461b;

    /* renamed from: a */
    public static String m59898a() {
        if (f93460a == null) {
            f93460a = m59904f();
        }
        return f93460a;
    }

    /* renamed from: b */
    public static String m59900b() {
        Context mo60059c = C16858d.m60143b().mo60059c();
        if (mo60059c == null) {
            return "";
        }
        File file = new File(mo60059c.getFilesDir(), "qm");
        return !file.exists() ? file.mkdirs() : true ? file.getAbsolutePath() : "";
    }

    /* renamed from: c */
    public static String m59901c() {
        String str = f93461b;
        if (str != null) {
            return str;
        }
        try {
            String str2 = (String) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", new Class[0]).invoke(null, new Object[0]);
            f93461b = str2;
            return str2;
        } catch (Throwable th) {
            C16806a.m59992a(th);
            return "";
        }
    }

    /* renamed from: d */
    public static String m59902d() {
        Context mo60059c = C16858d.m60143b().mo60059c();
        String packageName = mo60059c != null ? mo60059c.getPackageName() : null;
        return TextUtils.isEmpty(packageName) ? "" : packageName;
    }

    /* renamed from: e */
    public static int m59903e() {
        return Process.myPid();
    }

    /* renamed from: f */
    public static synchronized String m59904f() {
        synchronized (C16773a.class) {
            String m59902d = m59902d();
            if (TextUtils.isEmpty(m59902d)) {
                return "";
            }
            try {
                PackageInfo packageInfo = C16858d.m60143b().mo60059c().getPackageManager().getPackageInfo(m59902d, 0);
                String str = packageInfo.versionName;
                int i = packageInfo.versionCode;
                if (str != null && str.trim().length() > 0) {
                    String replace = str.trim().replace('\n', ' ').replace('\r', ' ').replace(IidStore.f35940g, "%7C");
                    int i2 = 0;
                    for (char c : replace.toCharArray()) {
                        if (c == '.') {
                            i2++;
                        }
                    }
                    if (i2 < 3) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(replace);
                        sb.append(".");
                        sb.append(i);
                        replace = sb.toString();
                    }
                    return replace;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(i);
                return sb2.toString();
            } catch (Exception e) {
                C16806a.m59992a(e);
                e.toString();
                return "";
            }
        }
    }

    /* renamed from: a */
    public static String m59899a(String str) {
        return new File(m59900b(), str).getAbsolutePath();
    }
}
