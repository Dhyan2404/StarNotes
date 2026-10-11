package xcrash;

import android.content.Context;
import com.sunia.HTREnginev2.tze;

/* loaded from: classes16.dex */
public final class XCrash {

    /* renamed from: a */
    public static boolean f116437a;

    /* renamed from: b */
    public static String f116438b;

    /* renamed from: c */
    public static String f116439c;

    /* renamed from: d */
    public static String f116440d;

    /* renamed from: e */
    public static ILogger f116441e = new tze();
    public static String nativeLibDir = null;

    /* loaded from: classes16.dex */
    public static class InitParameters {

        /* renamed from: a */
        public String f116460a = null;

        /* renamed from: b */
        public String f116461b = null;

        /* renamed from: c */
        public int f116462c = 5000;

        /* renamed from: d */
        public ILogger f116463d = null;

        /* renamed from: e */
        public ILibLoader f116464e = null;

        /* renamed from: f */
        public int f116465f = 0;

        /* renamed from: g */
        public int f116466g = 128;

        /* renamed from: h */
        public boolean f116467h = true;

        /* renamed from: i */
        public boolean f116468i = true;

        /* renamed from: j */
        public int f116469j = 10;

        /* renamed from: k */
        public int f116470k = 50;

        /* renamed from: l */
        public int f116471l = 50;

        /* renamed from: m */
        public int f116472m = 200;

        /* renamed from: n */
        public boolean f116473n = true;

        /* renamed from: o */
        public boolean f116474o = true;

        /* renamed from: p */
        public boolean f116475p = true;

        /* renamed from: q */
        public int f116476q = 0;

        /* renamed from: r */
        public String[] f116477r = null;

        /* renamed from: s */
        public ICrashCallback f116478s = null;

        /* renamed from: t */
        public boolean f116479t = true;

        /* renamed from: u */
        public boolean f116480u = true;

        /* renamed from: v */
        public int f116481v = 10;

        /* renamed from: w */
        public int f116482w = 50;

        /* renamed from: x */
        public int f116483x = 50;

        /* renamed from: y */
        public int f116484y = 200;

        /* renamed from: z */
        public boolean f116485z = true;

        /* renamed from: A */
        public boolean f116442A = true;

        /* renamed from: B */
        public boolean f116443B = true;

        /* renamed from: C */
        public boolean f116444C = true;

        /* renamed from: D */
        public boolean f116445D = true;

        /* renamed from: E */
        public int f116446E = 0;

        /* renamed from: F */
        public String[] f116447F = null;

        /* renamed from: G */
        public ICrashCallback f116448G = null;

        /* renamed from: H */
        public boolean f116449H = true;

        /* renamed from: I */
        public boolean f116450I = true;

        /* renamed from: J */
        public boolean f116451J = true;

        /* renamed from: K */
        public int f116452K = 10;

        /* renamed from: L */
        public int f116453L = 50;

        /* renamed from: M */
        public int f116454M = 50;

        /* renamed from: N */
        public int f116455N = 200;

        /* renamed from: O */
        public boolean f116456O = true;

        /* renamed from: P */
        public boolean f116457P = true;

        /* renamed from: Q */
        public ICrashCallback f116458Q = null;

        /* renamed from: R */
        public ICrashCallback f116459R = null;

        public InitParameters disableAnrCrashHandler() {
            this.f116449H = false;
            return this;
        }

        public InitParameters disableJavaCrashHandler() {
            this.f116467h = false;
            return this;
        }

        public InitParameters disableNativeCrashHandler() {
            this.f116479t = false;
            return this;
        }

        public InitParameters enableAnrCrashHandler() {
            this.f116449H = true;
            return this;
        }

        public InitParameters enableJavaCrashHandler() {
            this.f116467h = true;
            return this;
        }

        public InitParameters enableNativeCrashHandler() {
            this.f116479t = true;
            return this;
        }

        public InitParameters setAnrCallback(ICrashCallback iCrashCallback) {
            this.f116458Q = iCrashCallback;
            return this;
        }

        public InitParameters setAnrCheckProcessState(boolean z) {
            this.f116451J = z;
            return this;
        }

        public InitParameters setAnrDumpFds(boolean z) {
            this.f116456O = z;
            return this;
        }

        public InitParameters setAnrDumpNetwork(boolean z) {
            this.f116457P = z;
            return this;
        }

        public InitParameters setAnrFastCallback(ICrashCallback iCrashCallback) {
            this.f116459R = iCrashCallback;
            return this;
        }

        public InitParameters setAnrLogCountMax(int i) {
            if (i < 1) {
                i = 1;
            }
            this.f116452K = i;
            return this;
        }

        public InitParameters setAnrLogcatEventsLines(int i) {
            this.f116454M = i;
            return this;
        }

        public InitParameters setAnrLogcatMainLines(int i) {
            this.f116455N = i;
            return this;
        }

        public InitParameters setAnrLogcatSystemLines(int i) {
            this.f116453L = i;
            return this;
        }

        public InitParameters setAnrRethrow(boolean z) {
            this.f116450I = z;
            return this;
        }

        public InitParameters setAppVersion(String str) {
            this.f116460a = str;
            return this;
        }

        public InitParameters setJavaCallback(ICrashCallback iCrashCallback) {
            this.f116478s = iCrashCallback;
            return this;
        }

        public InitParameters setJavaDumpAllThreads(boolean z) {
            this.f116475p = z;
            return this;
        }

        public InitParameters setJavaDumpAllThreadsCountMax(int i) {
            if (i < 0) {
                i = 0;
            }
            this.f116476q = i;
            return this;
        }

        public InitParameters setJavaDumpAllThreadsWhiteList(String[] strArr) {
            this.f116477r = strArr;
            return this;
        }

        public InitParameters setJavaDumpFds(boolean z) {
            this.f116473n = z;
            return this;
        }

        public InitParameters setJavaDumpNetworkInfo(boolean z) {
            this.f116474o = z;
            return this;
        }

        public InitParameters setJavaLogCountMax(int i) {
            if (i < 1) {
                i = 1;
            }
            this.f116469j = i;
            return this;
        }

        public InitParameters setJavaLogcatEventsLines(int i) {
            this.f116471l = i;
            return this;
        }

        public InitParameters setJavaLogcatMainLines(int i) {
            this.f116472m = i;
            return this;
        }

        public InitParameters setJavaLogcatSystemLines(int i) {
            this.f116470k = i;
            return this;
        }

        public InitParameters setJavaRethrow(boolean z) {
            this.f116468i = z;
            return this;
        }

        public InitParameters setLibLoader(ILibLoader iLibLoader) {
            this.f116464e = iLibLoader;
            return this;
        }

        public InitParameters setLogDir(String str) {
            this.f116461b = str;
            return this;
        }

        public InitParameters setLogFileMaintainDelayMs(int i) {
            if (i < 0) {
                i = 0;
            }
            this.f116462c = i;
            return this;
        }

        public InitParameters setLogger(ILogger iLogger) {
            this.f116463d = iLogger;
            return this;
        }

        public InitParameters setNativeCallback(ICrashCallback iCrashCallback) {
            this.f116448G = iCrashCallback;
            return this;
        }

        public InitParameters setNativeDumpAllThreads(boolean z) {
            this.f116445D = z;
            return this;
        }

        public InitParameters setNativeDumpAllThreadsCountMax(int i) {
            if (i < 0) {
                i = 0;
            }
            this.f116446E = i;
            return this;
        }

        public InitParameters setNativeDumpAllThreadsWhiteList(String[] strArr) {
            this.f116447F = strArr;
            return this;
        }

        public InitParameters setNativeDumpElfHash(boolean z) {
            this.f116485z = z;
            return this;
        }

        public InitParameters setNativeDumpFds(boolean z) {
            this.f116443B = z;
            return this;
        }

        public InitParameters setNativeDumpMap(boolean z) {
            this.f116442A = z;
            return this;
        }

        public InitParameters setNativeDumpNetwork(boolean z) {
            this.f116444C = z;
            return this;
        }

        public InitParameters setNativeLogCountMax(int i) {
            if (i < 1) {
                i = 1;
            }
            this.f116481v = i;
            return this;
        }

        public InitParameters setNativeLogcatEventsLines(int i) {
            this.f116483x = i;
            return this;
        }

        public InitParameters setNativeLogcatMainLines(int i) {
            this.f116484y = i;
            return this;
        }

        public InitParameters setNativeLogcatSystemLines(int i) {
            this.f116482w = i;
            return this;
        }

        public InitParameters setNativeRethrow(boolean z) {
            this.f116480u = z;
            return this;
        }

        public InitParameters setPlaceholderCountMax(int i) {
            if (i < 0) {
                i = 0;
            }
            this.f116465f = i;
            return this;
        }

        public InitParameters setPlaceholderSizeKb(int i) {
            if (i < 0) {
                i = 0;
            }
            this.f116466g = i;
            return this;
        }
    }

    /* renamed from: xcrash.XCrash$a */
    /* loaded from: classes16.dex */
    public class C20565a extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            throw new RuntimeException("test java exception");
        }
    }

    /* renamed from: a */
    public static String m72104a() {
        return f116438b;
    }

    /* renamed from: b */
    public static String m72105b() {
        return f116439c;
    }

    /* renamed from: c */
    public static ILogger m72106c() {
        return f116441e;
    }

    public static String getLogDir() {
        return f116440d;
    }

    public static int init(Context context) {
        return init(context, null);
    }

    public static void testJavaCrash(boolean z) throws RuntimeException {
        if (!z) {
            throw new RuntimeException("test java exception");
        }
        C20565a c20565a = new C20565a();
        c20565a.setName("xcrash_test_java_thread");
        c20565a.start();
    }

    public static void testNativeCrash(boolean z) {
        NativeHandler.m72072a().m72076e(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00d7 A[Catch: all -> 0x0189, TryCatch #0 {, blocks: (B:4:0x0003, B:11:0x000b, B:15:0x0012, B:19:0x001e, B:20:0x0026, B:22:0x002a, B:23:0x002c, B:25:0x0038, B:26:0x003c, B:28:0x0044, B:29:0x004a, B:31:0x005e, B:32:0x0075, B:34:0x0081, B:38:0x00a0, B:40:0x00bd, B:42:0x00c1, B:44:0x00d3, B:46:0x00d7, B:47:0x010b, B:52:0x0180, B:56:0x0117, B:59:0x0150, B:62:0x00c5, B:64:0x00c9, B:65:0x0089, B:67:0x0091, B:69:0x0097, B:71:0x009d), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized int init(android.content.Context r33, xcrash.XCrash.InitParameters r34) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: xcrash.XCrash.init(android.content.Context, xcrash.XCrash$InitParameters):int");
    }
}
