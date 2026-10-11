package com.tencent.qimei.p084e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p105y.C16858d;
import com.tencent.qimei.uin.C16842U;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import org.mortbay.io.Portable;

@SuppressLint({"MissingPermission"})
/* renamed from: com.tencent.qimei.e.c */
/* loaded from: classes10.dex */
public class C16775c {

    /* renamed from: a */
    public static final C16775c f93464a = new C16775c();

    /* renamed from: c */
    public long f93466c;

    /* renamed from: e */
    public String f93468e;

    /* renamed from: f */
    public String f93469f;

    /* renamed from: g */
    public String f93470g;

    /* renamed from: h */
    public String f93471h;

    /* renamed from: i */
    public String f93472i;

    /* renamed from: j */
    public String f93473j;

    /* renamed from: k */
    public String f93474k;

    /* renamed from: l */
    public String f93475l;

    /* renamed from: m */
    public String f93476m;

    /* renamed from: n */
    public String f93477n;

    /* renamed from: d */
    public long f93467d = 0;

    /* renamed from: o */
    public Enumeration<NetworkInterface> f93478o = null;

    /* renamed from: b */
    public final Context f93465b = C16858d.m60143b().mo60059c();

    public C16775c() {
        m59928v();
    }

    /* renamed from: j */
    public static synchronized C16775c m59907j() {
        C16775c c16775c;
        synchronized (C16775c.class) {
            c16775c = f93464a;
        }
        return c16775c;
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: b */
    public synchronized String m59909b() {
        String str = this.f93468e;
        if (str != null) {
            return str;
        }
        String str2 = "";
        Context context = this.f93465b;
        if (context == null) {
            return "";
        }
        try {
            str2 = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            C16806a.m59992a(e);
        }
        String lowerCase = str2 != null ? str2.toLowerCase() : "";
        this.f93468e = lowerCase;
        return lowerCase;
    }

    /* renamed from: c */
    public synchronized String m59910c() {
        if (this.f93473j == null) {
            this.f93473j = C16762a.m59867a(Build.VERSION.SDK_INT);
        }
        return this.f93473j;
    }

    /* renamed from: d */
    public synchronized String m59911d() {
        String str = this.f93474k;
        if (str != null) {
            return str;
        }
        String str2 = Build.MODEL;
        this.f93474k = str2;
        return str2;
    }

    /* renamed from: e */
    public synchronized String m59912e() {
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0076 A[Catch: all -> 0x00a5, TRY_LEAVE, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0004, B:5:0x0008, B:9:0x0042, B:12:0x004f, B:15:0x0070, B:17:0x0076, B:19:0x0080, B:20:0x008a, B:22:0x0090, B:24:0x009a, B:30:0x005a, B:32:0x0060, B:34:0x0066, B:38:0x0013, B:40:0x001b, B:42:0x0023, B:44:0x0029, B:49:0x0030, B:54:0x0038), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090 A[Catch: all -> 0x00a5, TRY_LEAVE, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0004, B:5:0x0008, B:9:0x0042, B:12:0x004f, B:15:0x0070, B:17:0x0076, B:19:0x0080, B:20:0x008a, B:22:0x0090, B:24:0x009a, B:30:0x005a, B:32:0x0060, B:34:0x0066, B:38:0x0013, B:40:0x001b, B:42:0x0023, B:44:0x0029, B:49:0x0030, B:54:0x0038), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m59913f() {
        /*
            r7 = this;
            java.lang.String r7 = ".environment.rc"
            java.lang.String r0 = ""
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = "/"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> La5
            java.io.File[] r2 = r1.listFiles()     // Catch: java.lang.Throwable -> La5
            if (r2 != 0) goto L13
        L11:
            r7 = r0
            goto L40
        L13:
            java.io.File[] r1 = r1.listFiles()     // Catch: java.lang.Throwable -> La5
            int r2 = r1.length     // Catch: java.lang.Throwable -> La5
            r3 = 0
        L19:
            if (r3 >= r2) goto L11
            r4 = r1[r3]     // Catch: java.lang.Throwable -> La5
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Throwable -> La5
            java.lang.String r5 = "init."
            boolean r5 = r4.startsWith(r5)     // Catch: java.lang.Throwable -> La5
            if (r5 == 0) goto L3d
            boolean r5 = r4.endsWith(r7)     // Catch: java.lang.Throwable -> La5
            if (r5 != 0) goto L30
            goto L3d
        L30:
            int r5 = r4.indexOf(r7)     // Catch: java.lang.Throwable -> La5
            r6 = 5
            if (r5 > r6) goto L38
            goto L3d
        L38:
            java.lang.String r7 = r4.substring(r6, r5)     // Catch: java.lang.Throwable -> La5
            goto L40
        L3d:
            int r3 = r3 + 1
            goto L19
        L40:
            java.lang.String r1 = "/proc/self/mountinfo"
            java.lang.String r1 = com.tencent.qimei.p092m.C16800a.m59978c(r1)     // Catch: java.lang.Throwable -> La5
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> La5
            if (r2 == 0) goto L4d
            goto L6f
        L4d:
            java.lang.String r2 = "/lxc_container/"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> La5
            if (r2 == 0) goto L58
            java.lang.String r1 = "lxc"
            goto L70
        L58:
            java.lang.String r2 = "/proc/self/cpuset"
            java.lang.String r2 = com.tencent.qimei.p092m.C16800a.m59978c(r2)     // Catch: java.lang.Throwable -> La5
            java.lang.String r3 = "/docker"
            boolean r3 = r2.contains(r3)     // Catch: java.lang.Throwable -> La5
            if (r3 == 0) goto L6f
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto L6f
            java.lang.String r1 = "docker"
            goto L70
        L6f:
            r1 = r0
        L70:
            boolean r2 = r7.isEmpty()     // Catch: java.lang.Throwable -> La5
            if (r2 != 0) goto L8a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
            r2.<init>()     // Catch: java.lang.Throwable -> La5
            r2.append(r0)     // Catch: java.lang.Throwable -> La5
            java.lang.String r3 = "1#"
            r2.append(r3)     // Catch: java.lang.Throwable -> La5
            r2.append(r7)     // Catch: java.lang.Throwable -> La5
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> La5
        L8a:
            boolean r7 = r1.isEmpty()     // Catch: java.lang.Throwable -> La5
            if (r7 != 0) goto La9
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La5
            r7.<init>()     // Catch: java.lang.Throwable -> La5
            r7.append(r0)     // Catch: java.lang.Throwable -> La5
            java.lang.String r2 = "2#"
            r7.append(r2)     // Catch: java.lang.Throwable -> La5
            r7.append(r1)     // Catch: java.lang.Throwable -> La5
            java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> La5
            goto La9
        La5:
            r7 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r7)
        La9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p084e.C16775c.m59913f():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x004a, code lost:
    
        if (r6.f93465b.getPackageManager().hasSystemFeature("android.software.leanback") != false) goto L24;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m59914g() {
        /*
            r6 = this;
            java.lang.String r0 = "uimode"
            java.lang.String r1 = "TV"
            android.content.Context r2 = r6.f93465b     // Catch: java.lang.Throwable -> L74
            java.lang.Object r2 = r2.getSystemService(r0)     // Catch: java.lang.Throwable -> L74
            android.app.UiModeManager r2 = (android.app.UiModeManager) r2     // Catch: java.lang.Throwable -> L74
            if (r2 != 0) goto L15
            boolean r3 = r6.m59908a()     // Catch: java.lang.Throwable -> L74
            if (r3 == 0) goto L15
            return r1
        L15:
            int r2 = r2.getCurrentModeType()     // Catch: java.lang.Throwable -> L74
            r3 = 0
            android.content.Context r4 = r6.f93465b     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r0 = r4.getSystemService(r0)     // Catch: java.lang.Throwable -> L4e
            android.app.UiModeManager r0 = (android.app.UiModeManager) r0     // Catch: java.lang.Throwable -> L4e
            int r0 = r0.getCurrentModeType()     // Catch: java.lang.Throwable -> L4e
            r4 = 4
            r5 = 1
            if (r0 != r4) goto L2c
            r0 = r5
            goto L2d
        L2c:
            r0 = r3
        L2d:
            if (r0 == 0) goto L30
            goto L4c
        L30:
            android.content.Context r0 = r6.f93465b     // Catch: java.lang.Throwable -> L4e
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r4 = "android.hardware.type.television"
            boolean r0 = r0.hasSystemFeature(r4)     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L4c
            android.content.Context r0 = r6.f93465b     // Catch: java.lang.Throwable -> L4e
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r4 = "android.software.leanback"
            boolean r0 = r0.hasSystemFeature(r4)     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L52
        L4c:
            r3 = r5
            goto L52
        L4e:
            r0 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r0)     // Catch: java.lang.Throwable -> L74
        L52:
            if (r3 == 0) goto L55
            return r1
        L55:
            r0 = 6
            if (r2 != r0) goto L5b
            java.lang.String r6 = "WATCH"
            return r6
        L5b:
            r0 = 3
            if (r2 != r0) goto L61
            java.lang.String r6 = "CAR"
            return r6
        L61:
            android.content.Context r2 = r6.f93465b     // Catch: java.lang.Throwable -> L74
            android.content.res.Resources r2 = r2.getResources()     // Catch: java.lang.Throwable -> L74
            android.content.res.Configuration r2 = r2.getConfiguration()     // Catch: java.lang.Throwable -> L74
            int r6 = r2.screenLayout     // Catch: java.lang.Throwable -> L74
            r6 = r6 & 15
            if (r6 < r0) goto L7f
            java.lang.String r6 = "Pad"
            return r6
        L74:
            r0 = move-exception
            boolean r6 = r6.m59908a()
            if (r6 == 0) goto L7c
            return r1
        L7c:
            com.tencent.qimei.p093n.C16806a.m59992a(r0)
        L7f:
            java.lang.String r6 = "Phone"
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p084e.C16775c.m59914g():java.lang.String");
    }

    /* renamed from: h */
    public String m59915h() {
        return "";
    }

    /* renamed from: i */
    public String m59916i() {
        return "";
    }

    /* renamed from: k */
    public synchronized String m59917k() {
        String hostAddress;
        if (this.f93472i == null) {
            Enumeration<NetworkInterface> m59920n = m59920n();
            if (m59920n == null) {
                hostAddress = Portable.ALL_INTERFACES;
                this.f93472i = hostAddress;
            }
            loop0: while (m59920n.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = m59920n.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        hostAddress = nextElement.getHostAddress();
                        break loop0;
                    }
                }
            }
            hostAddress = Portable.ALL_INTERFACES;
            this.f93472i = hostAddress;
        }
        return this.f93472i;
    }

    /* renamed from: l */
    public synchronized String m59918l() {
        return "";
    }

    /* renamed from: m */
    public String m59919m() {
        String str = this.f93470g;
        return str == null ? "" : str;
    }

    /* renamed from: n */
    public final synchronized Enumeration<NetworkInterface> m59920n() {
        if (this.f93478o == null) {
            try {
                this.f93478o = NetworkInterface.getNetworkInterfaces();
            } catch (SocketException e) {
                C16806a.m59992a(e);
            }
        }
        return this.f93478o;
    }

    /* renamed from: o */
    public synchronized String m59921o() {
        String m60116o;
        if (this.f93476m == null) {
            if (C16842U.f93671a) {
                try {
                    m60116o = C16842U.m60116o();
                } catch (UnsatisfiedLinkError e) {
                    e.printStackTrace();
                }
                this.f93476m = m60116o;
            }
            m60116o = "";
            this.f93476m = m60116o;
        }
        return this.f93476m;
    }

    /* renamed from: p */
    public synchronized String m59922p() {
        String str = this.f93469f;
        if (str != null) {
            return str;
        }
        StringBuilder m59796a = C16733a.m59796a("Android ");
        m59796a.append(Build.VERSION.RELEASE);
        m59796a.append(",level ");
        m59796a.append(Build.VERSION.SDK);
        String sb = m59796a.toString();
        this.f93469f = sb;
        return sb;
    }

    /* renamed from: q */
    public synchronized String m59923q() {
        String m60122z;
        if (this.f93475l == null) {
            Context context = this.f93465b;
            if (C16842U.f93671a) {
                try {
                    m60122z = C16842U.m60122z(context);
                } catch (UnsatisfiedLinkError e) {
                    e.printStackTrace();
                }
                this.f93475l = m60122z;
            }
            m60122z = "";
            this.f93475l = m60122z;
        }
        return this.f93475l;
    }

    /* renamed from: r */
    public byte m59924r() {
        return (byte) 1;
    }

    /* renamed from: s */
    public String m59925s() {
        if (C16842U.f93671a) {
            try {
                return C16842U.m60119s();
            } catch (UnsatisfiedLinkError e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    /* renamed from: t */
    public synchronized String m59926t() {
        String m60120u;
        if (this.f93477n == null) {
            if (C16842U.f93671a) {
                try {
                    m60120u = C16842U.m60120u();
                } catch (UnsatisfiedLinkError e) {
                    e.printStackTrace();
                }
                this.f93477n = m60120u;
            }
            m60120u = "";
            this.f93477n = m60120u;
        }
        return this.f93477n;
    }

    /* renamed from: u */
    public boolean m59927u() {
        String str = (String) C16762a.m59865a(null, "com.huawei.system.BuildEx", "getOsBrand", new Class[0], new Object[0]);
        if (str == null) {
            return false;
        }
        return "harmony".equalsIgnoreCase(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m59928v() {
        /*
            r6 = this;
            java.lang.String r0 = "mobile"
            com.tencent.qimei.y.d r1 = com.tencent.qimei.p105y.C16858d.m60143b()
            android.content.Context r1 = r1.mo60059c()
            java.lang.String r2 = "unknown"
            if (r1 != 0) goto L10
            goto Lb0
        L10:
            java.lang.String r3 = "connectivity"
            java.lang.Object r3 = r1.getSystemService(r3)
            android.net.ConnectivityManager r3 = (android.net.ConnectivityManager) r3
            if (r3 != 0) goto L1c
            goto Lb0
        L1c:
            r4 = 0
            android.net.Network r5 = r3.getActiveNetwork()     // Catch: java.lang.Exception -> L29
            if (r5 != 0) goto L24
            goto L6b
        L24:
            android.net.NetworkCapabilities r3 = r3.getNetworkCapabilities(r5)     // Catch: java.lang.Exception -> L29
            goto L2e
        L29:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
            r3 = 0
        L2e:
            if (r3 != 0) goto L31
            goto L6b
        L31:
            r5 = 1
            boolean r5 = r3.hasTransport(r5)
            if (r5 == 0) goto L3b
            java.lang.String r3 = "wifi"
            goto L6c
        L3b:
            boolean r5 = r3.hasTransport(r4)
            if (r5 == 0) goto L43
            r3 = r0
            goto L6c
        L43:
            r5 = 4
            boolean r5 = r3.hasTransport(r5)
            if (r5 == 0) goto L4d
            java.lang.String r3 = "vpn"
            goto L6c
        L4d:
            r5 = 2
            boolean r5 = r3.hasTransport(r5)
            if (r5 == 0) goto L57
            java.lang.String r3 = "bluetooth"
            goto L6c
        L57:
            r5 = 6
            boolean r5 = r3.hasTransport(r5)
            if (r5 == 0) goto L61
            java.lang.String r3 = "lowpan"
            goto L6c
        L61:
            r5 = 5
            boolean r3 = r3.hasTransport(r5)
            if (r3 == 0) goto L6b
            java.lang.String r3 = "wifi_aware"
            goto L6c
        L6b:
            r3 = r2
        L6c:
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Laf
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r1.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            if (r0 != 0) goto L7d
            goto Lb0
        L7d:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L8d
            r2 = 30
            if (r1 >= r2) goto L88
            int r4 = r0.getNetworkType()     // Catch: java.lang.Exception -> L8d
            goto L91
        L88:
            int r4 = r0.getDataNetworkType()     // Catch: java.lang.Exception -> L8d
            goto L91
        L8d:
            r0 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r0)
        L91:
            switch(r4) {
                case 1: goto Lac;
                case 2: goto Lac;
                case 3: goto La9;
                case 4: goto Lac;
                case 5: goto La9;
                case 6: goto La9;
                case 7: goto Lac;
                case 8: goto La9;
                case 9: goto La9;
                case 10: goto La9;
                case 11: goto Lac;
                case 12: goto La9;
                case 13: goto La6;
                case 14: goto La9;
                case 15: goto La9;
                default: goto L94;
            }
        L94:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "unknown_"
            r0.append(r1)
            r0.append(r4)
            java.lang.String r2 = r0.toString()
            goto Lb0
        La6:
            java.lang.String r2 = "4G"
            goto Lb0
        La9:
            java.lang.String r2 = "3G"
            goto Lb0
        Lac:
            java.lang.String r2 = "2G"
            goto Lb0
        Laf:
            r2 = r3
        Lb0:
            r6.f93470g = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p084e.C16775c.m59928v():void");
    }

    /* renamed from: a */
    public final boolean m59908a() {
        boolean z;
        boolean z2;
        boolean z3;
        try {
            Intent registerReceiver = this.f93465b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            z2 = registerReceiver.getIntExtra("status", -1) == 5;
            z3 = registerReceiver.getIntExtra("plugged", -1) == 1;
        } catch (Throwable th) {
            C16806a.m59992a(th);
        }
        if (z2 && z3) {
            z = true;
            TelephonyManager telephonyManager = (TelephonyManager) this.f93465b.getSystemService("phone");
            return z || (telephonyManager != null || telephonyManager.getPhoneType() == 0);
        }
        z = false;
        TelephonyManager telephonyManager2 = (TelephonyManager) this.f93465b.getSystemService("phone");
        if (z) {
            return true;
        }
    }
}
