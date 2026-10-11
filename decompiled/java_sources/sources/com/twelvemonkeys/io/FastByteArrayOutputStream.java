package com.twelvemonkeys.io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes10.dex */
public final class FastByteArrayOutputStream extends ByteArrayOutputStream {
    protected int maxGrowSize;

    public FastByteArrayOutputStream(int i) {
        super(i);
        this.maxGrowSize = 1048576;
    }

    public ByteArrayInputStream createInputStream() {
        return new ByteArrayInputStream(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
    }

    /* renamed from: f */
    public final void m60678f(int i) {
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        if (i > bArr.length) {
            byte[] bArr2 = new byte[Math.max(Math.min(bArr.length << 1, bArr.length + this.maxGrowSize), i)];
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArr2, 0, ((ByteArrayOutputStream) this).count);
            ((ByteArrayOutputStream) this).buf = bArr2;
        }
    }

    @Override // java.io.ByteArrayOutputStream
    public byte[] toByteArray() {
        int i = ((ByteArrayOutputStream) this).count;
        byte[] bArr = new byte[i];
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArr, 0, i);
        return bArr;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        int i4 = ((ByteArrayOutputStream) this).count + i2;
        m60678f(i4);
        System.arraycopy(bArr, i, ((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, i2);
        ((ByteArrayOutputStream) this).count = i4;
    }

    @Override // java.io.ByteArrayOutputStream
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
    }

    public FastByteArrayOutputStream(byte[] bArr) {
        super(0);
        this.maxGrowSize = 1048576;
        ((ByteArrayOutputStream) this).buf = bArr;
        ((ByteArrayOutputStream) this).count = bArr.length;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        int i2 = ((ByteArrayOutputStream) this).count + 1;
        m60678f(i2);
        ((ByteArrayOutputStream) this).buf[((ByteArrayOutputStream) this).count] = (byte) i;
        ((ByteArrayOutputStream) this).count = i2;
    }
}
