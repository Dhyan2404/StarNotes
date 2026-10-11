package androidx.tracing;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.rkn;
import com.sunia.HTREnginev2.skn;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class Trace {

    /* renamed from: a */
    public static final String f10464a = "Trace";

    /* renamed from: b */
    public static long f10465b;

    /* renamed from: c */
    public static Method f10466c;

    /* renamed from: d */
    public static Method f10467d;

    /* renamed from: e */
    public static Method f10468e;

    /* renamed from: f */
    public static Method f10469f;

    /* renamed from: a */
    public static void m6503a(@NonNull String str, int i) {
        try {
            if (f10467d == null) {
                f10467d = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            f10467d.invoke(null, Long.valueOf(f10465b), str, Integer.valueOf(i));
        } catch (Exception e) {
            m6505c("asyncTraceBegin", e);
        }
    }

    /* renamed from: b */
    public static void m6504b(@NonNull String str, int i) {
        try {
            if (f10468e == null) {
                f10468e = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            f10468e.invoke(null, Long.valueOf(f10465b), str, Integer.valueOf(i));
        } catch (Exception e) {
            m6505c("asyncTraceEnd", e);
        }
    }

    @SuppressLint({"NewApi"})
    public static void beginAsyncSection(@NonNull String str, int i) {
        try {
            if (f10467d == null) {
                skn.m57169a(str, i);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        m6503a(str, i);
    }

    public static void beginSection(@NonNull String str) {
        rkn.m56981a(str);
    }

    /* renamed from: c */
    public static void m6505c(@NonNull String str, @NonNull Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        Log.v(f10464a, "Unable to call " + str + " via reflection", exc);
    }

    /* renamed from: d */
    public static boolean m6506d() {
        try {
            if (f10466c == null) {
                f10465b = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f10466c = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f10466c.invoke(null, Long.valueOf(f10465b))).booleanValue();
        } catch (Exception e) {
            m6505c("isTagEnabled", e);
            return false;
        }
    }

    /* renamed from: e */
    public static void m6507e(@NonNull String str, int i) {
        try {
            if (f10469f == null) {
                f10469f = android.os.Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            }
            f10469f.invoke(null, Long.valueOf(f10465b), str, Integer.valueOf(i));
        } catch (Exception e) {
            m6505c("traceCounter", e);
        }
    }

    @SuppressLint({"NewApi"})
    public static void endAsyncSection(@NonNull String str, int i) {
        try {
            if (f10468e == null) {
                skn.m57170b(str, i);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        m6504b(str, i);
    }

    public static void endSection() {
        rkn.m56982b();
    }

    @SuppressLint({"NewApi"})
    public static boolean isEnabled() {
        try {
            if (f10466c == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return m6506d();
    }

    @SuppressLint({"NewApi"})
    public static void setCounter(@NonNull String str, int i) {
        try {
            if (f10469f == null) {
                skn.m57171c(str, i);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        m6507e(str, i);
    }
}
