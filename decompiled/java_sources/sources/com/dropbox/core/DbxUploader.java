package com.dropbox.core;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.util.IOUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public abstract class DbxUploader<R, E, X extends DbxApiException> implements Closeable {

    /* renamed from: e */
    public final HttpRequestor.Uploader f16435e;

    /* renamed from: f */
    public final StoneSerializer<R> f16436f;

    /* renamed from: g */
    public final StoneSerializer<E> f16437g;

    /* renamed from: h */
    public boolean f16438h = false;

    /* renamed from: i */
    public boolean f16439i = false;

    /* renamed from: j */
    public final String f16440j;

    public DbxUploader(HttpRequestor.Uploader uploader, StoneSerializer<R> stoneSerializer, StoneSerializer<E> stoneSerializer2, String str) {
        this.f16435e = uploader;
        this.f16436f = stoneSerializer;
        this.f16437g = stoneSerializer2;
        this.f16440j = str;
    }

    public void abort() {
        this.f16435e.abort();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f16438h) {
            return;
        }
        this.f16435e.close();
        this.f16438h = true;
    }

    /* renamed from: f */
    public final void m9974f() {
        if (this.f16438h) {
            throw new IllegalStateException("This uploader is already closed.");
        }
        if (this.f16439i) {
            throw new IllegalStateException("This uploader is already finished and cannot be used to upload more data.");
        }
    }

    public R finish() throws DbxApiException, DbxException {
        m9974f();
        HttpRequestor.Response response = null;
        try {
            try {
                HttpRequestor.Response finish = this.f16435e.finish();
                try {
                    if (finish.getStatusCode() != 200) {
                        if (finish.getStatusCode() == 409) {
                            throw newException(DbxWrappedException.fromResponse(this.f16437g, finish, this.f16440j));
                        }
                        throw DbxRequestUtil.unexpectedStatus(finish);
                    }
                    R deserialize = this.f16436f.deserialize(finish.getBody());
                    IOUtil.closeQuietly(finish.getBody());
                    this.f16439i = true;
                    return deserialize;
                } catch (JsonProcessingException e) {
                    throw new BadResponseException(DbxRequestUtil.getRequestId(finish), "Bad JSON in response: " + e, e);
                }
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                IOUtil.closeQuietly(response.getBody());
            }
            this.f16439i = true;
            throw th;
        }
    }

    public OutputStream getOutputStream() {
        m9974f();
        return this.f16435e.getBody();
    }

    public abstract X newException(DbxWrappedException dbxWrappedException);

    public R uploadAndFinish(InputStream inputStream) throws DbxApiException, DbxException, IOException {
        return uploadAndFinish(inputStream, (IOUtil.ProgressListener) null);
    }

    public R uploadAndFinish(InputStream inputStream, IOUtil.ProgressListener progressListener) throws DbxApiException, DbxException, IOException {
        try {
            try {
                try {
                    this.f16435e.setProgressListener(progressListener);
                    this.f16435e.upload(inputStream);
                    return finish();
                } catch (IOException e) {
                    throw new NetworkIOException(e);
                }
            } catch (IOUtil.ReadException e2) {
                throw e2.getCause();
            }
        } finally {
            close();
        }
    }

    public R uploadAndFinish(InputStream inputStream, long j) throws DbxApiException, DbxException, IOException {
        return uploadAndFinish(IOUtil.limit(inputStream, j));
    }

    public R uploadAndFinish(InputStream inputStream, long j, IOUtil.ProgressListener progressListener) throws DbxApiException, DbxException, IOException {
        return uploadAndFinish(IOUtil.limit(inputStream, j), progressListener);
    }
}
