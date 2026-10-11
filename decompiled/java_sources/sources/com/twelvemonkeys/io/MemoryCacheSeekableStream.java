package com.twelvemonkeys.io;

import com.twelvemonkeys.io.AbstractCachedSeekableStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public final class MemoryCacheSeekableStream extends AbstractCachedSeekableStream {

    /* renamed from: com.twelvemonkeys.io.MemoryCacheSeekableStream$a */
    /* loaded from: classes10.dex */
    public static final class C16975a extends AbstractCachedSeekableStream.StreamCache {

        /* renamed from: e */
        public static final int f94241e = 8192;

        /* renamed from: a */
        public final List<byte[]> f94242a = new ArrayList();

        /* renamed from: b */
        public long f94243b;

        /* renamed from: c */
        public long f94244c;

        /* renamed from: d */
        public long f94245d;

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: a */
        public void mo60671a(long j) {
            int i = ((int) (j / 8192)) - 1;
            for (int i2 = 0; i2 < i; i2++) {
                this.f94242a.remove(0);
            }
            this.f94245d = j;
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: b */
        public long mo60672b() {
            return this.f94244c;
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: c */
        public int mo60673c() throws IOException {
            if (this.f94244c >= this.f94243b) {
                return -1;
            }
            byte[] m60691h = m60691h();
            long j = this.f94244c;
            int i = (int) (j % 8192);
            this.f94244c = j + 1;
            return m60691h[i] & 255;
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: d */
        public int mo60674d(byte[] bArr, int i, int i2) throws IOException {
            if (this.f94244c >= this.f94243b) {
                return -1;
            }
            byte[] m60691h = m60691h();
            int i3 = (int) (this.f94244c % 8192);
            int min = (int) Math.min(Math.min(i2, m60691h.length - i3), this.f94243b - this.f94244c);
            int i4 = 0;
            while (i4 < min) {
                bArr[i + i4] = m60691h[i3 + i4];
                i4++;
            }
            this.f94244c += i4;
            return i4;
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: e */
        public void mo60675e(long j) throws IOException {
            if (j < this.f94245d) {
                throw new IOException("Seek before flush position");
            }
            this.f94244c = j;
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: f */
        public void mo60676f(int i) throws IOException {
            byte[] m60691h = m60691h();
            long j = this.f94244c;
            m60691h[(int) (j % 8192)] = (byte) i;
            long j2 = j + 1;
            this.f94244c = j2;
            if (j2 > this.f94243b) {
                this.f94243b = j2;
            }
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: g */
        public void mo60677g(byte[] bArr, int i, int i2) throws IOException {
            byte[] m60691h = m60691h();
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = ((int) this.f94244c) % 8192;
                if (i4 == 0) {
                    m60691h = m60691h();
                }
                m60691h[i4] = bArr[i + i3];
                this.f94244c++;
            }
            long j = this.f94244c;
            if (j > this.f94243b) {
                this.f94243b = j;
            }
        }

        /* renamed from: h */
        public final byte[] m60691h() throws IOException {
            long j = this.f94244c - this.f94245d;
            if (j < 0) {
                throw new IOException("StreamCache flushed before read position");
            }
            long j2 = j / 8192;
            if (j2 >= 2147483647L) {
                throw new IOException("Memory cache max size exceeded");
            }
            if (j2 >= this.f94242a.size()) {
                try {
                    this.f94242a.add(new byte[8192]);
                } catch (OutOfMemoryError unused) {
                    throw new IOException("No more memory for cache: " + (this.f94242a.size() * 8192));
                }
            }
            return this.f94242a.get((int) j2);
        }
    }

    public MemoryCacheSeekableStream(InputStream inputStream) {
        super(inputStream, new C16975a());
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, java.io.InputStream
    public /* bridge */ /* synthetic */ int available() throws IOException {
        return super.available();
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, com.twelvemonkeys.io.Seekable
    public final boolean isCachedFile() {
        return false;
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, com.twelvemonkeys.io.Seekable
    public final boolean isCachedMemory() {
        return true;
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, java.io.InputStream
    public /* bridge */ /* synthetic */ int read() throws IOException {
        return super.read();
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, java.io.InputStream
    public /* bridge */ /* synthetic */ int read(byte[] bArr, int i, int i2) throws IOException {
        return super.read(bArr, i, i2);
    }
}
