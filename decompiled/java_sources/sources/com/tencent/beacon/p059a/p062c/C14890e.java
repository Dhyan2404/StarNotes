package com.tencent.beacon.p059a.p062c;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserModel;
import com.sunia.HTREnginev2.ivl;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.net.p066b.RunnableC14936e;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14958g;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import net.p110sf.saxon.ma.json.JsonParser;

/* renamed from: com.tencent.beacon.a.c.e */
/* loaded from: classes10.dex */
public class C14890e implements RunnableC14936e.a {

    /* renamed from: a */
    private static volatile C14890e f92614a;

    /* renamed from: b */
    private String f92615b = "";

    /* renamed from: c */
    private String f92616c = "";

    /* renamed from: d */
    private String f92617d = "";

    /* renamed from: e */
    private String f92618e = "";

    /* renamed from: f */
    private String f92619f = "";

    /* renamed from: g */
    private boolean f92620g = true;

    /* renamed from: h */
    private String f92621h = "";

    private C14890e() {
    }

    /* renamed from: G */
    private void m59009G() {
        m59010H();
        this.f92620g = C14935d.m59305d();
        this.f92621h = C14935d.m59302c();
    }

    /* renamed from: H */
    private void m59010H() {
        this.f92618e = m59011I();
    }

    /* renamed from: I */
    private String m59011I() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        TelephonyManager telephonyManager;
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return "";
        }
        String str = "unknown";
        try {
            connectivityManager = (ConnectivityManager) m58997b.getSystemService("connectivity");
        } catch (Exception e) {
            C14954c.m59393a(e);
        }
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return "unknown";
        }
        if (activeNetworkInfo.getType() == 1) {
            str = "wifi";
        } else if (activeNetworkInfo.getType() == 0 && (telephonyManager = (TelephonyManager) m58997b.getSystemService("phone")) != null) {
            int networkType = telephonyManager.getNetworkType();
            if (networkType != 20) {
                switch (networkType) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        str = "2G";
                        break;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        str = "3G";
                        break;
                    case 13:
                        str = "4G";
                        break;
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append("unknown_");
                        sb.append(telephonyManager.getNetworkType());
                        str = sb.toString();
                        break;
                }
            } else {
                str = "5G";
            }
        }
        C14954c.m59392a("[DeviceInfo] NetWork Type:" + str, new Object[0]);
        return str;
    }

    /* renamed from: l */
    public static C14890e m59012l() {
        if (f92614a == null) {
            synchronized (C14890e.class) {
                if (f92614a == null) {
                    f92614a = new C14890e();
                }
            }
        }
        return f92614a;
    }

    /* renamed from: A */
    public String m59013A() {
        return "";
    }

    /* renamed from: B */
    public String m59014B() {
        return "";
    }

    /* renamed from: C */
    public void m59015C() {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return;
        }
        RunnableC14936e.m59309a(m58997b, this);
        m59009G();
        m59016D();
    }

    /* renamed from: D */
    public void m59016D() {
        String string = SharedPreferencesC14896a.m59084a().getString("BEACON_ANDROID_ID_DENGTA", "");
        this.f92615b = string;
        if (TextUtils.isEmpty(string)) {
            this.f92615b = C14953b.m59361a();
            SharedPreferencesC14896a.a edit = SharedPreferencesC14896a.m59084a().edit();
            if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                edit.putString("BEACON_ANDROID_ID_DENGTA", this.f92615b);
            }
        }
    }

    /* renamed from: E */
    public boolean m59017E() {
        BufferedReader bufferedReader;
        boolean z;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"/system/bin/cat", "/proc/cpuinfo"}).getInputStream(), Charset.defaultCharset()));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        z = false;
                        break;
                    }
                    if (-1 != readLine.toLowerCase().indexOf("armv7")) {
                        z = true;
                        break;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        C14954c.m59393a(th);
                        C14953b.m59365a(bufferedReader);
                        return false;
                    } catch (Throwable th2) {
                        C14953b.m59365a(bufferedReader);
                        throw th2;
                    }
                }
            }
            C14953b.m59365a(bufferedReader);
            return z;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    /* renamed from: F */
    public String m59018F() {
        if (TextUtils.isEmpty(this.f92619f)) {
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                String str = "harmony".equals(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0])) ? "Y" : "N";
                this.f92619f = str;
                return str;
            } catch (Throwable unused) {
                this.f92619f = "N";
            }
        }
        return this.f92619f;
    }

    /* renamed from: a */
    public String m59019a(Context context) {
        try {
            if (Integer.parseInt(Build.VERSION.SDK) < 9) {
                C14954c.m59395b("Api level < 9;return null!", new Object[0]);
                return "";
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            StringBuilder sb = new StringBuilder();
            sb.append("get app_last_updated_time:");
            sb.append(String.valueOf(packageInfo.lastUpdateTime));
            C14954c.m59392a(sb.toString(), new Object[0]);
            return String.valueOf(packageInfo.lastUpdateTime);
        } catch (Throwable th) {
            C14954c.m59393a(th);
            C14954c.m59395b("get app_last_updated_time failed!", new Object[0]);
            return "";
        }
    }

    @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
    /* renamed from: b */
    public void mo59021b() {
        m59009G();
    }

    /* renamed from: c */
    public boolean m59022c() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* renamed from: d */
    public String m59023d() {
        return this.f92615b;
    }

    /* renamed from: e */
    public int m59024e() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"}).getInputStream(), Charset.forName("UTF-8")));
            try {
                String readLine = bufferedReader.readLine();
                int parseInt = readLine != null ? Integer.parseInt(readLine.trim()) / 1000 : 0;
                C14953b.m59365a(bufferedReader);
                return parseInt;
            } catch (Throwable th) {
                th = th;
                try {
                    C14954c.m59393a(th);
                    C14953b.m59365a(bufferedReader);
                    return 0;
                } catch (Throwable th2) {
                    C14953b.m59365a(bufferedReader);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        r6 = r0.substring(r0.indexOf(":") + 1).trim();
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m59025f() {
        /*
            r6 = this;
            java.lang.String r6 = ""
            java.lang.String r0 = "/system/bin/cat"
            java.lang.String r1 = "/proc/cpuinfo"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            r1 = 0
            r2 = 1
            java.lang.Runtime r3 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L4f
            java.lang.Process r0 = r3.exec(r0)     // Catch: java.lang.Throwable -> L4f
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.lang.Throwable -> L4f
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L4f
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L4f
            java.lang.String r5 = "UTF-8"
            java.nio.charset.Charset r5 = java.nio.charset.Charset.forName(r5)     // Catch: java.lang.Throwable -> L4f
            r4.<init>(r0, r5)     // Catch: java.lang.Throwable -> L4f
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4f
        L28:
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L45
            java.lang.String r4 = "Processor"
            boolean r4 = r0.contains(r4)     // Catch: java.lang.Throwable -> L4d
            if (r4 == 0) goto L28
            java.lang.String r4 = ":"
            int r4 = r0.indexOf(r4)     // Catch: java.lang.Throwable -> L4d
            int r4 = r4 + r2
            java.lang.String r0 = r0.substring(r4)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r6 = r0.trim()     // Catch: java.lang.Throwable -> L4d
        L45:
            java.io.Closeable[] r0 = new java.io.Closeable[r2]
            r0[r1] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            goto L5b
        L4d:
            r0 = move-exception
            goto L51
        L4f:
            r0 = move-exception
            r3 = 0
        L51:
            com.tencent.beacon.base.util.C14954c.m59393a(r0)     // Catch: java.lang.Throwable -> L5c
            java.io.Closeable[] r0 = new java.io.Closeable[r2]
            r0[r1] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
        L5b:
            return r6
        L5c:
            r6 = move-exception
            java.io.Closeable[] r0 = new java.io.Closeable[r2]
            r0[r1] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.p059a.p062c.C14890e.m59025f():java.lang.String");
    }

    /* renamed from: g */
    public String m59026g() {
        return Locale.getDefault().getCountry();
    }

    /* renamed from: h */
    public String m59027h() {
        return Build.HARDWARE;
    }

    /* renamed from: i */
    public DisplayMetrics m59028i() {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) m58997b.getSystemService("window");
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    /* renamed from: j */
    public long m59029j() {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return -1L;
        }
        ActivityManager activityManager = (ActivityManager) m58997b.getSystemService(ActivityChooserModel.f1429r);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        if (activityManager == null) {
            return -1L;
        }
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: k */
    public String m59030k() {
        long m59029j = m59029j();
        if (m59029j <= 0) {
            return "0";
        }
        return ((m59029j / 1024) / 1024) + "";
    }

    /* renamed from: m */
    public boolean m59031m() {
        return C14958g.m59411d();
    }

    /* renamed from: n */
    public String m59032n() {
        return Locale.getDefault().getLanguage();
    }

    /* renamed from: o */
    public String m59033o() {
        return Build.MANUFACTURER;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: PHI empty after try-catch fix!
        	at jadx.core.dex.visitors.ssa.SSATransform.fixPhiInTryCatch(SSATransform.java:228)
        	at jadx.core.dex.visitors.ssa.SSATransform.fixLastAssignInTry(SSATransform.java:208)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:64)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:44)
        */
    /* renamed from: p */
    public java.lang.String m59034p() {
        /*
            r9 = this;
            java.lang.String r9 = "getNandInfo error"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 1
            r2 = 0
            r3 = 0
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2d
            java.io.FileReader r5 = new java.io.FileReader     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2d
            java.io.File r6 = new java.io.File     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2d
            java.lang.String r7 = "/sys/block/mmcblk0/device/type"
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2d
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2d
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2d
            java.lang.String r5 = r4.readLine()     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> Lcf
            r0.append(r5)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> Lcf
            java.io.Closeable[] r5 = new java.io.Closeable[r1]
            r5[r2] = r4
            com.tencent.beacon.base.util.C14953b.m59365a(r5)
            goto L3a
        L2a:
            r9 = move-exception
            goto Ld1
        L2d:
            r4 = r3
        L2e:
            java.lang.Object[] r5 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lcf
            com.tencent.beacon.base.util.C14954c.m59392a(r9, r5)     // Catch: java.lang.Throwable -> Lcf
            java.io.Closeable[] r5 = new java.io.Closeable[r1]
            r5[r2] = r4
            com.tencent.beacon.base.util.C14953b.m59365a(r5)
        L3a:
            java.lang.String r4 = ","
            r0.append(r4)
            java.lang.String r5 = "/sys/block/mmcblk0/device/name"
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.io.FileReader r7 = new java.io.FileReader     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.io.File r8 = new java.io.File     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            r8.<init>(r5)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            java.lang.String r5 = r6.readLine()     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> Lc5
            r0.append(r5)     // Catch: java.lang.Exception -> L62 java.lang.Throwable -> Lc5
            java.io.Closeable[] r5 = new java.io.Closeable[r1]
            r5[r2] = r6
            com.tencent.beacon.base.util.C14953b.m59365a(r5)
            goto L6e
        L5f:
            r9 = move-exception
            goto Lc7
        L61:
            r6 = r3
        L62:
            java.lang.Object[] r5 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lc5
            com.tencent.beacon.base.util.C14954c.m59392a(r9, r5)     // Catch: java.lang.Throwable -> Lc5
            java.io.Closeable[] r5 = new java.io.Closeable[r1]
            r5[r2] = r6
            com.tencent.beacon.base.util.C14953b.m59365a(r5)
        L6e:
            r0.append(r4)
            java.lang.String r4 = "/sys/block/mmcblk0/device/cid"
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L95 java.lang.Throwable -> Lbc
            java.io.FileReader r6 = new java.io.FileReader     // Catch: java.lang.Exception -> L95 java.lang.Throwable -> Lbc
            java.io.File r7 = new java.io.File     // Catch: java.lang.Exception -> L95 java.lang.Throwable -> Lbc
            r7.<init>(r4)     // Catch: java.lang.Exception -> L95 java.lang.Throwable -> Lbc
            r6.<init>(r7)     // Catch: java.lang.Exception -> L95 java.lang.Throwable -> Lbc
            r5.<init>(r6)     // Catch: java.lang.Exception -> L95 java.lang.Throwable -> Lbc
            java.lang.String r3 = r5.readLine()     // Catch: java.lang.Throwable -> L91 java.lang.Exception -> L94
            r0.append(r3)     // Catch: java.lang.Throwable -> L91 java.lang.Exception -> L94
            java.io.Closeable[] r9 = new java.io.Closeable[r1]
            r9[r2] = r5
            com.tencent.beacon.base.util.C14953b.m59365a(r9)
            goto La1
        L91:
            r9 = move-exception
            r3 = r5
            goto Lbd
        L94:
            r3 = r5
        L95:
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lbc
            com.tencent.beacon.base.util.C14954c.m59392a(r9, r4)     // Catch: java.lang.Throwable -> Lbc
            java.io.Closeable[] r9 = new java.io.Closeable[r1]
            r9[r2] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r9)
        La1:
            java.lang.String r9 = r0.toString()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "[DeviceInfo] Nand Info:"
            r0.append(r1)
            r0.append(r9)
            java.lang.String r0 = r0.toString()
            java.lang.Object[] r1 = new java.lang.Object[r2]
            com.tencent.beacon.base.util.C14954c.m59392a(r0, r1)
            return r9
        Lbc:
            r9 = move-exception
        Lbd:
            java.io.Closeable[] r0 = new java.io.Closeable[r1]
            r0[r2] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            throw r9
        Lc5:
            r9 = move-exception
            r3 = r6
        Lc7:
            java.io.Closeable[] r0 = new java.io.Closeable[r1]
            r0[r2] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            throw r9
        Lcf:
            r9 = move-exception
            r3 = r4
        Ld1:
            java.io.Closeable[] r0 = new java.io.Closeable[r1]
            r0[r2] = r3
            com.tencent.beacon.base.util.C14953b.m59365a(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.p059a.p062c.C14890e.m59034p():java.lang.String");
    }

    /* renamed from: q */
    public String m59035q() {
        return this.f92618e;
    }

    /* renamed from: r */
    public String m59036r() {
        return this.f92621h;
    }

    /* renamed from: s */
    public int m59037s() {
        try {
            File[] listFiles = new File(ivl.f73633c).listFiles(new C14889d(this));
            if (listFiles == null) {
                return 1;
            }
            return listFiles.length;
        } catch (Exception e) {
            C14954c.m59395b("[model] CPU Count: Failed.", new Object[0]);
            C14954c.m59393a(e);
            return 1;
        }
    }

    /* renamed from: t */
    public String m59038t() {
        if (!TextUtils.isEmpty(this.f92616c)) {
            return this.f92616c;
        }
        String str = "Android " + Build.VERSION.RELEASE + ",level " + Build.VERSION.SDK;
        this.f92616c = str;
        C14954c.m59392a("[DeviceInfo] os version: %s", str);
        return this.f92616c;
    }

    /* renamed from: u */
    public String m59039u() {
        BufferedReader bufferedReader;
        FileReader fileReader;
        String readLine;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 8192);
                try {
                    readLine = bufferedReader.readLine();
                } catch (Throwable th) {
                    th = th;
                    try {
                        C14954c.m59395b("[model] get free RAM error!", new Object[0]);
                        C14954c.m59393a(th);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th2) {
                                C14954c.m59395b("[model] IO close error!", new Object[0]);
                                C14954c.m59393a(th2);
                            }
                        }
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return null;
                    } catch (Throwable th3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th4) {
                                C14954c.m59395b("[model] IO close error!", new Object[0]);
                                C14954c.m59393a(th4);
                                throw th3;
                            }
                        }
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                bufferedReader = null;
            }
        } catch (Throwable th6) {
            th = th6;
            bufferedReader = null;
            fileReader = null;
        }
        if (readLine == null) {
            try {
                bufferedReader.close();
                fileReader.close();
            } catch (Throwable th7) {
                C14954c.m59395b("[model] IO close error!", new Object[0]);
                C14954c.m59393a(th7);
            }
            return null;
        }
        String str = (Long.parseLong(readLine.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) / 1024) + "";
        try {
            bufferedReader.close();
            fileReader.close();
        } catch (Throwable th8) {
            C14954c.m59395b("[model] IO close error!", new Object[0]);
            C14954c.m59393a(th8);
        }
        return str;
    }

    /* renamed from: v */
    public String m59040v() {
        DisplayMetrics m59028i = m59028i();
        if (m59028i == null) {
            return "";
        }
        return m59028i.widthPixels + "*" + m59028i.heightPixels;
    }

    /* renamed from: w */
    public String m59041w() {
        ArrayList<String> m59363a = C14953b.m59363a(new String[]{"/system/bin/sh", "-c", "getprop ro.build.fingerprint"});
        return (m59363a == null || m59363a.size() <= 0) ? "" : m59363a.get(0);
    }

    /* renamed from: x */
    public String m59042x() {
        if (!TextUtils.isEmpty(this.f92617d)) {
            return this.f92617d;
        }
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockSize = statFs.getBlockSize();
        this.f92617d = (((statFs.getBlockCount() * blockSize) / 1024) / 1024) + "";
        C14954c.m59392a("[DeviceInfo] Rom Size:" + this.f92617d, new Object[0]);
        return this.f92617d;
    }

    /* renamed from: y */
    public long m59043y() {
        if (!m59022c()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((statFs.getBlockCount() * statFs.getBlockSize()) / 1024) / 1024;
        } catch (Throwable th) {
            C14954c.m59393a(th);
            return 0L;
        }
    }

    /* renamed from: z */
    public int m59044z() {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return -1;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) m58997b.getSystemService("window");
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            double d = displayMetrics.density;
            if (d - 0.75d <= 1.0E-6d) {
                return 120;
            }
            if (d - 1.5d <= 1.0E-6d) {
                return 240;
            }
            if (d - 2.0d <= 1.0E-6d) {
                return 320;
            }
            if (d - 3.0d <= 1.0E-6d) {
                return JsonParser.DUPLICATES_SPECIFIED;
            }
        }
        return 160;
    }

    @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
    /* renamed from: a */
    public void mo59020a() {
        m59009G();
    }
}
