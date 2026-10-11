package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ConcurrentHashMap;

@KeepForSdk
@Deprecated
/* loaded from: classes5.dex */
public class LibraryVersion {

    /* renamed from: b */
    public static final GmsLogger f29361b = new GmsLogger("LibraryVersion", "");

    /* renamed from: c */
    public static final LibraryVersion f29362c = new LibraryVersion();

    /* renamed from: a */
    public final ConcurrentHashMap f29363a = new ConcurrentHashMap();

    @VisibleForTesting
    public LibraryVersion() {
    }

    @NonNull
    @KeepForSdk
    public static LibraryVersion getInstance() {
        return f29362c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0094  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @androidx.annotation.NonNull
    @com.google.android.gms.common.annotation.KeepForSdk
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getVersion(@androidx.annotation.NonNull java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "Failed to get app version for libraryName: "
            java.lang.String r1 = "LibraryVersion"
            java.lang.String r2 = "Please provide a valid libraryName"
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9, r2)
            java.util.concurrent.ConcurrentHashMap r2 = r8.f29363a
            boolean r2 = r2.containsKey(r9)
            if (r2 == 0) goto L1a
            java.util.concurrent.ConcurrentHashMap r8 = r8.f29363a
            java.lang.Object r8 = r8.get(r9)
            java.lang.String r8 = (java.lang.String) r8
            return r8
        L1a:
            java.util.Properties r2 = new java.util.Properties
            r2.<init>()
            r3 = 0
            java.lang.String r4 = "/%s.properties"
            java.lang.Object[] r5 = new java.lang.Object[]{r9}     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74
            java.lang.String r4 = java.lang.String.format(r4, r5)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74
            java.lang.Class<com.google.android.gms.common.internal.LibraryVersion> r5 = com.google.android.gms.common.internal.LibraryVersion.class
            java.io.InputStream r4 = r5.getResourceAsStream(r4)     // Catch: java.lang.Throwable -> L72 java.io.IOException -> L74
            if (r4 == 0) goto L55
            r2.load(r4)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.lang.String r5 = "version"
            java.lang.String r3 = r2.getProperty(r5, r3)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            com.google.android.gms.common.internal.GmsLogger r2 = com.google.android.gms.common.internal.LibraryVersion.f29361b     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r5.<init>()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r5.append(r9)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.lang.String r6 = " version is "
            r5.append(r6)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r5.append(r3)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r2.m22163v(r1, r5)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            goto L8d
        L55:
            com.google.android.gms.common.internal.GmsLogger r2 = com.google.android.gms.common.internal.LibraryVersion.f29361b     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r5.<init>()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r5.append(r0)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r5.append(r9)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            r2.m22165w(r1, r5)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            goto L8d
        L6a:
            r8 = move-exception
            r3 = r4
            goto La3
        L6d:
            r2 = move-exception
            r7 = r4
            r4 = r3
            r3 = r7
            goto L76
        L72:
            r8 = move-exception
            goto La3
        L74:
            r2 = move-exception
            r4 = r3
        L76:
            com.google.android.gms.common.internal.GmsLogger r5 = com.google.android.gms.common.internal.LibraryVersion.f29361b     // Catch: java.lang.Throwable -> L72
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72
            r6.<init>()     // Catch: java.lang.Throwable -> L72
            r6.append(r0)     // Catch: java.lang.Throwable -> L72
            r6.append(r9)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> L72
            r5.m22160e(r1, r0, r2)     // Catch: java.lang.Throwable -> L72
            r7 = r4
            r4 = r3
            r3 = r7
        L8d:
            if (r4 == 0) goto L92
            com.google.android.gms.common.util.IOUtils.closeQuietly(r4)
        L92:
            if (r3 != 0) goto L9d
            com.google.android.gms.common.internal.GmsLogger r0 = com.google.android.gms.common.internal.LibraryVersion.f29361b
            java.lang.String r2 = ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"
            r0.m22157d(r1, r2)
            java.lang.String r3 = "UNKNOWN"
        L9d:
            java.util.concurrent.ConcurrentHashMap r8 = r8.f29363a
            r8.put(r9, r3)
            return r3
        La3:
            if (r3 == 0) goto La8
            com.google.android.gms.common.util.IOUtils.closeQuietly(r3)
        La8:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.LibraryVersion.getVersion(java.lang.String):java.lang.String");
    }
}
