package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.MoveBatchArg;

/* loaded from: classes4.dex */
public class MoveBatchV2Builder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17276a;

    /* renamed from: b */
    public final MoveBatchArg.Builder f17277b;

    public MoveBatchV2Builder(DbxUserFilesRequests dbxUserFilesRequests, MoveBatchArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17276a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17277b = builder;
    }

    public RelocationBatchV2Launch start() throws DbxApiException, DbxException {
        return this.f17276a.m10637N(this.f17277b.build());
    }

    public MoveBatchV2Builder withAllowOwnershipTransfer(Boolean bool) {
        this.f17277b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public MoveBatchV2Builder withAutorename(Boolean bool) {
        this.f17277b.withAutorename(bool);
        return this;
    }
}
