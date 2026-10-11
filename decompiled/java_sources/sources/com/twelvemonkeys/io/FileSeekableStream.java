package com.twelvemonkeys.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes10.dex */
public final class FileSeekableStream extends SeekableInputStream {

    /* renamed from: h */
    public final RandomAccessFile f94229h;

    public FileSeekableStream(File file) throws FileNotFoundException {
        this(new RandomAccessFile(file, "r"));
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        long length = this.f94229h.length() - this.f94250e;
        if (length > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) length;
    }

    @Override // com.twelvemonkeys.io.SeekableInputStream
    public void closeImpl() throws IOException {
        this.f94229h.close();
    }

    @Override // com.twelvemonkeys.io.SeekableInputStream
    public void flushBeforeImpl(long j) {
    }

    @Override // com.twelvemonkeys.io.Seekable
    public boolean isCached() {
        return false;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public boolean isCachedFile() {
        return false;
    }

    @Override // com.twelvemonkeys.io.Seekable
    public boolean isCachedMemory() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        checkOpen();
        int read = this.f94229h.read();
        if (read >= 0) {
            this.f94250e++;
        }
        return read;
    }

    @Override // com.twelvemonkeys.io.SeekableInputStream
    public void seekImpl(long j) throws IOException {
        this.f94229h.seek(j);
    }

    public FileSeekableStream(RandomAccessFile randomAccessFile) {
        this.f94229h = randomAccessFile;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        checkOpen();
        int read = this.f94229h.read(bArr, i, i2);
        if (read > 0) {
            this.f94250e += read;
        }
        return read;
    }
}
