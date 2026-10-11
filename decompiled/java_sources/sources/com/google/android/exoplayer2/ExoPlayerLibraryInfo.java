package com.google.android.exoplayer2;

import java.util.HashSet;

/* loaded from: classes5.dex */
public final class ExoPlayerLibraryInfo {
    public static final boolean ASSERTIONS_ENABLED = true;
    public static final String TAG = "ExoPlayerLib";
    public static final boolean TRACE_ENABLED = true;
    public static final String VERSION = "2.17.1";
    public static final int VERSION_INT = 2017001;
    public static final String VERSION_SLASHY = "ExoPlayerLib/2.17.1";

    /* renamed from: a */
    public static final HashSet<String> f22414a = new HashSet<>();

    /* renamed from: b */
    public static String f22415b = "goog.exo.core";

    public static synchronized void registerModule(String str) {
        synchronized (ExoPlayerLibraryInfo.class) {
            if (f22414a.add(str)) {
                String str2 = f22415b;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str).length());
                sb.append(str2);
                sb.append(", ");
                sb.append(str);
                f22415b = sb.toString();
            }
        }
    }

    public static synchronized String registeredModules() {
        String str;
        synchronized (ExoPlayerLibraryInfo.class) {
            str = f22415b;
        }
        return str;
    }
}
