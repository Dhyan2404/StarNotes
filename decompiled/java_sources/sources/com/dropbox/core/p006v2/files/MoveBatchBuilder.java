package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.RelocationBatchArg;

/* loaded from: classes4.dex */
public class MoveBatchBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17274a;

    /* renamed from: b */
    public final RelocationBatchArg.Builder f17275b;

    public MoveBatchBuilder(DbxUserFilesRequests dbxUserFilesRequests, RelocationBatchArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17274a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17275b = builder;
    }

    public RelocationBatchLaunch start() throws DbxApiException, DbxException {
        return this.f17274a.m10634K(this.f17275b.build());
    }

    public MoveBatchBuilder withAllowOwnershipTransfer(Boolean bool) {
        this.f17275b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public MoveBatchBuilder withAllowSharedFolder(Boolean bool) {
        this.f17275b.withAllowSharedFolder(bool);
        return this;
    }

    public MoveBatchBuilder withAutorename(Boolean bool) {
        this.f17275b.withAutorename(bool);
        return this;
    }
}
