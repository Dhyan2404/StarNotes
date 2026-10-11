package com.twelvemonkeys.io;

import com.twelvemonkeys.io.AbstractCachedSeekableStream;
import com.twelvemonkeys.lang.Validate;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* loaded from: classes10.dex */
public final class FileCacheSeekableStream extends AbstractCachedSeekableStream {

    /* renamed from: i */
    public byte[] f94227i;

    /* renamed from: com.twelvemonkeys.io.FileCacheSeekableStream$a */
    /* loaded from: classes10.dex */
    public static final class C16971a extends AbstractCachedSeekableStream.StreamCache {

        /* renamed from: a */
        public RandomAccessFile f94228a;

        public C16971a(File file) throws FileNotFoundException {
            Validate.notNull(file, "file");
            this.f94228a = new RandomAccessFile(file, "rw");
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: b */
        public long mo60672b() throws IOException {
            return this.f94228a.getFilePointer();
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: c */
        public int mo60673c() throws IOException {
            return this.f94228a.read();
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: d */
        public int mo60674d(byte[] bArr, int i, int i2) throws IOException {
            return this.f94228a.read(bArr, i, i2);
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: e */
        public void mo60675e(long j) throws IOException {
            this.f94228a.seek(j);
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: f */
        public void mo60676f(int i) throws IOException {
            this.f94228a.write(i);
        }

        @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream.StreamCache
        /* renamed from: g */
        public void mo60677g(byte[] bArr, int i, int i2) throws IOException {
            this.f94228a.write(bArr, i, i2);
        }
    }

    public FileCacheSeekableStream(InputStream inputStream) throws IOException {
        this(inputStream, "iocache", null);
    }

    /* renamed from: f */
    public static File m60679f(String str, File file) throws IOException {
        Validate.notNull(str, "tempBaseName");
        File createTempFile = File.createTempFile(str, null, file);
        createTempFile.deleteOnExit();
        return createTempFile;
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, java.io.InputStream
    public /* bridge */ /* synthetic */ int available() throws IOException {
        return super.available();
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, com.twelvemonkeys.io.SeekableInputStream
    public void closeImpl() throws IOException {
        super.closeImpl();
        this.f94227i = null;
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, com.twelvemonkeys.io.Seekable
    public final boolean isCachedFile() {
        return true;
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, com.twelvemonkeys.io.Seekable
    public final boolean isCachedMemory() {
        return false;
    }

    /* renamed from: j */
    public final int m60680j(byte[] bArr, int i, int i2) throws IOException {
        int read = this.stream.read(bArr, i, i2);
        if (read > 0) {
            this.streamPosition += read;
            getCache().mo60677g(bArr, i, read);
        }
        return read;
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, java.io.InputStream
    public int read() throws IOException {
        int mo60673c;
        checkOpen();
        if (this.f94250e == this.streamPosition) {
            byte[] bArr = this.f94227i;
            mo60673c = m60680j(bArr, 0, bArr.length);
            if (mo60673c >= 0) {
                mo60673c = this.f94227i[0] & 255;
            }
        } else {
            syncPosition();
            mo60673c = getCache().mo60673c();
        }
        if (mo60673c != -1) {
            this.f94250e++;
        }
        return mo60673c;
    }

    public FileCacheSeekableStream(InputStream inputStream, String str) throws IOException {
        this(inputStream, str, null);
    }

    public FileCacheSeekableStream(InputStream inputStream, String str, File file) throws IOException {
        this((InputStream) Validate.notNull(inputStream, "stream"), m60679f(str, file));
    }

    public FileCacheSeekableStream(InputStream inputStream, File file) throws FileNotFoundException {
        super(inputStream, new C16971a(file));
        this.f94227i = new byte[1024];
    }

    @Override // com.twelvemonkeys.io.AbstractCachedSeekableStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int mo60674d;
        checkOpen();
        if (this.f94250e == this.streamPosition) {
            mo60674d = m60680j(bArr, i, i2);
        } else {
            syncPosition();
            mo60674d = getCache().mo60674d(bArr, i, (int) Math.min(i2, this.streamPosition - this.f94250e));
        }
        if (mo60674d > 0) {
            this.f94250e += mo60674d;
        }
        return mo60674d;
    }
}
