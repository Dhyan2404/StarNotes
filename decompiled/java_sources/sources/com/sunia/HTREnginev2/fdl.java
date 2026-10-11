package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;

@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class fdl extends InputStream {

    /* renamed from: e */
    public final Reader f69910e;

    /* renamed from: f */
    public final CharsetEncoder f69911f;

    /* renamed from: g */
    public final byte[] f69912g;

    /* renamed from: h */
    public CharBuffer f69913h;

    /* renamed from: i */
    public ByteBuffer f69914i;

    /* renamed from: j */
    public boolean f69915j;

    /* renamed from: k */
    public boolean f69916k;

    /* renamed from: l */
    public boolean f69917l;

    public fdl(Reader reader, Charset charset, int i) {
        this(reader, charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE), i);
    }

    /* renamed from: f */
    public static int m54082f(Buffer buffer) {
        return buffer.capacity() - buffer.limit();
    }

    /* renamed from: w */
    public static CharBuffer m54083w(CharBuffer charBuffer) {
        CharBuffer wrap = CharBuffer.wrap(Arrays.copyOf(charBuffer.array(), charBuffer.capacity() * 2));
        hri.m54619e(wrap, charBuffer.position());
        hri.m54617c(wrap, charBuffer.limit());
        return wrap;
    }

    /* renamed from: H */
    public final void m54084H() throws IOException {
        if (m54082f(this.f69913h) == 0) {
            if (this.f69913h.position() > 0) {
                hri.m54616b(this.f69913h.compact());
            } else {
                this.f69913h = m54083w(this.f69913h);
            }
        }
        int limit = this.f69913h.limit();
        int read = this.f69910e.read(this.f69913h.array(), limit, m54082f(this.f69913h));
        if (read == -1) {
            this.f69915j = true;
        } else {
            hri.m54617c(this.f69913h, limit + read);
        }
    }

    /* renamed from: I */
    public final void m54085I(boolean z) {
        hri.m54616b(this.f69914i);
        if (z && this.f69914i.remaining() == 0) {
            this.f69914i = ByteBuffer.allocate(this.f69914i.capacity() * 2);
        } else {
            this.f69916k = true;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f69910e.close();
    }

    /* renamed from: j */
    public final int m54086j(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, this.f69914i.remaining());
        this.f69914i.get(bArr, i, min);
        return min;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f69912g) == 1) {
            return UnsignedBytes.toInt(this.f69912g[0]);
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        if (r2 <= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
    
        return r2;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(byte[] r8, int r9, int r10) throws java.io.IOException {
        /*
            r7 = this;
            int r0 = r9 + r10
            int r1 = r8.length
            com.google.common.base.Preconditions.checkPositionIndexes(r9, r0, r1)
            r0 = 0
            if (r10 != 0) goto La
            return r0
        La:
            boolean r1 = r7.f69915j
            r2 = r0
        Ld:
            boolean r3 = r7.f69916k
            if (r3 == 0) goto L2e
            int r3 = r9 + r2
            int r4 = r10 - r2
            int r3 = r7.m54086j(r8, r3, r4)
            int r2 = r2 + r3
            if (r2 == r10) goto L29
            boolean r3 = r7.f69917l
            if (r3 == 0) goto L21
            goto L29
        L21:
            r7.f69916k = r0
            java.nio.ByteBuffer r3 = r7.f69914i
            com.sunia.HTREnginev2.hri.m54615a(r3)
            goto L2e
        L29:
            if (r2 <= 0) goto L2c
            goto L2d
        L2c:
            r2 = -1
        L2d:
            return r2
        L2e:
            boolean r3 = r7.f69917l
            if (r3 == 0) goto L35
            java.nio.charset.CoderResult r3 = java.nio.charset.CoderResult.UNDERFLOW
            goto L4c
        L35:
            if (r1 == 0) goto L40
            java.nio.charset.CharsetEncoder r3 = r7.f69911f
            java.nio.ByteBuffer r4 = r7.f69914i
            java.nio.charset.CoderResult r3 = r3.flush(r4)
            goto L4c
        L40:
            java.nio.charset.CharsetEncoder r3 = r7.f69911f
            java.nio.CharBuffer r4 = r7.f69913h
            java.nio.ByteBuffer r5 = r7.f69914i
            boolean r6 = r7.f69915j
            java.nio.charset.CoderResult r3 = r3.encode(r4, r5, r6)
        L4c:
            boolean r4 = r3.isOverflow()
            r5 = 1
            if (r4 == 0) goto L57
            r7.m54085I(r5)
            goto Ld
        L57:
            boolean r4 = r3.isUnderflow()
            if (r4 == 0) goto L6f
            if (r1 == 0) goto L65
            r7.f69917l = r5
            r7.m54085I(r0)
            goto Ld
        L65:
            boolean r3 = r7.f69915j
            if (r3 == 0) goto L6b
            r1 = r5
            goto L2e
        L6b:
            r7.m54084H()
            goto L2e
        L6f:
            boolean r4 = r3.isError()
            if (r4 == 0) goto L2e
            r3.throwException()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.fdl.read(byte[], int, int):int");
    }

    public fdl(Reader reader, CharsetEncoder charsetEncoder, int i) {
        this.f69912g = new byte[1];
        this.f69910e = (Reader) Preconditions.checkNotNull(reader);
        this.f69911f = (CharsetEncoder) Preconditions.checkNotNull(charsetEncoder);
        Preconditions.checkArgument(i > 0, "bufferSize must be positive: %s", i);
        charsetEncoder.reset();
        CharBuffer allocate = CharBuffer.allocate(i);
        this.f69913h = allocate;
        hri.m54616b(allocate);
        this.f69914i = ByteBuffer.allocate(i);
    }
}
