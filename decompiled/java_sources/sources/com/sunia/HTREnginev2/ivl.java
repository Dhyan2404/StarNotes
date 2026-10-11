package com.sunia.HTREnginev2;

import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class ivl {

    /* renamed from: a */
    public static final String f73631a = "GlideRuntimeCompat";

    /* renamed from: b */
    public static final String f73632b = "cpu[0-9]+";

    /* renamed from: c */
    public static final String f73633c = "/sys/devices/system/cpu/";

    /* renamed from: com.sunia.HTREnginev2.ivl$a */
    /* loaded from: classes3.dex */
    public class C13893a implements FilenameFilter {

        /* renamed from: e */
        public final /* synthetic */ Pattern f73634e;

        public C13893a(Pattern pattern) {
            this.f73634e = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f73634e.matcher(str).matches();
        }
    }

    /* renamed from: a */
    public static int m54802a() {
        return Runtime.getRuntime().availableProcessors();
    }

    /* renamed from: b */
    public static int m54803b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            fileArr = new File(f73633c).listFiles(new C13893a(Pattern.compile(f73632b)));
        } catch (Throwable th) {
            try {
                if (Log.isLoggable(f73631a, 6)) {
                    Log.e(f73631a, "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
