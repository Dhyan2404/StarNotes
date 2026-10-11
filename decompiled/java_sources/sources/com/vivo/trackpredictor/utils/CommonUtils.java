package com.vivo.trackpredictor.utils;

/* loaded from: classes10.dex */
public class CommonUtils {
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
    
        if (r1 == null) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void copyAssetResource2File(android.content.Context r6, java.lang.String r7, java.lang.String r8) throws java.io.IOException {
        /*
            android.content.res.AssetManager r6 = r6.getAssets()
            java.io.InputStream r6 = r6.open(r7)
            java.io.File r7 = new java.io.File
            r7.<init>(r8)
            r8 = 1
            r0 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L38
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L38
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L5d
        L18:
            int r2 = r6.read(r0)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L5d
            r3 = -1
            if (r2 == r3) goto L24
            r3 = 0
            r1.write(r0, r3, r2)     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L5d
            goto L18
        L24:
            r1.flush()     // Catch: java.io.IOException -> L31 java.lang.Throwable -> L5d
            r6.close()
        L2a:
            r1.close()
        L2d:
            r7.setReadable(r8)
            goto L5c
        L31:
            r0 = move-exception
            goto L3c
        L33:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L5e
        L38:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L3c:
            java.lang.String r2 = ""
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5d
            r3.<init>()     // Catch: java.lang.Throwable -> L5d
            java.lang.String r4 = "IOException! "
            r3.append(r4)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L5d
            r3.append(r0)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L5d
            android.util.Log.e(r2, r0)     // Catch: java.lang.Throwable -> L5d
            r6.close()
            if (r1 == 0) goto L2d
            goto L2a
        L5c:
            return
        L5d:
            r0 = move-exception
        L5e:
            r6.close()
            if (r1 == 0) goto L66
            r1.close()
        L66:
            r7.setReadable(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vivo.trackpredictor.utils.CommonUtils.copyAssetResource2File(android.content.Context, java.lang.String, java.lang.String):void");
    }
}
