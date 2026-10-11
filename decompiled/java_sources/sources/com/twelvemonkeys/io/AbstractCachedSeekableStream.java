package com.twelvemonkeys.io;

import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
public abstract class AbstractCachedSeekableStream extends SeekableInputStream {

    /* renamed from: h */
    public StreamCache f94220h;
    protected final InputStream stream;
    protected long streamPosition;

    /* loaded from: classes10.dex */
    public static abstract class StreamCache {
        /* renamed from: a */
        public void mo60671a(long j) {
        }

        /* renamed from: b */
        public abstract long mo60672b() throws IOException;

        /* renamed from: c */
        public abstract int mo60673c() throws IOException;

        /* renamed from: d */
        public int mo60674d(byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int mo60673c = mo60673c();
                if (mo60673c < 0) {
                    break;
                }
                bArr[i + i4] = (byte) mo60673c;
                i3++;
            }
            return i3;
        }

        /* renamed from: e */
        public abstract void mo60675e(long j) throws IOException;

        /* renamed from: f */
        public abstract void mo60676f(int i) throws IOException;

        /* renamed from: g */
        public void mo60677g(byte[] bArr, int i, int i2) throws IOException {
            for (int i3 = 0; i3 < i2; i3++) {
                mo60676f(bArr[i + i3]);
            }
        }
    }

    public AbstractCachedSeekableStream(InputStream inputStream, StreamCache streamCache) {
        Validate.notNull(inputStream, "stream");
        Validate.notNull(streamCache, "cache");
        this.stream = inputStream;
        this.f94220h = streamCache;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        long available = (this.streamPosition - this.f94250e) + this.stream.available();
        if (available > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) available;
    }

    @Override // com.twelvemonkeys.io.SeekableInputStream
    public void closeImpl() throws IOException {
        this.f94220h.mo60671a(this.f94250e);
        this.f94220h = null;
        this.stream.close();
    }

    @Override // com.twelvemonkeys.io.SeekableInputStream
    public void flushBeforeImpl(long j) {
        this.f94220h.mo60671a(j);
    }

    public final StreamCache getCache() {
        return this.f94220h;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public final boolean isCached() {
        return true;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public abstract boolean isCachedFile();

    @Override // com.twelvemonkeys.io.Seekable
    public abstract boolean isCachedMemory();

    @Override // java.io.InputStream
    public int read() throws IOException {
        int mo60673c;
        checkOpen();
        if (this.f94250e == this.streamPosition) {
            mo60673c = this.stream.read();
            if (mo60673c >= 0) {
                this.streamPosition++;
                this.f94220h.mo60676f(mo60673c);
            }
        } else {
            syncPosition();
            mo60673c = this.f94220h.mo60673c();
        }
        if (mo60673c != -1) {
            this.f94250e++;
        }
        return mo60673c;
    }

    @Override // com.twelvemonkeys.io.SeekableInputStream
    public void seekImpl(long j) throws IOException {
        if (this.streamPosition >= j) {
            this.f94220h.mo60675e(j);
            return;
        }
        long mo60672b = this.f94220h.mo60672b();
        long j2 = this.streamPosition;
        if (mo60672b != j2) {
            this.f94220h.mo60675e(j2);
        }
        long j3 = j - this.streamPosition;
        int i = j3 > 1024 ? 1024 : (int) j3;
        byte[] bArr = new byte[i];
        while (j3 > 0) {
            int read = this.stream.read(bArr, 0, ((long) i) < j3 ? i : (int) j3);
            if (read > 0) {
                this.f94220h.mo60677g(bArr, 0, read);
                long j4 = read;
                this.streamPosition += j4;
                j3 -= j4;
            } else if (read < 0) {
                return;
            }
        }
    }

    public final void syncPosition() throws IOException {
        long mo60672b = this.f94220h.mo60672b();
        long j = this.f94250e;
        if (mo60672b != j) {
            this.f94220h.mo60675e(j);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int mo60674d;
        checkOpen();
        if (this.f94250e == this.streamPosition) {
            mo60674d = this.stream.read(bArr, i, i2);
            if (mo60674d > 0) {
                this.streamPosition += mo60674d;
                this.f94220h.mo60677g(bArr, i, mo60674d);
            }
        } else {
            syncPosition();
            mo60674d = this.f94220h.mo60674d(bArr, i, i2);
        }
        if (mo60674d > 0) {
            this.f94250e += mo60674d;
        }
        return mo60674d;
    }
}
