package com.tencent.qimei.p091l;

/* renamed from: com.tencent.qimei.l.e */
/* loaded from: classes10.dex */
public class RunnableC16797e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Runnable f93524a;

    /* renamed from: b */
    public final /* synthetic */ C16798f f93525b;

    public RunnableC16797e(C16798f c16798f, Runnable runnable) {
        this.f93525b = c16798f;
        this.f93524a = runnable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        r1.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x001b, code lost:
    
        if (r1 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        if (r1 != null) goto L29;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r3 = this;
            com.tencent.qimei.l.f r0 = r3.f93525b
            monitor-enter(r0)
            r1 = 0
            com.tencent.qimei.l.f r2 = r3.f93525b     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L16
            java.nio.channels.FileChannel r2 = r2.f93527b     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L16
            java.nio.channels.FileLock r1 = r2.lock()     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L16
            java.lang.Runnable r3 = r3.f93524a     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L16
            r3.run()     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L16
            if (r1 == 0) goto L20
            goto L1d
        L14:
            r3 = move-exception
            goto L18
        L16:
            r3 = move-exception
            goto L22
        L18:
            r3.getMessage()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L20
        L1d:
            r1.release()     // Catch: java.io.IOException -> L20 java.lang.Throwable -> L28
        L20:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L28
            return
        L22:
            if (r1 == 0) goto L27
            r1.release()     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L28
        L27:
            throw r3     // Catch: java.lang.Throwable -> L28
        L28:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L28
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p091l.RunnableC16797e.run():void");
    }
}
