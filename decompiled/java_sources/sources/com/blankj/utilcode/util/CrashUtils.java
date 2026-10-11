package com.blankj.utilcode.util;

import androidx.annotation.NonNull;
import com.blankj.utilcode.util.C1887b;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import java.io.File;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/* loaded from: classes3.dex */
public final class CrashUtils {

    /* renamed from: a */
    public static final String f13731a = System.getProperty("file.separator");

    /* renamed from: b */
    public static final Thread.UncaughtExceptionHandler f13732b = Thread.getDefaultUncaughtExceptionHandler();

    /* loaded from: classes3.dex */
    public static final class CrashInfo {

        /* renamed from: a */
        public C1887b.a f13733a;

        /* renamed from: b */
        public Throwable f13734b;

        public /* synthetic */ CrashInfo(String str, Throwable th, C1811a c1811a) {
            this(str, th);
        }

        public final void addExtraHead(Map<String, String> map) {
            this.f13733a.m8547c(map);
        }

        public final Throwable getThrowable() {
            return this.f13734b;
        }

        public String toString() {
            return this.f13733a.toString() + C1887b.m8469T(this.f13734b);
        }

        public CrashInfo(String str, Throwable th) {
            this.f13734b = th;
            C1887b.a aVar = new C1887b.a("Crash");
            this.f13733a = aVar;
            aVar.m8545a("Time Of Crash", str);
        }

        public final void addExtraHead(String str, String str2) {
            this.f13733a.m8546b(str, str2);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnCrashListener {
        void onCrash(CrashInfo crashInfo);
    }

    /* renamed from: com.blankj.utilcode.util.CrashUtils$a */
    /* loaded from: classes3.dex */
    public static class C1811a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        public final /* synthetic */ String f13735a;

        /* renamed from: b */
        public final /* synthetic */ OnCrashListener f13736b;

        public C1811a(String str, OnCrashListener onCrashListener) {
            this.f13735a = str;
            this.f13736b = onCrashListener;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            String format = new SimpleDateFormat("yyyy_MM_dd-HH_mm_ss").format(new Date());
            CrashInfo crashInfo = new CrashInfo(format, th, null);
            C1887b.m8512j1(this.f13735a + format + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION, crashInfo.toString(), true);
            if (CrashUtils.f13732b != null) {
                CrashUtils.f13732b.uncaughtException(thread, th);
            }
            OnCrashListener onCrashListener = this.f13736b;
            if (onCrashListener != null) {
                onCrashListener.onCrash(crashInfo);
            }
        }
    }

    public CrashUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: b */
    public static Thread.UncaughtExceptionHandler m8057b(String str, OnCrashListener onCrashListener) {
        return new C1811a(str, onCrashListener);
    }

    public static void init() {
        init("");
    }

    public static void init(@NonNull File file) {
        init(file.getAbsolutePath(), (OnCrashListener) null);
    }

    public static void init(String str) {
        init(str, (OnCrashListener) null);
    }

    public static void init(OnCrashListener onCrashListener) {
        init("", onCrashListener);
    }

    public static void init(@NonNull File file, OnCrashListener onCrashListener) {
        init(file.getAbsolutePath(), onCrashListener);
    }

    public static void init(String str, OnCrashListener onCrashListener) {
        if (C1887b.m8438D0(str)) {
            if (C1887b.m8432A0() && Utils.getApp().getExternalFilesDir(null) != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(Utils.getApp().getExternalFilesDir(null));
                String str2 = f13731a;
                sb.append(str2);
                sb.append("crash");
                sb.append(str2);
                str = sb.toString();
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Utils.getApp().getFilesDir());
                String str3 = f13731a;
                sb2.append(str3);
                sb2.append("crash");
                sb2.append(str3);
                str = sb2.toString();
            }
        } else {
            String str4 = f13731a;
            if (!str.endsWith(str4)) {
                str = str + str4;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(m8057b(str, onCrashListener));
    }
}
