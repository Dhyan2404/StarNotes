package com.onegravity.rteditor.utils.io.output;

import com.onegravity.rteditor.utils.io.input.ClosedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes7.dex */
public class ByteArrayOutputStream extends OutputStream {

    /* renamed from: j */
    public static final byte[] f40596j = new byte[0];

    /* renamed from: e */
    public final List<byte[]> f40597e;

    /* renamed from: f */
    public int f40598f;

    /* renamed from: g */
    public int f40599g;

    /* renamed from: h */
    public byte[] f40600h;

    /* renamed from: i */
    public int f40601i;

    public ByteArrayOutputStream() {
        this(1024);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(inputStream);
        return byteArrayOutputStream.m31807j();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    /* renamed from: f */
    public final void m31806f(int i) {
        if (this.f40598f < this.f40597e.size() - 1) {
            this.f40599g += this.f40600h.length;
            int i2 = this.f40598f + 1;
            this.f40598f = i2;
            this.f40600h = this.f40597e.get(i2);
            return;
        }
        byte[] bArr = this.f40600h;
        if (bArr == null) {
            this.f40599g = 0;
        } else {
            i = Math.max(bArr.length << 1, i - this.f40599g);
            this.f40599g += this.f40600h.length;
        }
        this.f40598f++;
        byte[] bArr2 = new byte[i];
        this.f40600h = bArr2;
        this.f40597e.add(bArr2);
    }

    /* renamed from: j */
    public final InputStream m31807j() {
        int i = this.f40601i;
        if (i == 0) {
            return new ClosedInputStream();
        }
        ArrayList arrayList = new ArrayList(this.f40597e.size());
        for (byte[] bArr : this.f40597e) {
            int min = Math.min(bArr.length, i);
            arrayList.add(new ByteArrayInputStream(bArr, 0, min));
            i -= min;
            if (i == 0) {
                break;
            }
        }
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    public synchronized void reset() {
        this.f40601i = 0;
        this.f40599g = 0;
        this.f40598f = 0;
        this.f40600h = this.f40597e.get(0);
    }

    public synchronized int size() {
        return this.f40601i;
    }

    public synchronized byte[] toByteArray() {
        int i = this.f40601i;
        if (i == 0) {
            return f40596j;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (byte[] bArr2 : this.f40597e) {
            int min = Math.min(bArr2.length, i);
            System.arraycopy(bArr2, 0, bArr, i2, min);
            i2 += min;
            i -= min;
            if (i == 0) {
                break;
            }
        }
        return bArr;
    }

    public String toString() {
        return new String(toByteArray());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        synchronized (this) {
            int i4 = this.f40601i;
            int i5 = i4 + i2;
            int i6 = i4 - this.f40599g;
            while (i2 > 0) {
                int min = Math.min(i2, this.f40600h.length - i6);
                System.arraycopy(bArr, i3 - i2, this.f40600h, i6, min);
                i2 -= min;
                if (i2 > 0) {
                    m31806f(i5);
                    i6 = 0;
                }
            }
            this.f40601i = i5;
        }
    }

    public synchronized void writeTo(OutputStream outputStream) throws IOException {
        int i = this.f40601i;
        for (byte[] bArr : this.f40597e) {
            int min = Math.min(bArr.length, i);
            outputStream.write(bArr, 0, min);
            i -= min;
            if (i == 0) {
                break;
            }
        }
    }

    public ByteArrayOutputStream(int i) {
        this.f40597e = new ArrayList();
        if (i >= 0) {
            synchronized (this) {
                m31806f(i);
            }
        } else {
            throw new IllegalArgumentException("Negative initial size: " + i);
        }
    }

    public String toString(String str) throws UnsupportedEncodingException {
        return new String(toByteArray(), str);
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) {
        int i2 = this.f40601i;
        int i3 = i2 - this.f40599g;
        if (i3 == this.f40600h.length) {
            m31806f(i2 + 1);
            i3 = 0;
        }
        this.f40600h[i3] = (byte) i;
        this.f40601i++;
    }

    public synchronized int write(InputStream inputStream) throws IOException {
        int i;
        int i2 = this.f40601i - this.f40599g;
        byte[] bArr = this.f40600h;
        int read = inputStream.read(bArr, i2, bArr.length - i2);
        i = 0;
        while (read != -1) {
            i += read;
            i2 += read;
            this.f40601i += read;
            byte[] bArr2 = this.f40600h;
            if (i2 == bArr2.length) {
                m31806f(bArr2.length);
                i2 = 0;
            }
            byte[] bArr3 = this.f40600h;
            read = inputStream.read(bArr3, i2, bArr3.length - i2);
        }
        return i;
    }
}
