package androidx.core.os;

import android.os.Trace;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

@Deprecated
/* loaded from: classes3.dex */
public final class TraceCompat {

    /* renamed from: a */
    public static final String f5549a = "TraceCompat";

    /* renamed from: b */
    public static long f5550b;

    /* renamed from: c */
    public static Method f5551c;

    /* renamed from: d */
    public static Method f5552d;

    /* renamed from: e */
    public static Method f5553e;

    /* renamed from: f */
    public static Method f5554f;

    @RequiresApi(29)
    /* renamed from: androidx.core.os.TraceCompat$a */
    /* loaded from: classes3.dex */
    public static class C0716a {
        @DoNotInline
        /* renamed from: a */
        public static void m3142a(String str, int i) {
            Trace.beginAsyncSection(str, i);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m3143b(String str, int i) {
            Trace.endAsyncSection(str, i);
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3144c() {
            return Trace.isEnabled();
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3145d(String str, long j) {
            Trace.setCounter(str, j);
        }
    }

    public static void beginAsyncSection(@NonNull String str, int i) {
        C0716a.m3142a(str, i);
    }

    public static void beginSection(@NonNull String str) {
        Trace.beginSection(str);
    }

    public static void endAsyncSection(@NonNull String str, int i) {
        C0716a.m3143b(str, i);
    }

    public static void endSection() {
        Trace.endSection();
    }

    public static boolean isEnabled() {
        return C0716a.m3144c();
    }

    public static void setCounter(@NonNull String str, int i) {
        C0716a.m3145d(str, i);
    }
}
