package com.tencent.qimei.p092m;

/* renamed from: com.tencent.qimei.m.c */
/* loaded from: classes10.dex */
public class C16802c {

    /* renamed from: a */
    public static final String f93542a = "c";

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
    
        if (r0 == null) goto L26;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m59979a(java.lang.String r2, java.lang.String r3) {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r2, r3)
            java.lang.String r2 = r0.getAbsolutePath()
            r3 = 0
            byte[] r3 = new byte[r3]
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a java.io.FileNotFoundException -> L31
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a java.io.FileNotFoundException -> L31
            int r2 = r1.available()     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L22 java.io.FileNotFoundException -> L25
            byte[] r3 = new byte[r2]     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L22 java.io.FileNotFoundException -> L25
            r1.read(r3)     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L22 java.io.FileNotFoundException -> L25
            r1.close()     // Catch: java.io.IOException -> L3b
            goto L3f
        L1f:
            r2 = move-exception
            r0 = r1
            goto L45
        L22:
            r2 = move-exception
            r0 = r1
            goto L2b
        L25:
            r2 = move-exception
            r0 = r1
            goto L32
        L28:
            r2 = move-exception
            goto L45
        L2a:
            r2 = move-exception
        L2b:
            com.tencent.qimei.p093n.C16806a.m59992a(r2)     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L3f
            goto L37
        L31:
            r2 = move-exception
        L32:
            com.tencent.qimei.p093n.C16806a.m59992a(r2)     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L3f
        L37:
            r0.close()     // Catch: java.io.IOException -> L3b
            goto L3f
        L3b:
            r2 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r2)
        L3f:
            java.lang.String r2 = new java.lang.String
            r2.<init>(r3)
            return r2
        L45:
            if (r0 == 0) goto L4f
            r0.close()     // Catch: java.io.IOException -> L4b
            goto L4f
        L4b:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
        L4f:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p092m.C16802c.m59979a(java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m59980a(java.lang.String r3, java.lang.String r4, java.lang.String r5) {
        /*
            java.lang.String r0 = "%s write success."
            java.io.File r1 = new java.io.File
            r1.<init>(r3)
            boolean r2 = r1.exists()
            if (r2 != 0) goto L10
            r1.mkdir()
        L10:
            java.io.File r1 = new java.io.File
            r1.<init>(r3, r5)
            boolean r3 = r1.exists()
            if (r3 != 0) goto L23
            r1.createNewFile()     // Catch: java.io.IOException -> L1f
            goto L23
        L1f:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
        L23:
            r3 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f java.io.FileNotFoundException -> L69
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L4f java.io.FileNotFoundException -> L69
            byte[] r3 = r4.getBytes()     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L49 java.io.FileNotFoundException -> L4b
            r2.write(r3)     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L49 java.io.FileNotFoundException -> L4b
            r2.flush()     // Catch: java.lang.Throwable -> L45 java.io.IOException -> L49 java.io.FileNotFoundException -> L4b
            r2.close()     // Catch: java.io.IOException -> L37
            goto L3b
        L37:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
        L3b:
            java.lang.String r3 = com.tencent.qimei.p092m.C16802c.f93542a
            java.lang.Object[] r4 = new java.lang.Object[]{r5}
            com.tencent.qimei.p093n.C16806a.m59995b(r3, r0, r4)
            goto L82
        L45:
            r3 = move-exception
            r4 = r3
            r3 = r2
            goto L83
        L49:
            r3 = move-exception
            goto L52
        L4b:
            r3 = move-exception
            goto L6c
        L4d:
            r4 = move-exception
            goto L83
        L4f:
            r4 = move-exception
            r2 = r3
            r3 = r4
        L52:
            com.tencent.qimei.p093n.C16806a.m59992a(r3)     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto L82
            r2.close()     // Catch: java.io.IOException -> L5b
            goto L5f
        L5b:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
        L5f:
            java.lang.String r3 = com.tencent.qimei.p092m.C16802c.f93542a
            java.lang.Object[] r4 = new java.lang.Object[]{r5}
            com.tencent.qimei.p093n.C16806a.m59995b(r3, r0, r4)
            goto L82
        L69:
            r4 = move-exception
            r2 = r3
            r3 = r4
        L6c:
            com.tencent.qimei.p093n.C16806a.m59992a(r3)     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto L82
            r2.close()     // Catch: java.io.IOException -> L75
            goto L79
        L75:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
        L79:
            java.lang.String r3 = com.tencent.qimei.p092m.C16802c.f93542a
            java.lang.Object[] r4 = new java.lang.Object[]{r5}
            com.tencent.qimei.p093n.C16806a.m59995b(r3, r0, r4)
        L82:
            return
        L83:
            if (r3 == 0) goto L96
            r3.close()     // Catch: java.io.IOException -> L89
            goto L8d
        L89:
            r3 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r3)
        L8d:
            java.lang.String r3 = com.tencent.qimei.p092m.C16802c.f93542a
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            com.tencent.qimei.p093n.C16806a.m59995b(r3, r0, r5)
        L96:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p092m.C16802c.m59980a(java.lang.String, java.lang.String, java.lang.String):void");
    }
}
