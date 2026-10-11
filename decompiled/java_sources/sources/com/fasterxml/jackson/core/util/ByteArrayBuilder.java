package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public final class ByteArrayBuilder extends OutputStream {
    public static final byte[] NO_BYTES = new byte[0];

    /* renamed from: j */
    public static final int f21342j = 500;

    /* renamed from: k */
    public static final int f21343k = 262144;

    /* renamed from: l */
    public static final int f21344l = 40;

    /* renamed from: e */
    public final BufferRecycler f21345e;

    /* renamed from: f */
    public final LinkedList<byte[]> f21346f;

    /* renamed from: g */
    public int f21347g;

    /* renamed from: h */
    public byte[] f21348h;

    /* renamed from: i */
    public int f21349i;

    public ByteArrayBuilder() {
        this((BufferRecycler) null);
    }

    public void append(int i) {
        if (this.f21349i >= this.f21348h.length) {
            m17305f();
        }
        byte[] bArr = this.f21348h;
        int i2 = this.f21349i;
        this.f21349i = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void appendThreeBytes(int i) {
        int i2 = this.f21349i;
        int i3 = i2 + 2;
        byte[] bArr = this.f21348h;
        if (i3 >= bArr.length) {
            append(i >> 16);
            append(i >> 8);
            append(i);
        } else {
            int i4 = i2 + 1;
            bArr[i2] = (byte) (i >> 16);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (i >> 8);
            this.f21349i = i5 + 1;
            bArr[i5] = (byte) i;
        }
    }

    public void appendTwoBytes(int i) {
        int i2 = this.f21349i;
        int i3 = i2 + 1;
        byte[] bArr = this.f21348h;
        if (i3 >= bArr.length) {
            append(i >> 8);
            append(i);
        } else {
            int i4 = i2 + 1;
            bArr[i2] = (byte) (i >> 8);
            this.f21349i = i4 + 1;
            bArr[i4] = (byte) i;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public byte[] completeAndCoalesce(int i) {
        this.f21349i = i;
        return toByteArray();
    }

    /* renamed from: f */
    public final void m17305f() {
        int length = this.f21347g + this.f21348h.length;
        this.f21347g = length;
        int max = Math.max(length >> 1, 1000);
        if (max > 262144) {
            max = 262144;
        }
        this.f21346f.add(this.f21348h);
        this.f21348h = new byte[max];
        this.f21349i = 0;
    }

    public byte[] finishCurrentSegment() {
        m17305f();
        return this.f21348h;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public byte[] getCurrentSegment() {
        return this.f21348h;
    }

    public int getCurrentSegmentLength() {
        return this.f21349i;
    }

    public void release() {
        byte[] bArr;
        reset();
        BufferRecycler bufferRecycler = this.f21345e;
        if (bufferRecycler == null || (bArr = this.f21348h) == null) {
            return;
        }
        bufferRecycler.releaseByteBuffer(2, bArr);
        this.f21348h = null;
    }

    public void reset() {
        this.f21347g = 0;
        this.f21349i = 0;
        if (this.f21346f.isEmpty()) {
            return;
        }
        this.f21346f.clear();
    }

    public byte[] resetAndGetFirstSegment() {
        reset();
        return this.f21348h;
    }

    public void setCurrentSegmentLength(int i) {
        this.f21349i = i;
    }

    public byte[] toByteArray() {
        int i = this.f21347g + this.f21349i;
        if (i == 0) {
            return NO_BYTES;
        }
        byte[] bArr = new byte[i];
        Iterator<byte[]> it2 = this.f21346f.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            byte[] next = it2.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i2, length);
            i2 += length;
        }
        System.arraycopy(this.f21348h, 0, bArr, i2, this.f21349i);
        int i3 = i2 + this.f21349i;
        if (i3 == i) {
            if (!this.f21346f.isEmpty()) {
                reset();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i + ", copied " + i3 + " bytes");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler) {
        this(bufferRecycler, 500);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        while (true) {
            int min = Math.min(this.f21348h.length - this.f21349i, i2);
            if (min > 0) {
                System.arraycopy(bArr, i, this.f21348h, this.f21349i, min);
                i += min;
                this.f21349i += min;
                i2 -= min;
            }
            if (i2 <= 0) {
                return;
            } else {
                m17305f();
            }
        }
    }

    public ByteArrayBuilder(int i) {
        this(null, i);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler, int i) {
        this.f21346f = new LinkedList<>();
        this.f21345e = bufferRecycler;
        this.f21348h = bufferRecycler == null ? new byte[i] : bufferRecycler.allocByteBuffer(2);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        append(i);
    }
}
