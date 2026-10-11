package com.twelvemonkeys.io;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes10.dex */
public abstract class RandomAccessStream implements Seekable, DataInput, DataOutput {

    /* renamed from: e */
    public SeekableInputStream f94246e = null;

    /* renamed from: f */
    public SeekableOutputStream f94247f = null;

    /* renamed from: com.twelvemonkeys.io.RandomAccessStream$a */
    /* loaded from: classes10.dex */
    public static final class C16976a extends SeekableInputStream {

        /* renamed from: h */
        public final RandomAccessStream f94248h;

        public C16976a(RandomAccessStream randomAccessStream) {
            if (randomAccessStream == null) {
                throw new IllegalArgumentException("stream == null");
            }
            this.f94248h = randomAccessStream;
        }

        @Override // com.twelvemonkeys.io.SeekableInputStream
        public void closeImpl() throws IOException {
            this.f94248h.close();
        }

        @Override // com.twelvemonkeys.io.SeekableInputStream
        public void flushBeforeImpl(long j) throws IOException {
            this.f94248h.flushBefore(j);
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCached() {
            return this.f94248h.isCached();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCachedFile() {
            return this.f94248h.isCachedFile();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCachedMemory() {
            return this.f94248h.isCachedMemory();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return this.f94248h.read();
        }

        @Override // com.twelvemonkeys.io.SeekableInputStream
        public void seekImpl(long j) throws IOException {
            this.f94248h.seek(j);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            return this.f94248h.read(bArr, i, i2);
        }
    }

    /* renamed from: com.twelvemonkeys.io.RandomAccessStream$b */
    /* loaded from: classes10.dex */
    public static final class C16977b extends SeekableOutputStream {

        /* renamed from: h */
        public final RandomAccessStream f94249h;

        public C16977b(RandomAccessStream randomAccessStream) {
            if (randomAccessStream == null) {
                throw new IllegalArgumentException("stream == null");
            }
            this.f94249h = randomAccessStream;
        }

        @Override // com.twelvemonkeys.io.SeekableOutputStream
        public void closeImpl() throws IOException {
            this.f94249h.close();
        }

        @Override // com.twelvemonkeys.io.SeekableOutputStream
        public void flushBeforeImpl(long j) throws IOException {
            this.f94249h.flushBefore(j);
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCached() {
            return this.f94249h.isCached();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCachedFile() {
            return this.f94249h.isCachedFile();
        }

        @Override // com.twelvemonkeys.io.Seekable
        public boolean isCachedMemory() {
            return this.f94249h.isCachedMemory();
        }

        @Override // com.twelvemonkeys.io.SeekableOutputStream
        public void seekImpl(long j) throws IOException {
            this.f94249h.seek(j);
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f94249h.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f94249h.write(bArr, i, i2);
        }
    }

    public final SeekableInputStream asInputStream() {
        if (this.f94246e == null) {
            this.f94246e = new C16976a(this);
        }
        return this.f94246e;
    }

    public final SeekableOutputStream asOutputStream() {
        if (this.f94247f == null) {
            this.f94247f = new C16977b(this);
        }
        return this.f94247f;
    }

    public int read() throws IOException {
        try {
            return readByte() & 255;
        } catch (EOFException unused) {
            return -1;
        }
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (bArr != null) {
            if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            int read = read();
            if (read == -1) {
                return -1;
            }
            bArr[i] = (byte) read;
            int i4 = 1;
            while (i4 < i2) {
                try {
                    int read2 = read();
                    if (read2 == -1) {
                        break;
                    }
                    bArr[i + i4] = (byte) read2;
                    i4++;
                } catch (IOException unused) {
                }
            }
            return i4;
        }
        throw new NullPointerException("bytes == null");
    }

    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr != null ? bArr.length : 1);
    }
}
