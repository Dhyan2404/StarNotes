package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.UnknownHostException;
import org.apache.commons.collections4.MapUtils;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class Log {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_OFF = Integer.MAX_VALUE;
    public static final int LOG_LEVEL_WARNING = 2;

    /* renamed from: a */
    public static int f28385a = 0;

    /* renamed from: b */
    public static boolean f28386b = true;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface LogLevel {
    }

    @Pure
    /* renamed from: a */
    public static String m21485a(String str, @Nullable Throwable th) {
        String throwableString = getThrowableString(th);
        if (TextUtils.isEmpty(throwableString)) {
            return str;
        }
        String valueOf = String.valueOf(str);
        String replace = throwableString.replace("\n", "\n  ");
        StringBuilder sb = new StringBuilder(valueOf.length() + 4 + String.valueOf(replace).length());
        sb.append(valueOf);
        sb.append("\n  ");
        sb.append(replace);
        sb.append('\n');
        return sb.toString();
    }

    @Pure
    /* renamed from: b */
    public static boolean m21486b(@Nullable Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    @Pure
    /* renamed from: d */
    public static void m21487d(@Size(max = 23) String str, String str2) {
        if (f28385a == 0) {
            android.util.Log.d(str, str2);
        }
    }

    @Pure
    /* renamed from: e */
    public static void m21489e(@Size(max = 23) String str, String str2) {
        if (f28385a <= 3) {
            android.util.Log.e(str, str2);
        }
    }

    @Pure
    public static int getLogLevel() {
        return f28385a;
    }

    @Nullable
    @Pure
    public static String getThrowableString(@Nullable Throwable th) {
        if (th == null) {
            return null;
        }
        return m21486b(th) ? "UnknownHostException (no network)" : !f28386b ? th.getMessage() : android.util.Log.getStackTraceString(th).trim().replace("\t", MapUtils.f104930a);
    }

    @Pure
    /* renamed from: i */
    public static void m21491i(@Size(max = 23) String str, String str2) {
        if (f28385a <= 1) {
            android.util.Log.i(str, str2);
        }
    }

    public static void setLogLevel(int i) {
        f28385a = i;
    }

    public static void setLogStackTraces(boolean z) {
        f28386b = z;
    }

    @Pure
    /* renamed from: w */
    public static void m21493w(@Size(max = 23) String str, String str2) {
        if (f28385a <= 2) {
            android.util.Log.w(str, str2);
        }
    }

    @Pure
    /* renamed from: d */
    public static void m21488d(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        m21487d(str, m21485a(str2, th));
    }

    @Pure
    /* renamed from: e */
    public static void m21490e(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        m21489e(str, m21485a(str2, th));
    }

    @Pure
    /* renamed from: i */
    public static void m21492i(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        m21491i(str, m21485a(str2, th));
    }

    @Pure
    /* renamed from: w */
    public static void m21494w(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        m21493w(str, m21485a(str2, th));
    }
}
