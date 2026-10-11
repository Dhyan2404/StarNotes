package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class amj {

    /* renamed from: d */
    public static final int f64850d = 8192;

    /* renamed from: a */
    public ArrayList<byte[]> f64851a = new ArrayList<>();

    /* renamed from: b */
    public long f64852b = 0;

    /* renamed from: c */
    public long f64853c = 0;

    /* renamed from: a */
    public void m53031a(long j) {
        long j2 = j / 8192;
        long j3 = this.f64852b;
        if (j2 < j3) {
            throw new IndexOutOfBoundsException("pos already disposed");
        }
        long min = Math.min(j2 - j3, this.f64851a.size());
        for (long j4 = 0; j4 < min; j4++) {
            this.f64851a.remove(0);
        }
        this.f64852b = j2;
    }

    /* renamed from: b */
    public final byte[] m53032b(long j) throws IOException {
        long j2 = j - this.f64852b;
        if (j2 <= 2147483647L) {
            return this.f64851a.get((int) j2);
        }
        throw new IOException("Cache addressing limit exceeded!");
    }

    /* renamed from: c */
    public long m53033c() {
        return this.f64853c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0018, code lost:
    
        r0 = null;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m53034d(java.io.InputStream r13, long r14) throws java.io.IOException {
        /*
            r12 = this;
            long r0 = r12.f64853c
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 >= 0) goto L7
            return r14
        L7:
            r2 = 8192(0x2000, double:4.0474E-320)
            long r4 = r0 % r2
            int r4 = (int) r4
            long r5 = r14 - r0
            r7 = 0
            if (r4 == 0) goto L17
            long r0 = r0 / r2
            byte[] r0 = r12.m53032b(r0)
            goto L18
        L17:
            r0 = r7
        L18:
            r1 = 0
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 <= 0) goto L52
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 != 0) goto L2e
            byte[] r0 = new byte[r1]     // Catch: java.lang.OutOfMemoryError -> L26
            r4 = 0
            goto L2e
        L26:
            java.io.IOException r12 = new java.io.IOException
            java.lang.String r13 = "No memory left for cache!"
            r12.<init>(r13)
            throw r12
        L2e:
            int r2 = 8192 - r4
            long r2 = (long) r2
            long r2 = java.lang.Math.min(r5, r2)
            int r2 = (int) r2
            int r2 = r13.read(r0, r4, r2)
            r3 = -1
            if (r2 != r3) goto L40
            long r12 = r12.f64853c
            return r12
        L40:
            if (r4 != 0) goto L47
            java.util.ArrayList<byte[]> r3 = r12.f64851a
            r3.add(r0)
        L47:
            long r8 = (long) r2
            long r5 = r5 - r8
            long r10 = r12.f64853c
            long r10 = r10 + r8
            r12.f64853c = r10
            int r4 = r4 + r2
            if (r4 < r1) goto L18
            goto L17
        L52:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.amj.m53034d(java.io.InputStream, long):long");
    }

    /* renamed from: e */
    public final void m53035e(long j) throws IOException {
        long size = (j / 8192) - ((this.f64852b + this.f64851a.size()) - 1);
        for (long j2 = 0; j2 < size; j2++) {
            try {
                this.f64851a.add(new byte[8192]);
            } catch (OutOfMemoryError unused) {
                throw new IOException("No memory left for cache!");
            }
        }
    }

    /* renamed from: f */
    public int m53036f(long j) throws IOException {
        byte[] m53032b;
        if (j < this.f64853c && (m53032b = m53032b(j / 8192)) != null) {
            return m53032b[(int) (j % 8192)] & 255;
        }
        return -1;
    }

    /* renamed from: g */
    public void m53037g(byte[] bArr, int i, int i2, long j) throws IOException {
        int i3;
        if (bArr == null) {
            throw new NullPointerException("b == null!");
        }
        if (i < 0 || i2 < 0 || j < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 + j > this.f64853c) {
            throw new IndexOutOfBoundsException();
        }
        long j2 = j / 8192;
        int i4 = ((int) j) % 8192;
        while (i2 > 0) {
            int min = Math.min(i2, 8192 - i4);
            System.arraycopy(m53032b(j2), i4, bArr, i, min);
            i2 -= min;
            i += min;
            i4 = 0;
            j2 = 1 + j2;
        }
    }

    /* renamed from: h */
    public void m53038h() {
        this.f64851a.clear();
        this.f64852b = 0L;
        this.f64853c = 0L;
    }

    /* renamed from: i */
    public void m53039i(int i, long j) throws IOException {
        if (j < 0) {
            throw new ArrayIndexOutOfBoundsException("pos < 0");
        }
        if (j >= this.f64853c) {
            m53035e(j);
            this.f64853c = 1 + j;
        }
        m53032b(j / 8192)[(int) (j % 8192)] = (byte) i;
    }

    /* renamed from: j */
    public void m53040j(byte[] bArr, int i, int i2, long j) throws IOException {
        int i3;
        if (bArr == null) {
            throw new NullPointerException("b == null!");
        }
        if (i < 0 || i2 < 0 || j < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        long j2 = (i2 + j) - 1;
        if (j2 >= this.f64853c) {
            m53035e(j2);
            this.f64853c = j2 + 1;
        }
        int i4 = (int) (j % 8192);
        while (i2 > 0) {
            byte[] m53032b = m53032b(j / 8192);
            int min = Math.min(i2, 8192 - i4);
            System.arraycopy(bArr, i, m53032b, i4, min);
            j += min;
            i += min;
            i2 -= min;
            i4 = 0;
        }
    }

    /* renamed from: k */
    public void m53041k(OutputStream outputStream, long j, long j2) throws IOException {
        if (j + j2 > this.f64853c) {
            throw new IndexOutOfBoundsException("Argument out of cache");
        }
        if (j < 0 || j2 < 0) {
            throw new IndexOutOfBoundsException("Negative pos or len");
        }
        if (j2 == 0) {
            return;
        }
        long j3 = j / 8192;
        if (j3 < this.f64852b) {
            throw new IndexOutOfBoundsException("pos already disposed");
        }
        int i = (int) (j % 8192);
        long j4 = j3 + 1;
        byte[] m53032b = m53032b(j3);
        while (j2 > 0) {
            if (m53032b == null) {
                byte[] m53032b2 = m53032b(j4);
                j4++;
                m53032b = m53032b2;
                i = 0;
            }
            int min = (int) Math.min(j2, 8192 - i);
            outputStream.write(m53032b, i, min);
            j2 -= min;
            m53032b = null;
        }
    }
}
