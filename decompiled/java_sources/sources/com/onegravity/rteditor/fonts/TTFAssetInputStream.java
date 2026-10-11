package com.onegravity.rteditor.fonts;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes7.dex */
public class TTFAssetInputStream implements TTFInputStream {

    /* renamed from: e */
    public final InputStream f40380e;

    public TTFAssetInputStream(InputStream inputStream) {
        this.f40380e = inputStream;
        if (inputStream.markSupported()) {
            inputStream.mark(-1);
        }
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f40380e.close();
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream
    public int read(byte[] bArr) throws IOException {
        return this.f40380e.read(bArr);
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream
    public void seek(long j) throws IOException {
        if (this.f40380e.markSupported()) {
            this.f40380e.reset();
            this.f40380e.skip(j);
        }
    }

    @Override // com.onegravity.rteditor.fonts.TTFInputStream
    public int read() throws IOException {
        return this.f40380e.read();
    }
}
