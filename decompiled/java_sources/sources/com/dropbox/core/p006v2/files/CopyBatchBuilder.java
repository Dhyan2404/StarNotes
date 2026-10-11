package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.RelocationBatchArg;

/* loaded from: classes4.dex */
public class CopyBatchBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17046a;

    /* renamed from: b */
    public final RelocationBatchArg.Builder f17047b;

    public CopyBatchBuilder(DbxUserFilesRequests dbxUserFilesRequests, RelocationBatchArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17046a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17047b = builder;
    }

    public RelocationBatchLaunch start() throws DbxApiException, DbxException {
        return this.f17046a.m10656d(this.f17047b.build());
    }

    public CopyBatchBuilder withAllowOwnershipTransfer(Boolean bool) {
        this.f17047b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public CopyBatchBuilder withAllowSharedFolder(Boolean bool) {
        this.f17047b.withAllowSharedFolder(bool);
        return this;
    }

    public CopyBatchBuilder withAutorename(Boolean bool) {
        this.f17047b.withAutorename(bool);
        return this;
    }
}
