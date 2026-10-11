package org.apache.http.util;

import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes12.dex */
public class VersionInfo {
    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";

    /* renamed from: a */
    public final String f111165a;

    /* renamed from: b */
    public final String f111166b;

    /* renamed from: c */
    public final String f111167c;

    /* renamed from: d */
    public final String f111168d;

    /* renamed from: e */
    public final String f111169e;

    public VersionInfo(String str, String str2, String str3, String str4, String str5) {
        Args.notNull(str, "Package identifier");
        this.f111165a = str;
        this.f111166b = str2 == null ? UNAVAILABLE : str2;
        this.f111167c = str3 == null ? UNAVAILABLE : str3;
        this.f111168d = str4 == null ? UNAVAILABLE : str4;
        this.f111169e = str5 == null ? UNAVAILABLE : str5;
    }

    public static VersionInfo fromMap(String str, Map<?, ?> map, ClassLoader classLoader) {
        String str2;
        String str3;
        String str4;
        Args.notNull(str, "Package identifier");
        if (map != null) {
            String str5 = (String) map.get(PROPERTY_MODULE);
            if (str5 != null && str5.length() < 1) {
                str5 = null;
            }
            String str6 = (String) map.get(PROPERTY_RELEASE);
            if (str6 != null && (str6.length() < 1 || str6.equals("${pom.version}"))) {
                str6 = null;
            }
            String str7 = (String) map.get(PROPERTY_TIMESTAMP);
            str4 = (str7 == null || (str7.length() >= 1 && !str7.equals("${mvn.timestamp}"))) ? str7 : null;
            str2 = str5;
            str3 = str6;
        } else {
            str2 = null;
            str3 = null;
            str4 = null;
        }
        return new VersionInfo(str, str2, str3, str4, classLoader != null ? classLoader.toString() : null);
    }

    public static String getUserAgent(String str, String str2, Class<?> cls) {
        VersionInfo loadVersionInfo = loadVersionInfo(str2, cls.getClassLoader());
        return String.format("%s/%s (Java/%s)", str, loadVersionInfo != null ? loadVersionInfo.getRelease() : UNAVAILABLE, System.getProperty("java.version"));
    }

    public static VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        Args.notNull(strArr, "Package identifier array");
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            VersionInfo loadVersionInfo = loadVersionInfo(str, classLoader);
            if (loadVersionInfo != null) {
                arrayList.add(loadVersionInfo);
            }
        }
        return (VersionInfo[]) arrayList.toArray(new VersionInfo[arrayList.size()]);
    }

    public final String getClassloader() {
        return this.f111169e;
    }

    public final String getModule() {
        return this.f111166b;
    }

    public final String getPackage() {
        return this.f111165a;
    }

    public final String getRelease() {
        return this.f111167c;
    }

    public final String getTimestamp() {
        return this.f111168d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f111165a.length() + 20 + this.f111166b.length() + this.f111167c.length() + this.f111168d.length() + this.f111169e.length());
        sb.append("VersionInfo(");
        sb.append(this.f111165a);
        sb.append(':');
        sb.append(this.f111166b);
        if (!UNAVAILABLE.equals(this.f111167c)) {
            sb.append(':');
            sb.append(this.f111167c);
        }
        if (!UNAVAILABLE.equals(this.f111168d)) {
            sb.append(':');
            sb.append(this.f111168d);
        }
        sb.append(')');
        if (!UNAVAILABLE.equals(this.f111169e)) {
            sb.append('@');
            sb.append(this.f111169e);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.http.util.VersionInfo loadVersionInfo(java.lang.String r4, java.lang.ClassLoader r5) {
        /*
            java.lang.String r0 = "Package identifier"
            org.apache.http.util.Args.notNull(r4, r0)
            if (r5 == 0) goto L8
            goto L10
        L8:
            java.lang.Thread r5 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r5 = r5.getContextClassLoader()
        L10:
            r0 = 0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L46
            r1.<init>()     // Catch: java.io.IOException -> L46
            r2 = 46
            r3 = 47
            java.lang.String r2 = r4.replace(r2, r3)     // Catch: java.io.IOException -> L46
            r1.append(r2)     // Catch: java.io.IOException -> L46
            java.lang.String r2 = "/"
            r1.append(r2)     // Catch: java.io.IOException -> L46
            java.lang.String r2 = "version.properties"
            r1.append(r2)     // Catch: java.io.IOException -> L46
            java.lang.String r1 = r1.toString()     // Catch: java.io.IOException -> L46
            java.io.InputStream r1 = r5.getResourceAsStream(r1)     // Catch: java.io.IOException -> L46
            if (r1 == 0) goto L46
            java.util.Properties r2 = new java.util.Properties     // Catch: java.lang.Throwable -> L41
            r2.<init>()     // Catch: java.lang.Throwable -> L41
            r2.load(r1)     // Catch: java.lang.Throwable -> L41
            r1.close()     // Catch: java.io.IOException -> L47
            goto L47
        L41:
            r2 = move-exception
            r1.close()     // Catch: java.io.IOException -> L46
            throw r2     // Catch: java.io.IOException -> L46
        L46:
            r2 = r0
        L47:
            if (r2 == 0) goto L4d
            org.apache.http.util.VersionInfo r0 = fromMap(r4, r2, r5)
        L4d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.util.VersionInfo.loadVersionInfo(java.lang.String, java.lang.ClassLoader):org.apache.http.util.VersionInfo");
    }
}
