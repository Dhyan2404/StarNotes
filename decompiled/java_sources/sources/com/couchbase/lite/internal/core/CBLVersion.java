package com.couchbase.lite.internal.core;

import android.os.Build;
import androidx.annotation.NonNull;
import com.couchbase.lite.BuildConfig;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.sunia.HTREnginev2.cyi;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class CBLVersion {
    private static final String LIB_INFO_TMPLT = "%s/%s, Commit/%s Core/%s";
    private static final String SYS_INFO_TMPLT = "Java; Android %s; %s";
    private static final String USER_AGENT_TMPLT = "CouchbaseLite/%s (%s) %s";
    private static final String VERSION_INFO_TMPLT = "CouchbaseLite Android v%s@%s (%s at %s) on %s";
    private static final AtomicReference<String> USER_AGENT = new AtomicReference<>();
    private static final AtomicReference<String> VERSION_INFO = new AtomicReference<>();
    private static final AtomicReference<String> LIB_INFO = new AtomicReference<>();
    private static final AtomicReference<String> SYS_INFO = new AtomicReference<>();

    private CBLVersion() {
    }

    @NonNull
    public static String getLibInfo() {
        AtomicReference<String> atomicReference = LIB_INFO;
        String str = atomicReference.get();
        if (str != null) {
            return str;
        }
        String format = String.format(Locale.ENGLISH, LIB_INFO_TMPLT, "EE", "release", "89a453d45e@4ac2f0bdc377", C2183C4.getVersion());
        cyi.m53538a(atomicReference, null, format);
        return format;
    }

    @NonNull
    public static String getSysInfo() {
        AtomicReference<String> atomicReference = SYS_INFO;
        String str = atomicReference.get();
        if (str != null) {
            return str;
        }
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.MODEL;
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[2];
        if (str2.length() <= 0) {
            str2 = "unknown";
        }
        objArr[0] = str2;
        if (str3.length() <= 0) {
            str3 = "unknown";
        }
        objArr[1] = str3;
        String format = String.format(locale, SYS_INFO_TMPLT, objArr);
        cyi.m53538a(atomicReference, null, format);
        return format;
    }

    @NonNull
    public static String getUserAgent() {
        AtomicReference<String> atomicReference = USER_AGENT;
        String str = atomicReference.get();
        if (str != null) {
            return str;
        }
        String format = String.format(Locale.ENGLISH, USER_AGENT_TMPLT, "3.2.2-21", getSysInfo(), getLibInfo());
        cyi.m53538a(atomicReference, null, format);
        return format;
    }

    @NonNull
    public static String getVersionInfo() {
        AtomicReference<String> atomicReference = VERSION_INFO;
        String str = atomicReference.get();
        if (str != null) {
            return str;
        }
        String format = String.format(Locale.ENGLISH, VERSION_INFO_TMPLT, "3.2.2-21", Integer.valueOf(CouchbaseLiteInternal.getContext().getApplicationInfo().targetSdkVersion), getLibInfo(), BuildConfig.BUILD_TIME, getSysInfo());
        cyi.m53538a(atomicReference, null, format);
        return format;
    }
}
