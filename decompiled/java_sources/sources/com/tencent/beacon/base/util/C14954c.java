package com.tencent.beacon.base.util;

import android.util.Log;
import com.google.android.material.motion.MotionUtils;
import java.util.Locale;

/* renamed from: com.tencent.beacon.base.util.c */
/* loaded from: classes10.dex */
public class C14954c {

    /* renamed from: a */
    public static boolean f92911a = true;

    /* renamed from: b */
    private static BeaconLogger f92912b;

    /* renamed from: c */
    private static boolean f92913c;

    private C14954c() {
    }

    /* renamed from: a */
    public static BeaconLogger m59387a() {
        return f92912b;
    }

    /* renamed from: b */
    public static synchronized void m59396b(boolean z) {
        synchronized (C14954c.class) {
            f92911a = z;
        }
    }

    /* renamed from: c */
    public static synchronized boolean m59399c() {
        boolean z;
        synchronized (C14954c.class) {
            z = f92911a;
        }
        return z;
    }

    /* renamed from: d */
    private static boolean m59401d() {
        return m59397b();
    }

    /* renamed from: e */
    public static void m59403e(String str, Object... objArr) {
        if (m59401d()) {
            BeaconLogger beaconLogger = f92912b;
            if (beaconLogger == null) {
                Log.w("beacon", m59398c(str, objArr));
            } else {
                beaconLogger.m59356w("beacon", m59398c(str, objArr));
            }
        }
    }

    /* renamed from: f */
    private static String m59404f() {
        StackTraceElement m59402e;
        if (!m59399c() || (m59402e = m59402e()) == null) {
            return "";
        }
        String fileName = m59402e.getFileName();
        String str = fileName != null ? fileName : "";
        String methodName = m59402e.getMethodName();
        if (methodName.contains("$")) {
            methodName = methodName.substring(methodName.indexOf("$") + 1, methodName.lastIndexOf("$") - 2);
        }
        return MotionUtils.f31761c + str + ":" + m59402e.getLineNumber() + MotionUtils.f31762d + methodName + " ";
    }

    /* renamed from: a */
    public static void m59388a(BeaconLogger beaconLogger) {
        f92912b = beaconLogger;
    }

    /* renamed from: b */
    public static synchronized boolean m59397b() {
        boolean z;
        synchronized (C14954c.class) {
            z = f92913c;
        }
        return z;
    }

    /* renamed from: c */
    public static String m59398c(String str, Object... objArr) {
        String m59404f = m59404f();
        if (str == null) {
            return m59404f + "msg is null";
        }
        if (objArr != null && objArr.length != 0) {
            return m59404f + String.format(Locale.US, str, objArr);
        }
        return m59404f + str;
    }

    /* renamed from: d */
    public static void m59400d(String str, Object... objArr) {
        if (m59401d()) {
            BeaconLogger beaconLogger = f92912b;
            if (beaconLogger == null) {
                Log.i("beacon", m59398c(str, objArr));
            } else {
                beaconLogger.m59354i("beacon", m59398c(str, objArr));
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m59394a(boolean z) {
        synchronized (C14954c.class) {
            Log.i("beacon", "beacon logAble: " + z);
            f92913c = z;
        }
    }

    /* renamed from: b */
    public static void m59395b(String str, Object... objArr) {
        if (m59401d()) {
            BeaconLogger beaconLogger = f92912b;
            if (beaconLogger == null) {
                Log.e("beacon", m59398c(str, objArr));
            } else {
                beaconLogger.m59353e("beacon", m59398c(str, objArr));
            }
        }
    }

    /* renamed from: a */
    public static void m59392a(String str, Object... objArr) {
        if (m59401d()) {
            BeaconLogger beaconLogger = f92912b;
            if (beaconLogger == null) {
                Log.d("beacon", m59398c(str, objArr));
            } else {
                beaconLogger.m59352d("beacon", m59398c(str, objArr));
            }
        }
    }

    /* renamed from: e */
    private static StackTraceElement m59402e() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int m59386a = m59386a(stackTrace, C14954c.class);
        if (m59386a == -1 && (m59386a = m59386a(stackTrace, Log.class)) == -1) {
            return null;
        }
        return stackTrace[m59386a];
    }

    /* renamed from: a */
    public static void m59391a(String str, String str2, Object... objArr) {
        if (m59401d()) {
            BeaconLogger beaconLogger = f92912b;
            if (beaconLogger == null) {
                Log.d("beacon", m59398c(str + " " + str2, objArr));
                return;
            }
            beaconLogger.m59352d("beacon", m59398c(str + " " + str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m59389a(String str, int i, String str2, Object... objArr) {
        if (m59401d()) {
            BeaconLogger beaconLogger = f92912b;
            if (beaconLogger == null) {
                Log.d("beacon", m59398c(str + " step: " + i + ". " + str2, objArr));
                return;
            }
            beaconLogger.m59352d("beacon", m59398c(str + " step: " + i + ". " + str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m59393a(Throwable th) {
        if (th == null || !m59401d()) {
            return;
        }
        BeaconLogger beaconLogger = f92912b;
        if (beaconLogger == null) {
            th.printStackTrace();
        } else {
            beaconLogger.printStackTrace(th);
        }
    }

    /* renamed from: a */
    public static void m59390a(String str, String str2) {
        Log.e("beacon", String.format("BeaconSDK init success! appkey is: %s, packageName is: %s ", str, str2));
    }

    /* renamed from: a */
    private static int m59386a(StackTraceElement[] stackTraceElementArr, Class cls) {
        for (int i = 5; i < stackTraceElementArr.length; i++) {
            String className = stackTraceElementArr[i].getClassName();
            if (!(cls.equals(Log.class) && i < stackTraceElementArr.length - 1 && stackTraceElementArr[i + 1].getClassName().equals(Log.class.getName())) && className.equals(cls.getName())) {
                return i + 1;
            }
        }
        return -1;
    }
}
