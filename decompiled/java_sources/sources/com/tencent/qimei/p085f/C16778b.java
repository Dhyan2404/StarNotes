package com.tencent.qimei.p085f;

import com.tencent.qimei.p093n.C16806a;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* renamed from: com.tencent.qimei.f.b */
/* loaded from: classes10.dex */
public class C16778b {

    /* renamed from: a */
    public RandomAccessFile f93479a;

    /* renamed from: b */
    public FileChannel f93480b;

    /* renamed from: c */
    public FileLock f93481c;

    /* renamed from: a */
    public final void m59931a() {
        try {
            FileLock fileLock = this.f93481c;
            if (fileLock != null) {
                fileLock.release();
            }
            FileChannel fileChannel = this.f93480b;
            if (fileChannel != null) {
                fileChannel.close();
            }
            RandomAccessFile randomAccessFile = this.f93479a;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        } catch (IOException e) {
            C16806a.m59992a(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m59932a(java.lang.String r12, com.tencent.qimei.p085f.InterfaceC16777a r13, int r14) {
        /*
            r11 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L9
            goto L32
        L9:
            java.lang.String r0 = com.tencent.qimei.p084e.C16773a.m59899a(r12)
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            java.io.File r0 = r3.getParentFile()
            if (r0 == 0) goto L32
            boolean r4 = r0.exists()
            if (r4 != 0) goto L21
            r0.mkdir()
        L21:
            boolean r0 = r3.exists()
            if (r0 != 0) goto L30
            r3.createNewFile()     // Catch: java.io.IOException -> L2b
            goto L30
        L2b:
            r0 = move-exception
            com.tencent.qimei.p093n.C16806a.m59992a(r0)
            goto L32
        L30:
            r0 = r1
            goto L33
        L32:
            r0 = r2
        L33:
            if (r0 != 0) goto L36
            return r2
        L36:
            java.lang.String r12 = com.tencent.qimei.p084e.C16773a.m59899a(r12)
            r0 = 2
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            java.lang.String r4 = "rw"
            r3.<init>(r12, r4)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r11.f93479a = r3     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            java.nio.channels.FileChannel r5 = r3.getChannel()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            r11.f93480b = r5     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r5 == 0) goto L6b
            if (r14 != r1) goto L53
            java.nio.channels.FileLock r12 = r5.tryLock()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            goto L69
        L53:
            if (r14 != r0) goto L62
            r6 = 0
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 1
            java.nio.channels.FileLock r12 = r5.lock(r6, r8, r10)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            goto L69
        L62:
            r12 = 3
            if (r14 != r12) goto L6b
            java.nio.channels.FileLock r12 = r5.lock()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
        L69:
            r11.f93481c = r12     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
        L6b:
            java.nio.channels.FileLock r12 = r11.f93481c     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            if (r12 == 0) goto L75
            if (r13 == 0) goto L75
            r13.mo59930a()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7d
            goto L76
        L75:
            r1 = r2
        L76:
            r11.m59931a()
            r2 = r1
            goto L96
        L7b:
            r12 = move-exception
            goto L97
        L7d:
            r12 = move-exception
            java.lang.String r13 = "lock"
            java.lang.String r3 = "except %d, %s"
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L7b
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)     // Catch: java.lang.Throwable -> L7b
            r0[r2] = r14     // Catch: java.lang.Throwable -> L7b
            java.lang.String r12 = r12.getMessage()     // Catch: java.lang.Throwable -> L7b
            r0[r1] = r12     // Catch: java.lang.Throwable -> L7b
            com.tencent.qimei.p093n.C16806a.m59995b(r13, r3, r0)     // Catch: java.lang.Throwable -> L7b
            r11.m59931a()
        L96:
            return r2
        L97:
            r11.m59931a()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p085f.C16778b.m59932a(java.lang.String, com.tencent.qimei.f.a, int):boolean");
    }
}
