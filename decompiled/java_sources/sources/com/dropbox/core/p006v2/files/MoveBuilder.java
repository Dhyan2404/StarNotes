package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.RelocationArg;

/* loaded from: classes4.dex */
public class MoveBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17278a;

    /* renamed from: b */
    public final RelocationArg.Builder f17279b;

    public MoveBuilder(DbxUserFilesRequests dbxUserFilesRequests, RelocationArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17278a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17279b = builder;
    }

    public Metadata start() throws RelocationErrorException, DbxException {
        return this.f17278a.m10633J(this.f17279b.build());
    }

    public MoveBuilder withAllowOwnershipTransfer(Boolean bool) {
        this.f17279b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public MoveBuilder withAllowSharedFolder(Boolean bool) {
        this.f17279b.withAllowSharedFolder(bool);
        return this;
    }

    public MoveBuilder withAutorename(Boolean bool) {
        this.f17279b.withAutorename(bool);
        return this;
    }
}
