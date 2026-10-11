package com.dropbox.core.p006v2;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.http.HttpRequestor;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class DbxDownloadStyleBuilder<R> {

    /* renamed from: a */
    public Long f16755a = null;

    /* renamed from: b */
    public Long f16756b = null;

    public R download(OutputStream outputStream) throws DbxException, IOException {
        return start().download(outputStream);
    }

    public List<HttpRequestor.Header> getHeaders() {
        if (this.f16755a == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        String format = String.format("bytes=%d-", Long.valueOf(this.f16755a.longValue()));
        if (this.f16756b != null) {
            format = format + Long.toString((this.f16755a.longValue() + this.f16756b.longValue()) - 1);
        }
        arrayList.add(new HttpRequestor.Header("Range", format));
        return arrayList;
    }

    public DbxDownloadStyleBuilder<R> range(long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("start must be non-negative");
        }
        if (j2 >= 1) {
            this.f16755a = Long.valueOf(j);
            this.f16756b = Long.valueOf(j2);
            return this;
        }
        throw new IllegalArgumentException("length must be positive");
    }

    public abstract DbxDownloader<R> start() throws DbxException;

    public DbxDownloadStyleBuilder<R> range(long j) {
        if (j >= 0) {
            this.f16755a = Long.valueOf(j);
            this.f16756b = null;
            return this;
        }
        throw new IllegalArgumentException("start must be non-negative");
    }
}
