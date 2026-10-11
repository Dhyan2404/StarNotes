package com.tencent.qimei.p093n;

import android.util.Log;
import com.google.android.material.motion.MotionUtils;
import com.tencent.qimei.log.IObservableLog;
import com.tencent.qimei.p078a.C16733a;
import java.util.Locale;

/* renamed from: com.tencent.qimei.n.a */
/* loaded from: classes10.dex */
public class C16806a {

    /* renamed from: a */
    public static boolean f93550a = false;

    /* renamed from: b */
    public static boolean f93551b = true;

    /* renamed from: c */
    public static IObservableLog f93552c;

    /* renamed from: a */
    public static int m59989a(StackTraceElement[] stackTraceElementArr, Class cls) {
        for (int i = 5; i < stackTraceElementArr.length; i++) {
            String className = stackTraceElementArr[i].getClassName();
            if (!(cls.equals(Log.class) && i < stackTraceElementArr.length - 1 && stackTraceElementArr[i + 1].getClassName().equals(Log.class.getName())) && className.equals(cls.getName())) {
                return i + 1;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static synchronized void m59996b(boolean z) {
        synchronized (C16806a.class) {
            f93551b = z;
        }
    }

    /* renamed from: a */
    public static synchronized void m59993a(boolean z) {
        synchronized (C16806a.class) {
            f93550a = z;
        }
    }

    /* renamed from: b */
    public static synchronized boolean m59997b() {
        boolean z;
        synchronized (C16806a.class) {
            z = f93551b;
        }
        return z;
    }

    /* renamed from: a */
    public static synchronized boolean m59994a() {
        boolean z;
        synchronized (C16806a.class) {
            z = f93550a;
        }
        return z;
    }

    /* renamed from: b */
    public static void m59995b(String str, String str2, Object... objArr) {
        if (m59994a()) {
            Log.i("qm", m59990a("Qm-Core-Info: " + str + " " + str2, objArr));
        }
    }

    /* renamed from: a */
    public static void m59991a(String str, String str2, Object... objArr) {
        if (m59994a()) {
            Log.e("qm", m59990a("Qm-Core-Error: " + str + " " + str2, objArr));
        }
    }

    /* renamed from: a */
    public static String m59990a(String str, Object... objArr) {
        String str2;
        String str3;
        str2 = "";
        if (m59997b()) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int m59989a = m59989a(stackTrace, C16806a.class);
            StackTraceElement stackTraceElement = (m59989a == -1 && (m59989a = m59989a(stackTrace, Log.class)) == -1) ? null : stackTrace[m59989a];
            if (stackTraceElement != null) {
                String fileName = stackTraceElement.getFileName();
                str2 = fileName != null ? fileName : "";
                String methodName = stackTraceElement.getMethodName();
                if (methodName.contains("$")) {
                    methodName = methodName.substring(methodName.indexOf("$") + 1, methodName.lastIndexOf("$") - 2);
                }
                str2 = MotionUtils.f31761c + str2 + ":" + stackTraceElement.getLineNumber() + MotionUtils.f31762d + methodName + " ";
            }
        }
        if (str == null) {
            str3 = str2 + "msg is null";
        } else if (objArr == null || objArr.length == 0) {
            str3 = str2 + str;
        } else {
            StringBuilder m59796a = C16733a.m59796a(str2);
            m59796a.append(String.format(Locale.US, str, objArr));
            str3 = m59796a.toString();
        }
        IObservableLog iObservableLog = f93552c;
        if (iObservableLog != null) {
            iObservableLog.onLog(str3);
        }
        return str3;
    }

    /* renamed from: a */
    public static void m59992a(Throwable th) {
        if (th != null) {
            if (m59994a()) {
                th.printStackTrace();
            } else {
                th.getMessage();
            }
        }
    }
}
