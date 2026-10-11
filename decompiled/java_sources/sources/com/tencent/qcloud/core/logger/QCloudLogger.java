package com.tencent.qcloud.core.logger;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public final class QCloudLogger {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static final List<LogAdapter> logAdapters = new ArrayList();

    private QCloudLogger() {
    }

    public static void addAdapter(LogAdapter logAdapter) {
        boolean z;
        if (logAdapter != null) {
            synchronized (LogAdapter.class) {
                Iterator<LogAdapter> it2 = logAdapters.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    } else if (it2.next().getClass().equals(logAdapter.getClass())) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    logAdapters.add(logAdapter);
                }
            }
        }
    }

    /* renamed from: d */
    public static void m59782d(String str, String str2, Object... objArr) {
        print(3, str, null, str2, objArr);
    }

    /* renamed from: e */
    public static void m59784e(String str, String str2, Object... objArr) {
        print(6, str, null, str2, objArr);
    }

    public static <T extends LogAdapter> T getAdapter(Class<T> cls) {
        synchronized (LogAdapter.class) {
            Iterator<LogAdapter> it2 = logAdapters.iterator();
            while (it2.hasNext()) {
                T t = (T) it2.next();
                if (t.getClass().equals(cls)) {
                    return t;
                }
            }
            return null;
        }
    }

    /* renamed from: i */
    public static void m59786i(String str, String str2, Object... objArr) {
        print(4, str, null, str2, objArr);
    }

    private static void print(int i, String str, @Nullable Throwable th, String str2, Object... objArr) {
        if (objArr != null) {
            try {
                if (objArr.length > 0) {
                    str2 = String.format(str2, objArr);
                }
            } catch (Exception unused) {
                str2 = str2 + ": !!!! Log format exception: ";
            }
        }
        synchronized (LogAdapter.class) {
            for (LogAdapter logAdapter : logAdapters) {
                if (logAdapter.isLoggable(i, str)) {
                    logAdapter.log(i, str, str2, th);
                }
            }
        }
    }

    /* renamed from: v */
    public static void m59788v(String str, String str2, Object... objArr) {
        print(2, str, null, str2, objArr);
    }

    /* renamed from: w */
    public static void m59790w(String str, String str2, Object... objArr) {
        print(5, str, null, str2, objArr);
    }

    /* renamed from: d */
    public static void m59783d(String str, Throwable th, String str2, Object... objArr) {
        print(3, str, th, str2, objArr);
    }

    /* renamed from: e */
    public static void m59785e(String str, Throwable th, String str2, Object... objArr) {
        print(6, str, th, str2, objArr);
    }

    /* renamed from: i */
    public static void m59787i(String str, Throwable th, String str2, Object... objArr) {
        print(4, str, th, str2, objArr);
    }

    /* renamed from: v */
    public static void m59789v(String str, Throwable th, String str2, Object... objArr) {
        print(2, str, th, str2, objArr);
    }

    /* renamed from: w */
    public static void m59791w(String str, Throwable th, String str2, Object... objArr) {
        print(5, str, th, str2, objArr);
    }
}
