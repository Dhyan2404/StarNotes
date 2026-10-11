package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.ProgressOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class DbxDownloader<R> implements Closeable {

    /* renamed from: e */
    public final R f16376e;

    /* renamed from: f */
    public final InputStream f16377f;

    /* renamed from: g */
    public final String f16378g;

    /* renamed from: h */
    public boolean f16379h;

    public DbxDownloader(R r, InputStream inputStream, String str) {
        this.f16376e = r;
        this.f16377f = inputStream;
        this.f16378g = str;
        this.f16379h = false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f16379h) {
            return;
        }
        IOUtil.closeQuietly(this.f16377f);
        this.f16379h = true;
    }

    public R download(OutputStream outputStream) throws DbxException, IOException {
        try {
            try {
                IOUtil.copyStreamToStream(getInputStream(), outputStream);
                close();
                return this.f16376e;
            } catch (IOUtil.WriteException e) {
                throw e.getCause();
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }

    /* renamed from: f */
    public final void m9946f() {
        if (this.f16379h) {
            throw new IllegalStateException("This downloader is already closed.");
        }
    }

    public String getContentType() {
        return this.f16378g;
    }

    public InputStream getInputStream() {
        m9946f();
        return this.f16377f;
    }

    public R getResult() {
        return this.f16376e;
    }

    public DbxDownloader(R r, InputStream inputStream) {
        this(r, inputStream, null);
    }

    public R download(OutputStream outputStream, IOUtil.ProgressListener progressListener) throws DbxException, IOException {
        return download(new ProgressOutputStream(outputStream, progressListener));
    }
}
