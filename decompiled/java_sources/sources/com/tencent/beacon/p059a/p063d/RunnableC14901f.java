package com.tencent.beacon.p059a.p063d;

/* renamed from: com.tencent.beacon.a.d.f */
/* loaded from: classes10.dex */
public class RunnableC14901f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f92647a;

    /* renamed from: b */
    final /* synthetic */ C14902g f92648b;

    public RunnableC14901f(C14902g c14902g, Runnable runnable) {
        this.f92648b = c14902g;
        this.f92647a = runnable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
    
        r1.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0045, code lost:
    
        if (r1 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r1 != null) goto L30;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r6 = this;
            com.tencent.beacon.a.d.g r0 = r6.f92648b
            monitor-enter(r0)
            r1 = 0
            com.tencent.beacon.a.d.g r2 = r6.f92648b     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L18
            java.nio.channels.FileChannel r2 = com.tencent.beacon.p059a.p063d.C14902g.m59105e(r2)     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L18
            java.nio.channels.FileLock r1 = r2.lock()     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L18
            java.lang.Runnable r6 = r6.f92647a     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L18
            r6.run()     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L18
            if (r1 == 0) goto L4a
            goto L47
        L16:
            r6 = move-exception
            goto L1a
        L18:
            r6 = move-exception
            goto L4c
        L1a:
            java.lang.String r2 = "[properties]"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L18
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L18
            r4.<init>()     // Catch: java.lang.Throwable -> L18
            java.lang.String r5 = "file get lock error:"
            r4.append(r5)     // Catch: java.lang.Throwable -> L18
            java.lang.String r5 = r6.getMessage()     // Catch: java.lang.Throwable -> L18
            r4.append(r5)     // Catch: java.lang.Throwable -> L18
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L18
            r5 = 0
            r3[r5] = r4     // Catch: java.lang.Throwable -> L18
            com.tencent.beacon.base.util.C14954c.m59395b(r2, r3)     // Catch: java.lang.Throwable -> L18
            com.tencent.beacon.a.b.j r2 = com.tencent.beacon.p059a.p061b.C14882j.m58961e()     // Catch: java.lang.Throwable -> L18
            java.lang.String r3 = "504"
            java.lang.String r4 = "[properties] File get lock error!"
            r2.m58954a(r3, r4, r6)     // Catch: java.lang.Throwable -> L18
            if (r1 == 0) goto L4a
        L47:
            r1.release()     // Catch: java.io.IOException -> L4a java.lang.Throwable -> L52
        L4a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            return
        L4c:
            if (r1 == 0) goto L51
            r1.release()     // Catch: java.io.IOException -> L51 java.lang.Throwable -> L52
        L51:
            throw r6     // Catch: java.lang.Throwable -> L52
        L52:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.p059a.p063d.RunnableC14901f.run():void");
    }
}
