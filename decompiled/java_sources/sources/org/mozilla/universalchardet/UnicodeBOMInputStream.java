package org.mozilla.universalchardet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes13.dex */
public class UnicodeBOMInputStream extends InputStream {

    /* renamed from: e */
    public final PushbackInputStream f115494e;

    /* renamed from: f */
    public final BOM f115495f;

    /* renamed from: g */
    public boolean f115496g;

    /* loaded from: classes13.dex */
    public static final class BOM {

        /* renamed from: c */
        public static final /* synthetic */ boolean f115497c = false;

        /* renamed from: a */
        public final byte[] f115498a;

        /* renamed from: b */
        public final String f115499b;
        public static final BOM NONE = new BOM(new byte[0], "NONE");
        public static final BOM UTF_8 = new BOM(new byte[]{-17, -69, -65}, "UTF-8");
        public static final BOM UTF_16_LE = new BOM(new byte[]{-1, -2}, "UTF-16 little-endian");
        public static final BOM UTF_16_BE = new BOM(new byte[]{-2, -1}, "UTF-16 big-endian");
        public static final BOM UTF_32_LE = new BOM(new byte[]{-1, -2, 0, 0}, "UTF-32 little-endian");
        public static final BOM UTF_32_BE = new BOM(new byte[]{0, 0, -2, -1}, "UTF-32 big-endian");

        public BOM(byte[] bArr, String str) {
            this.f115498a = bArr;
            this.f115499b = str;
        }

        public final byte[] getBytes() {
            byte[] bArr = this.f115498a;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            return bArr2;
        }

        public final String toString() {
            return this.f115499b;
        }
    }

    public UnicodeBOMInputStream(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f115494e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f115494e.close();
    }

    public final BOM getBOM() {
        return this.f115495f;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f115494e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f115494e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        this.f115496g = true;
        return this.f115494e.read();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f115494e.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        this.f115496g = true;
        return this.f115494e.skip(j);
    }

    public final synchronized UnicodeBOMInputStream skipBOM() throws IOException {
        if (!this.f115496g) {
            long length = this.f115495f.f115498a.length;
            for (long skip = this.f115494e.skip(length); skip < length; skip++) {
                this.f115494e.read();
            }
            this.f115496g = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public UnicodeBOMInputStream(java.io.InputStream r11, boolean r12) throws java.io.IOException {
        /*
            r10 = this;
            r10.<init>()
            r0 = 0
            r10.f115496g = r0
            if (r11 == 0) goto L88
            java.io.PushbackInputStream r1 = new java.io.PushbackInputStream
            r2 = 4
            r1.<init>(r11, r2)
            r10.f115494e = r1
            byte[] r11 = new byte[r2]
            int r3 = r1.read(r11)
            r4 = -2
            r5 = -1
            r6 = 2
            r7 = 1
            if (r3 == r6) goto L61
            r8 = 3
            if (r3 == r8) goto L4a
            if (r3 == r2) goto L22
            goto L79
        L22:
            r2 = r11[r0]
            if (r2 != r5) goto L37
            r9 = r11[r7]
            if (r9 != r4) goto L37
            r9 = r11[r6]
            if (r9 != 0) goto L37
            r9 = r11[r8]
            if (r9 != 0) goto L37
            org.mozilla.universalchardet.UnicodeBOMInputStream$BOM r2 = org.mozilla.universalchardet.UnicodeBOMInputStream.BOM.UTF_32_LE
            r10.f115495f = r2
            goto L7d
        L37:
            if (r2 != 0) goto L4a
            r2 = r11[r7]
            if (r2 != 0) goto L4a
            r2 = r11[r6]
            if (r2 != r4) goto L4a
            r2 = r11[r8]
            if (r2 != r5) goto L4a
            org.mozilla.universalchardet.UnicodeBOMInputStream$BOM r2 = org.mozilla.universalchardet.UnicodeBOMInputStream.BOM.UTF_32_BE
            r10.f115495f = r2
            goto L7d
        L4a:
            r2 = r11[r0]
            r8 = -17
            if (r2 != r8) goto L61
            r2 = r11[r7]
            r8 = -69
            if (r2 != r8) goto L61
            r2 = r11[r6]
            r6 = -65
            if (r2 != r6) goto L61
            org.mozilla.universalchardet.UnicodeBOMInputStream$BOM r2 = org.mozilla.universalchardet.UnicodeBOMInputStream.BOM.UTF_8
            r10.f115495f = r2
            goto L7d
        L61:
            r2 = r11[r0]
            if (r2 != r5) goto L6e
            r6 = r11[r7]
            if (r6 != r4) goto L6e
            org.mozilla.universalchardet.UnicodeBOMInputStream$BOM r2 = org.mozilla.universalchardet.UnicodeBOMInputStream.BOM.UTF_16_LE
            r10.f115495f = r2
            goto L7d
        L6e:
            if (r2 != r4) goto L79
            r2 = r11[r7]
            if (r2 != r5) goto L79
            org.mozilla.universalchardet.UnicodeBOMInputStream$BOM r2 = org.mozilla.universalchardet.UnicodeBOMInputStream.BOM.UTF_16_BE
            r10.f115495f = r2
            goto L7d
        L79:
            org.mozilla.universalchardet.UnicodeBOMInputStream$BOM r2 = org.mozilla.universalchardet.UnicodeBOMInputStream.BOM.NONE
            r10.f115495f = r2
        L7d:
            if (r3 <= 0) goto L82
            r1.unread(r11, r0, r3)
        L82:
            if (r12 == 0) goto L87
            r10.skipBOM()
        L87:
            return
        L88:
            java.lang.NullPointerException r10 = new java.lang.NullPointerException
            java.lang.String r11 = "invalid input stream: null is not allowed"
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.universalchardet.UnicodeBOMInputStream.<init>(java.io.InputStream, boolean):void");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        this.f115496g = true;
        return this.f115494e.read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.f115496g = true;
        return this.f115494e.read(bArr, i, i2);
    }
}
