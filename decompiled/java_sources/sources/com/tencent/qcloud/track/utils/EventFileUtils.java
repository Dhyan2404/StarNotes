package com.tencent.qcloud.track.utils;

import android.content.Context;
import com.tencent.qcloud.track.Constants;
import java.io.File;

/* loaded from: classes10.dex */
public class EventFileUtils {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.OutputStreamWriter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void appendEventToFile(android.content.Context r8, java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.track.utils.EventFileUtils.appendEventToFile(android.content.Context, java.lang.String, java.util.Map):void");
    }

    public static boolean eventFileExists(Context context) {
        if (context == null) {
            return false;
        }
        return new File(context.getExternalCacheDir() + File.separator + Constants.BEACON_EVENT_CACHE_FILE_NAME).exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void readEventFromFile(android.content.Context r10, java.util.List<java.lang.String> r11, java.util.List<java.util.Map<java.lang.String, java.lang.String>> r12) {
        /*
            java.lang.String r0 = ": "
            java.lang.String r1 = "Error closing BufferedReader"
            java.lang.String r2 = "Error deleting file"
            java.lang.String r3 = "FileUtils"
            if (r10 != 0) goto Lb
            return
        Lb:
            java.io.File r4 = new java.io.File
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.io.File r10 = r10.getExternalCacheDir()
            r5.append(r10)
            java.lang.String r10 = java.io.File.separator
            r5.append(r10)
            java.lang.String r10 = com.tencent.qcloud.track.Constants.BEACON_EVENT_CACHE_FILE_NAME
            r5.append(r10)
            java.lang.String r10 = r5.toString()
            r4.<init>(r10)
            r10 = 0
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L9f java.io.IOException -> La3
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L9f java.io.IOException -> La3
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L9f java.io.IOException -> La3
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L9f java.io.IOException -> La3
            r7.<init>(r5)     // Catch: java.lang.Throwable -> L9f java.io.IOException -> La3
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L9f java.io.IOException -> La3
            java.util.HashMap r10 = new java.util.HashMap     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r10.<init>()     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            java.lang.String r5 = ""
        L41:
            java.lang.String r7 = r6.readLine()     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            if (r7 == 0) goto L7c
            java.lang.String r8 = "Event code: "
            boolean r8 = r7.startsWith(r8)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            if (r8 == 0) goto L67
            boolean r8 = r5.isEmpty()     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            if (r8 != 0) goto L60
            r11.add(r5)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r12.add(r10)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            java.util.HashMap r10 = new java.util.HashMap     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r10.<init>()     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
        L60:
            r5 = 12
            java.lang.String r5 = r7.substring(r5)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            goto L41
        L67:
            boolean r8 = r7.contains(r0)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            if (r8 == 0) goto L41
            r8 = 2
            java.lang.String[] r7 = r7.split(r0, r8)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r8 = 0
            r8 = r7[r8]     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r9 = 1
            r7 = r7[r9]     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r10.put(r8, r7)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            goto L41
        L7c:
            boolean r0 = r5.isEmpty()     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            if (r0 != 0) goto L88
            r11.add(r5)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
            r12.add(r10)     // Catch: java.io.IOException -> L9d java.lang.Throwable -> Lc5
        L88:
            r6.close()     // Catch: java.io.IOException -> L8c
            goto L90
        L8c:
            r10 = move-exception
            android.util.Log.e(r3, r1, r10)
        L90:
            boolean r10 = r4.exists()
            if (r10 == 0) goto Lc4
            boolean r10 = r4.delete()
            if (r10 != 0) goto Lc4
            goto Lc1
        L9d:
            r10 = move-exception
            goto La6
        L9f:
            r11 = move-exception
            r6 = r10
            r10 = r11
            goto Lc6
        La3:
            r11 = move-exception
            r6 = r10
            r10 = r11
        La6:
            java.lang.String r11 = "Error reading event from file"
            android.util.Log.e(r3, r11, r10)     // Catch: java.lang.Throwable -> Lc5
            if (r6 == 0) goto Lb5
            r6.close()     // Catch: java.io.IOException -> Lb1
            goto Lb5
        Lb1:
            r10 = move-exception
            android.util.Log.e(r3, r1, r10)
        Lb5:
            boolean r10 = r4.exists()
            if (r10 == 0) goto Lc4
            boolean r10 = r4.delete()
            if (r10 != 0) goto Lc4
        Lc1:
            android.util.Log.e(r3, r2)
        Lc4:
            return
        Lc5:
            r10 = move-exception
        Lc6:
            if (r6 == 0) goto Ld0
            r6.close()     // Catch: java.io.IOException -> Lcc
            goto Ld0
        Lcc:
            r11 = move-exception
            android.util.Log.e(r3, r1, r11)
        Ld0:
            boolean r11 = r4.exists()
            if (r11 == 0) goto Ldf
            boolean r11 = r4.delete()
            if (r11 != 0) goto Ldf
            android.util.Log.e(r3, r2)
        Ldf:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.track.utils.EventFileUtils.readEventFromFile(android.content.Context, java.util.List, java.util.List):void");
    }
}
