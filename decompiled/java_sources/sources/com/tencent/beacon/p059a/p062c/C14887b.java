package com.tencent.beacon.p059a.p062c;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.firebase.installations.local.IidStore;
import com.tencent.beacon.base.util.C14952a;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import com.tencent.beacon.p073d.C14969b;
import java.util.List;

/* renamed from: com.tencent.beacon.a.c.b */
/* loaded from: classes10.dex */
public class C14887b {

    /* renamed from: a */
    public static String f92589a = null;

    /* renamed from: b */
    public static int f92590b = 0;

    /* renamed from: c */
    public static String f92591c = "";

    /* renamed from: d */
    public static boolean f92592d = false;

    /* renamed from: e */
    private static String f92593e = null;

    /* renamed from: f */
    private static boolean f92594f = false;

    /* renamed from: g */
    private static String f92595g = "";

    /* renamed from: h */
    private static boolean f92596h = false;

    /* renamed from: i */
    private static boolean f92597i = false;

    /* renamed from: j */
    private static int f92598j = -2;

    /* renamed from: k */
    private static boolean f92599k = true;

    /* renamed from: a */
    public static String m58972a() {
        if (f92589a == null) {
            f92589a = m58982e();
        }
        return f92589a;
    }

    /* renamed from: b */
    public static String m58977b() {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return null;
        }
        String packageName = m58997b.getPackageName();
        return TextUtils.isEmpty(packageName) ? "" : packageName;
    }

    /* renamed from: c */
    public static String m58979c(Context context) {
        return C14952a.m59357a();
    }

    /* renamed from: d */
    public static String m58980d() {
        if (!"".equals(f92591c)) {
            return f92591c;
        }
        if (f92590b == 0) {
            f92590b = Process.myPid();
        }
        f92591c += f92590b + "_";
        String str = f92591c + C14953b.m59381c();
        f92591c = str;
        return str;
    }

    /* renamed from: e */
    public static synchronized boolean m58983e(Context context) {
        synchronized (C14887b.class) {
            boolean z = false;
            if (context == null) {
                C14954c.m59395b("[appInfo] context is null", new Object[0]);
                return false;
            }
            SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
            String string = m59084a.getString("APPVER_DENGTA", "");
            String m58972a = m58972a();
            if (string.isEmpty() || !string.equals(m58972a)) {
                SharedPreferencesC14896a.a edit = m59084a.edit();
                if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                    edit.putString("APPVER_DENGTA", m58972a);
                }
                z = true;
            }
            return z;
        }
    }

    /* renamed from: f */
    public static boolean m58985f(Context context) {
        return m58975a(context, context.getPackageName());
    }

    /* renamed from: g */
    public static synchronized boolean m58986g() {
        boolean z;
        synchronized (C14887b.class) {
            SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
            String string = m59084a.getString("APPKEY_DENGTA", "");
            String m59002e = C14888c.m58989c().m59002e();
            z = TextUtils.isEmpty(string) || !m59002e.equals(string);
            SharedPreferencesC14896a.a edit = m59084a.edit();
            if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                edit.putString("APPKEY_DENGTA", m59002e);
            }
        }
        return z;
    }

    /* renamed from: h */
    private static void m58988h() {
        try {
            SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
            String string = m59084a.getString("APPVER_DENGTA", "");
            String m58972a = m58972a();
            if (TextUtils.isEmpty(string) || !m58972a.equals(string)) {
                f92594f = true;
                SharedPreferencesC14896a.a edit = m59084a.edit();
                if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                    edit.putString("APPVER_DENGTA", m58972a);
                }
            } else {
                f92594f = false;
            }
        } catch (Exception e) {
            C14954c.m59395b("[core] app version check fail!", new Object[0]);
            C14954c.m59393a(e);
        }
    }

    /* renamed from: c */
    public static String m58978c() {
        return f92595g;
    }

    /* renamed from: f */
    public static void m58984f() {
        m58988h();
    }

    /* renamed from: a */
    public static boolean m58975a(Context context, String str) {
        if (f92597i) {
            return f92599k;
        }
        if (context != null && str != null && str.trim().length() > 0) {
            if (!C14969b.m59444b().m59487u()) {
                C14954c.m59392a("[DeviceInfo] current collect Process Info be refused! isCollect Process Info: %s", Boolean.FALSE);
                return true;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.f1429r)).getRunningAppProcesses();
            if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.importance == 100) {
                        for (String str2 : runningAppProcessInfo.pkgList) {
                            if (str.equals(str2)) {
                                f92599k = true;
                                f92597i = true;
                                return true;
                            }
                        }
                    }
                }
                f92599k = false;
                f92597i = true;
                return false;
            }
            C14954c.m59403e("[appInfo] no running proc", new Object[0]);
        }
        return false;
    }

    /* renamed from: b */
    public static int m58976b(Context context) {
        if (f92596h) {
            return f92598j;
        }
        if (f92590b == 0) {
            f92590b = Process.myPid();
        }
        if (!C14969b.m59444b().m59487u()) {
            C14954c.m59392a("[DeviceInfo] current collect Process Info be refused! isCollect Process Info: %s", Boolean.FALSE);
            return -2;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.f1429r);
        if (activityManager != null && activityManager.getRunningAppProcesses() != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == f92590b) {
                    int i = runningAppProcessInfo.importance;
                    f92598j = i;
                    f92596h = true;
                    return i;
                }
            }
        }
        f92598j = 0;
        f92596h = true;
        return 0;
    }

    /* renamed from: d */
    public static boolean m58981d(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            C14954c.m59393a(e);
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m58987g(Context context) {
        if (context == null) {
            return true;
        }
        String m58979c = m58979c(context);
        return TextUtils.isEmpty(m58979c) || m58979c.equals(context.getPackageName());
    }

    /* renamed from: e */
    public static synchronized String m58982e() {
        synchronized (C14887b.class) {
            String m58977b = m58977b();
            if (TextUtils.isEmpty(m58977b)) {
                return null;
            }
            try {
                PackageInfo packageInfo = C14888c.m58989c().m58997b().getPackageManager().getPackageInfo(m58977b, 0);
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
                        C14954c.m59392a("[appInfo] add versionCode: %s", Integer.valueOf(i));
                        StringBuilder sb = new StringBuilder();
                        sb.append(replace);
                        sb.append(".");
                        sb.append(i);
                        replace = sb.toString();
                    }
                    C14954c.m59392a("[appInfo] final Version: %s", replace);
                    return replace;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(i);
                return sb2.toString();
            } catch (Throwable th) {
                C14954c.m59393a(th);
                C14954c.m59395b(th.toString(), new Object[0]);
                return "";
            }
        }
    }

    /* renamed from: a */
    public static synchronized String m58973a(Context context) {
        String str;
        synchronized (C14887b.class) {
            if (TextUtils.isEmpty(f92593e)) {
                String str2 = "on_app_first_install_time_" + m58979c(context);
                SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
                long j = m59084a.getLong(str2, 0L);
                if (j == 0) {
                    j = C14953b.m59381c();
                    AbstractC14874b.m58931a().mo58941a(new RunnableC14886a(m59084a, str2, j));
                }
                String valueOf = String.valueOf(j);
                f92593e = valueOf;
                C14954c.m59392a("[appInfo] process: %s, getAppFirstInstallTime: %s", str2, valueOf);
            }
            C14954c.m59392a("[appInfo] getAppFirstInstallTime: %s", f92593e);
            str = f92593e;
        }
        return str;
    }

    /* renamed from: a */
    public static void m58974a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (Long.parseLong(str) > 10000) {
                    f92595g = str;
                    return;
                }
                return;
            } catch (Exception unused) {
                C14954c.m59403e("[appInfo] set qq is not available !", new Object[0]);
                return;
            }
        }
        C14954c.m59403e("[appInfo] set qq is null !", new Object[0]);
    }
}
