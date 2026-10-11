package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class RecyclableBufferedInputStream extends FilterInputStream {

    /* renamed from: e */
    public volatile byte[] f15077e;

    /* renamed from: f */
    public int f15078f;

    /* renamed from: g */
    public int f15079g;

    /* renamed from: h */
    public int f15080h;

    /* renamed from: i */
    public int f15081i;

    /* renamed from: j */
    public final ArrayPool f15082j;

    /* loaded from: classes3.dex */
    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) {
        this(inputStream, arrayPool, 65536);
    }

    /* renamed from: j */
    public static IOException m8972j() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f15077e == null || inputStream == null) {
            throw m8972j();
        }
        return (this.f15078f - this.f15081i) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f15077e != null) {
            this.f15082j.put(this.f15077e);
            this.f15077e = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* renamed from: f */
    public final int m8973f(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.f15080h;
        if (i != -1) {
            int i2 = this.f15081i - i;
            int i3 = this.f15079g;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f15078f == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f15082j.get(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f15077e = bArr2;
                    this.f15082j.put(bArr);
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.f15081i - this.f15080h;
                this.f15081i = i4;
                this.f15080h = 0;
                this.f15078f = 0;
                int read = inputStream.read(bArr, i4, bArr.length - i4);
                int i5 = this.f15081i;
                if (read > 0) {
                    i5 += read;
                }
                this.f15078f = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f15080h = -1;
            this.f15081i = 0;
            this.f15078f = read2;
        }
        return read2;
    }

    public synchronized void fixMarkLimit() {
        this.f15079g = this.f15077e.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.f15079g = Math.max(this.f15079g, i);
        this.f15080h = this.f15081i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f15077e;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f15081i >= this.f15078f && m8973f(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f15077e && (bArr = this.f15077e) == null) {
                throw m8972j();
            }
            int i = this.f15078f;
            int i2 = this.f15081i;
            if (i - i2 <= 0) {
                return -1;
            }
            this.f15081i = i2 + 1;
            return bArr[i2] & 255;
        }
        throw m8972j();
    }

    public synchronized void release() {
        if (this.f15077e != null) {
            this.f15082j.put(this.f15077e);
            this.f15077e = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f15077e == null) {
            throw new IOException("Stream is closed");
        }
        int i = this.f15080h;
        if (-1 == i) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.f15081i + " markLimit: " + this.f15079g);
        }
        this.f15081i = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f15077e;
        if (bArr == null) {
            throw m8972j();
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw m8972j();
        }
        int i = this.f15078f;
        int i2 = this.f15081i;
        if (i - i2 >= j) {
            this.f15081i = (int) (i2 + j);
            return j;
        }
        long j2 = i - i2;
        this.f15081i = i;
        if (this.f15080h == -1 || j > this.f15079g) {
            long skip = inputStream.skip(j - j2);
            if (skip > 0) {
                this.f15080h = -1;
            }
            return j2 + skip;
        }
        if (m8973f(inputStream, bArr) == -1) {
            return j2;
        }
        int i3 = this.f15078f;
        int i4 = this.f15081i;
        if (i3 - i4 >= j - j2) {
            this.f15081i = (int) ((i4 + j) - j2);
            return j;
        }
        long j3 = (j2 + i3) - i4;
        this.f15081i = i3;
        return j3;
    }

    @VisibleForTesting
    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool, int i) {
        super(inputStream);
        this.f15080h = -1;
        this.f15082j = arrayPool;
        this.f15077e = (byte[]) arrayPool.get(i, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        byte[] bArr2 = this.f15077e;
        if (bArr2 == null) {
            throw m8972j();
        }
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i5 = this.f15081i;
            int i6 = this.f15078f;
            if (i5 < i6) {
                int i7 = i6 - i5 >= i2 ? i2 : i6 - i5;
                System.arraycopy(bArr2, i5, bArr, i, i7);
                this.f15081i += i7;
                if (i7 == i2 || inputStream.available() == 0) {
                    return i7;
                }
                i += i7;
                i3 = i2 - i7;
            } else {
                i3 = i2;
            }
            while (true) {
                if (this.f15080h == -1 && i3 >= bArr2.length) {
                    i4 = inputStream.read(bArr, i, i3);
                    if (i4 == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                } else {
                    if (m8973f(inputStream, bArr2) == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                    if (bArr2 != this.f15077e && (bArr2 = this.f15077e) == null) {
                        throw m8972j();
                    }
                    int i8 = this.f15078f;
                    int i9 = this.f15081i;
                    i4 = i8 - i9 >= i3 ? i3 : i8 - i9;
                    System.arraycopy(bArr2, i9, bArr, i, i4);
                    this.f15081i += i4;
                }
                i3 -= i4;
                if (i3 == 0) {
                    return i2;
                }
                if (inputStream.available() == 0) {
                    return i2 - i3;
                }
                i += i4;
            }
        } else {
            throw m8972j();
        }
    }
}
