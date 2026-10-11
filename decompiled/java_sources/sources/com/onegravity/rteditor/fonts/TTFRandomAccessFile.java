package com.onegravity.rteditor.fonts;

import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes7.dex */
public class TTFRandomAccessFile implements TTFInputStream {

    /* renamed from: e */
    public final RandomAccessFile f40381e;

    public TTFRandomAccessFile(RandomAccessFile randomAccessFile) {
        this.f40381e = randomAccessFile;
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f40381e.close();
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream
    public int read(byte[] bArr) throws IOException {
        return this.f40381e.read(bArr);
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream
    public void seek(long j) throws IOException {
        this.f40381e.seek(j);
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream
    public int read() throws IOException {
        return this.f40381e.read();
    }
}
