package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.RelocationArg;

/* loaded from: classes4.dex */
public class CopyBuilder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17048a;

    /* renamed from: b */
    public final RelocationArg.Builder f17049b;

    public CopyBuilder(DbxUserFilesRequests dbxUserFilesRequests, RelocationArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17048a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17049b = builder;
    }

    public Metadata start() throws RelocationErrorException, DbxException {
        return this.f17048a.m10654c(this.f17049b.build());
    }

    public CopyBuilder withAllowOwnershipTransfer(Boolean bool) {
        this.f17049b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public CopyBuilder withAllowSharedFolder(Boolean bool) {
        this.f17049b.withAllowSharedFolder(bool);
        return this;
    }

    public CopyBuilder withAutorename(Boolean bool) {
        this.f17049b.withAutorename(bool);
        return this;
    }
}
