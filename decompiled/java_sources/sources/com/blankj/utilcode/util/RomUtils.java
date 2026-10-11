package com.blankj.utilcode.util;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.material.internal.ManufacturerUtils;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.oplus.ocs.ipemanager.sdk.PencilManagerUnitClient;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class RomUtils {

    /* renamed from: A */
    public static final String f13925A = "ro.build.MiFavor_version";

    /* renamed from: B */
    public static final String f13926B = "ro.rom.version";

    /* renamed from: C */
    public static final String f13927C = "ro.build.rom.id";

    /* renamed from: D */
    public static final String f13928D = "unknown";

    /* renamed from: u */
    public static final String f13950u = "ro.build.version.emui";

    /* renamed from: v */
    public static final String f13951v = "ro.vivo.os.build.display.id";

    /* renamed from: w */
    public static final String f13952w = "ro.build.version.incremental";

    /* renamed from: x */
    public static final String f13953x = "ro.build.version.opporom";

    /* renamed from: y */
    public static final String f13954y = "ro.letv.release.version";

    /* renamed from: z */
    public static final String f13955z = "ro.build.uiversion";

    /* renamed from: a */
    public static final String[] f13930a = {LoginAuthConst.HUAWEI_AUTH};

    /* renamed from: b */
    public static final String[] f13931b = {"vivo"};

    /* renamed from: c */
    public static final String[] f13932c = {"xiaomi"};

    /* renamed from: d */
    public static final String[] f13933d = {"oppo"};

    /* renamed from: e */
    public static final String[] f13934e = {"leeco", "letv"};

    /* renamed from: f */
    public static final String[] f13935f = {"360", "qiku"};

    /* renamed from: g */
    public static final String[] f13936g = {"zte"};

    /* renamed from: h */
    public static final String[] f13937h = {PencilManagerUnitClient.f63165m};

    /* renamed from: i */
    public static final String[] f13938i = {"nubia"};

    /* renamed from: j */
    public static final String[] f13939j = {"coolpad", "yulong"};

    /* renamed from: k */
    public static final String[] f13940k = {"lg", ManufacturerUtils.f31578a};

    /* renamed from: l */
    public static final String[] f13941l = {LoginAuthConst.GOOGLE_AUTH};

    /* renamed from: m */
    public static final String[] f13942m = {ManufacturerUtils.f31579b};

    /* renamed from: n */
    public static final String[] f13943n = {ManufacturerUtils.f31580c};

    /* renamed from: o */
    public static final String[] f13944o = {"lenovo"};

    /* renamed from: p */
    public static final String[] f13945p = {"smartisan", "deltainno"};

    /* renamed from: q */
    public static final String[] f13946q = {"htc"};

    /* renamed from: r */
    public static final String[] f13947r = {"sony"};

    /* renamed from: s */
    public static final String[] f13948s = {"gionee", "amigo"};

    /* renamed from: t */
    public static final String[] f13949t = {"motorola"};

    /* renamed from: E */
    public static RomInfo f13929E = null;

    /* loaded from: classes3.dex */
    public static class RomInfo {

        /* renamed from: a */
        public String f13956a;

        /* renamed from: b */
        public String f13957b;

        public String getName() {
            return this.f13956a;
        }

        public String getVersion() {
            return this.f13957b;
        }

        public String toString() {
            return "RomInfo{name=" + this.f13956a + ", version=" + this.f13957b + "}";
        }
    }

    public RomUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static String m8291a() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    /* renamed from: b */
    public static String m8292b() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    /* renamed from: c */
    public static String m8293c(String str) {
        String m8294d = !TextUtils.isEmpty(str) ? m8294d(str) : "";
        if (TextUtils.isEmpty(m8294d) || m8294d.equals("unknown")) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    m8294d = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(m8294d) ? "unknown" : m8294d;
    }

    /* renamed from: d */
    public static String m8294d(String str) {
        String m8296f = m8296f(str);
        if (!TextUtils.isEmpty(m8296f)) {
            return m8296f;
        }
        String m8297g = m8297g(str);
        TextUtils.isEmpty(m8297g);
        return m8297g;
    }

    /* renamed from: e */
    public static String m8295e(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: f */
    public static String m8296f(String str) {
        BufferedReader bufferedReader;
        String readLine;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            } catch (IOException unused) {
                return "";
            }
        } catch (IOException unused2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            readLine = bufferedReader.readLine();
        } catch (IOException unused3) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 == null) {
                return "";
            }
            bufferedReader2.close();
            return "";
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        if (readLine != null) {
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
            return readLine;
        }
        bufferedReader.close();
        return "";
    }

    /* renamed from: g */
    public static String m8297g(String str) {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public static RomInfo getRomInfo() {
        RomInfo romInfo = f13929E;
        if (romInfo != null) {
            return romInfo;
        }
        f13929E = new RomInfo();
        String m8291a = m8291a();
        String m8292b = m8292b();
        String[] strArr = f13930a;
        if (m8298h(m8291a, m8292b, strArr)) {
            f13929E.f13956a = strArr[0];
            String m8293c = m8293c("ro.build.version.emui");
            String[] split = m8293c.split("_");
            if (split.length > 1) {
                f13929E.f13957b = split[1];
            } else {
                f13929E.f13957b = m8293c;
            }
            return f13929E;
        }
        String[] strArr2 = f13931b;
        if (m8298h(m8291a, m8292b, strArr2)) {
            f13929E.f13956a = strArr2[0];
            f13929E.f13957b = m8293c(f13951v);
            return f13929E;
        }
        String[] strArr3 = f13932c;
        if (m8298h(m8291a, m8292b, strArr3)) {
            f13929E.f13956a = strArr3[0];
            f13929E.f13957b = m8293c(f13952w);
            return f13929E;
        }
        String[] strArr4 = f13933d;
        if (m8298h(m8291a, m8292b, strArr4)) {
            f13929E.f13956a = strArr4[0];
            f13929E.f13957b = m8293c("ro.build.version.opporom");
            return f13929E;
        }
        String[] strArr5 = f13934e;
        if (m8298h(m8291a, m8292b, strArr5)) {
            f13929E.f13956a = strArr5[0];
            f13929E.f13957b = m8293c(f13954y);
            return f13929E;
        }
        String[] strArr6 = f13935f;
        if (m8298h(m8291a, m8292b, strArr6)) {
            f13929E.f13956a = strArr6[0];
            f13929E.f13957b = m8293c(f13955z);
            return f13929E;
        }
        String[] strArr7 = f13936g;
        if (m8298h(m8291a, m8292b, strArr7)) {
            f13929E.f13956a = strArr7[0];
            f13929E.f13957b = m8293c(f13925A);
            return f13929E;
        }
        String[] strArr8 = f13937h;
        if (m8298h(m8291a, m8292b, strArr8)) {
            f13929E.f13956a = strArr8[0];
            f13929E.f13957b = m8293c(f13926B);
            return f13929E;
        }
        String[] strArr9 = f13938i;
        if (m8298h(m8291a, m8292b, strArr9)) {
            f13929E.f13956a = strArr9[0];
            f13929E.f13957b = m8293c(f13927C);
            return f13929E;
        }
        String[] strArr10 = f13939j;
        if (m8298h(m8291a, m8292b, strArr10)) {
            f13929E.f13956a = strArr10[0];
        } else {
            String[] strArr11 = f13940k;
            if (m8298h(m8291a, m8292b, strArr11)) {
                f13929E.f13956a = strArr11[0];
            } else {
                String[] strArr12 = f13941l;
                if (m8298h(m8291a, m8292b, strArr12)) {
                    f13929E.f13956a = strArr12[0];
                } else {
                    String[] strArr13 = f13942m;
                    if (m8298h(m8291a, m8292b, strArr13)) {
                        f13929E.f13956a = strArr13[0];
                    } else {
                        String[] strArr14 = f13943n;
                        if (m8298h(m8291a, m8292b, strArr14)) {
                            f13929E.f13956a = strArr14[0];
                        } else {
                            String[] strArr15 = f13944o;
                            if (m8298h(m8291a, m8292b, strArr15)) {
                                f13929E.f13956a = strArr15[0];
                            } else {
                                String[] strArr16 = f13945p;
                                if (m8298h(m8291a, m8292b, strArr16)) {
                                    f13929E.f13956a = strArr16[0];
                                } else {
                                    String[] strArr17 = f13946q;
                                    if (m8298h(m8291a, m8292b, strArr17)) {
                                        f13929E.f13956a = strArr17[0];
                                    } else {
                                        String[] strArr18 = f13947r;
                                        if (m8298h(m8291a, m8292b, strArr18)) {
                                            f13929E.f13956a = strArr18[0];
                                        } else {
                                            String[] strArr19 = f13948s;
                                            if (m8298h(m8291a, m8292b, strArr19)) {
                                                f13929E.f13956a = strArr19[0];
                                            } else {
                                                String[] strArr20 = f13949t;
                                                if (m8298h(m8291a, m8292b, strArr20)) {
                                                    f13929E.f13956a = strArr20[0];
                                                } else {
                                                    f13929E.f13956a = m8292b;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        f13929E.f13957b = m8293c("");
        return f13929E;
    }

    /* renamed from: h */
    public static boolean m8298h(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }

    public static boolean is360() {
        return f13935f[0].equals(getRomInfo().f13956a);
    }

    public static boolean isCoolpad() {
        return f13939j[0].equals(getRomInfo().f13956a);
    }

    public static boolean isGionee() {
        return f13948s[0].equals(getRomInfo().f13956a);
    }

    public static boolean isGoogle() {
        return f13941l[0].equals(getRomInfo().f13956a);
    }

    public static boolean isHtc() {
        return f13946q[0].equals(getRomInfo().f13956a);
    }

    public static boolean isHuawei() {
        return f13930a[0].equals(getRomInfo().f13956a);
    }

    public static boolean isLeeco() {
        return f13934e[0].equals(getRomInfo().f13956a);
    }

    public static boolean isLenovo() {
        return f13944o[0].equals(getRomInfo().f13956a);
    }

    public static boolean isLg() {
        return f13940k[0].equals(getRomInfo().f13956a);
    }

    public static boolean isMeizu() {
        return f13943n[0].equals(getRomInfo().f13956a);
    }

    public static boolean isMotorola() {
        return f13949t[0].equals(getRomInfo().f13956a);
    }

    public static boolean isNubia() {
        return f13938i[0].equals(getRomInfo().f13956a);
    }

    public static boolean isOneplus() {
        return f13937h[0].equals(getRomInfo().f13956a);
    }

    public static boolean isOppo() {
        return f13933d[0].equals(getRomInfo().f13956a);
    }

    public static boolean isSamsung() {
        return f13942m[0].equals(getRomInfo().f13956a);
    }

    public static boolean isSmartisan() {
        return f13945p[0].equals(getRomInfo().f13956a);
    }

    public static boolean isSony() {
        return f13947r[0].equals(getRomInfo().f13956a);
    }

    public static boolean isVivo() {
        return f13931b[0].equals(getRomInfo().f13956a);
    }

    public static boolean isXiaomi() {
        return f13932c[0].equals(getRomInfo().f13956a);
    }

    public static boolean isZte() {
        return f13936g[0].equals(getRomInfo().f13956a);
    }
}
