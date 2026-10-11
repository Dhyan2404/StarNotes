package xcrash;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.caverock.androidsvg.SVGParser;
import com.sunia.HTREnginev2.C14288q6;
import com.sunia.HTREnginev2.ygg;
import java.io.File;
import java.util.Map;

@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes16.dex */
class NativeHandler {

    /* renamed from: j */
    public static final String f116391j = "xcrash";

    /* renamed from: k */
    public static final NativeHandler f116392k = new NativeHandler();

    /* renamed from: b */
    public Context f116394b;

    /* renamed from: c */
    public boolean f116395c;

    /* renamed from: d */
    public ICrashCallback f116396d;

    /* renamed from: e */
    public boolean f116397e;

    /* renamed from: f */
    public boolean f116398f;

    /* renamed from: g */
    public ICrashCallback f116399g;

    /* renamed from: h */
    public ICrashCallback f116400h;

    /* renamed from: a */
    public long f116393a = 25000;

    /* renamed from: i */
    public boolean f116401i = false;

    /* renamed from: a */
    public static NativeHandler m72072a() {
        return f116392k;
    }

    /* renamed from: b */
    public static String m72073b(boolean z, String str) {
        try {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if ((z && key.getName().equals("main")) || (!z && key.getName().contains(str))) {
                    StringBuilder sb = new StringBuilder();
                    StackTraceElement[] value = entry.getValue();
                    for (StackTraceElement stackTraceElement : value) {
                        sb.append("    at ");
                        sb.append(stackTraceElement.toString());
                        sb.append("\n");
                    }
                    return sb.toString();
                }
            }
            return null;
        } catch (Exception e) {
            XCrash.m72106c().mo57488e("xcrash", "NativeHandler getStacktraceByThreadName failed", e);
            return null;
        }
    }

    private static void crashCallback(String str, String str2, boolean z, boolean z2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                String m72073b = m72073b(z2, str3);
                if (!TextUtils.isEmpty(m72073b)) {
                    TombstoneManager.appendSection(str, TombstoneParser.keyJavaStacktrace, m72073b);
                }
            }
            TombstoneManager.appendSection(str, TombstoneParser.keyMemoryInfo, Util.m72100o());
            TombstoneManager.appendSection(str, "foreground", C14288q6.m56651d().m56654f() ? "yes" : SVGParser.f16048t);
        }
        ICrashCallback iCrashCallback = m72072a().f116396d;
        if (iCrashCallback != null) {
            try {
                iCrashCallback.onCrash(str, str2);
            } catch (Exception e) {
                XCrash.m72106c().mo57494w("xcrash", "NativeHandler native crash callback.onCrash failed", e);
            }
        }
        if (m72072a().f116395c) {
            return;
        }
        C14288q6.m56651d().m56652c();
    }

    private static native int nativeInit(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z, boolean z2, int i2, int i3, int i4, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i5, String[] strArr, boolean z8, boolean z9, int i6, int i7, int i8, boolean z10, boolean z11);

    private static native void nativeNotifyJavaCrashed();

    private static native void nativeTestCrash(int i);

    private static void traceCallback(String str, String str2) {
        Log.i("xcrash", "trace slow callback time: " + System.currentTimeMillis());
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TombstoneManager.appendSection(str, TombstoneParser.keyMemoryInfo, Util.m72100o());
        TombstoneManager.appendSection(str, "foreground", C14288q6.m56651d().m56654f() ? "yes" : SVGParser.f16048t);
        if (m72072a().f116398f && !Util.m72087b(m72072a().f116394b, m72072a().f116393a)) {
            ygg.m58407l().m58419q(new File(str));
            return;
        }
        if (ygg.m58407l().m58418p()) {
            String str3 = str.substring(0, str.length() - 13) + Util.f116426n;
            File file = new File(str);
            if (!file.renameTo(new File(str3))) {
                ygg.m58407l().m58419q(file);
                return;
            }
            ICrashCallback iCrashCallback = m72072a().f116399g;
            if (iCrashCallback != null) {
                try {
                    iCrashCallback.onCrash(str3, str2);
                } catch (Exception e) {
                    XCrash.m72106c().mo57494w("xcrash", "NativeHandler ANR callback.onCrash failed", e);
                }
            }
        }
    }

    private static void traceCallbackBeforeDump() {
        Log.i("xcrash", "trace fast callback time: " + System.currentTimeMillis());
        ICrashCallback iCrashCallback = m72072a().f116400h;
        if (iCrashCallback != null) {
            try {
                iCrashCallback.onCrash(null, null);
            } catch (Exception e) {
                XCrash.m72106c().mo57494w("xcrash", "NativeHandler ANR callback.onCrash failed", e);
            }
        }
    }

    /* renamed from: c */
    public int m72074c(Context context, ILibLoader iLibLoader, String str, String str2, String str3, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i4, String[] strArr, ICrashCallback iCrashCallback, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, boolean z11, boolean z12, ICrashCallback iCrashCallback2, ICrashCallback iCrashCallback3) {
        if (iLibLoader == null) {
            try {
                System.loadLibrary("xcrash");
            } catch (Throwable th) {
                XCrash.m72106c().mo57488e("xcrash", "NativeHandler System.loadLibrary failed", th);
                return -2;
            }
        } else {
            try {
                iLibLoader.loadLibrary("xcrash");
            } catch (Throwable th2) {
                XCrash.m72106c().mo57488e("xcrash", "NativeHandler ILibLoader.loadLibrary failed", th2);
                return -2;
            }
        }
        this.f116394b = context;
        this.f116395c = z2;
        this.f116396d = iCrashCallback;
        this.f116397e = z8;
        this.f116398f = z10;
        this.f116399g = iCrashCallback2;
        this.f116400h = iCrashCallback3;
        this.f116393a = z9 ? 25000L : 45000L;
        try {
            if (nativeInit(Build.VERSION.SDK_INT, Build.VERSION.RELEASE, Util.m72088c(), Build.MANUFACTURER, Build.BRAND, Util.m72098m(), Build.FINGERPRINT, str, str2, context.getApplicationInfo().nativeLibraryDir, str3, z, z2, i, i2, i3, z3, z4, z5, z6, z7, i4, strArr, z8, z9, i5, i6, i7, z11, z12) != 0) {
                XCrash.m72106c().mo57487e("xcrash", "NativeHandler init failed");
                return -3;
            }
            this.f116401i = true;
            return 0;
        } catch (Throwable th3) {
            XCrash.m72106c().mo57488e("xcrash", "NativeHandler init failed", th3);
            return -3;
        }
    }

    /* renamed from: d */
    public void m72075d() {
        if (this.f116401i && this.f116397e) {
            nativeNotifyJavaCrashed();
        }
    }

    /* renamed from: e */
    public void m72076e(boolean z) {
        if (this.f116401i) {
            nativeTestCrash(z ? 1 : 0);
        }
    }
}
