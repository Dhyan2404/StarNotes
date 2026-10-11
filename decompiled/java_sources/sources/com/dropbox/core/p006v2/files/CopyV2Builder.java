package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.RelocationArg;

/* loaded from: classes4.dex */
public class CopyV2Builder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17050a;

    /* renamed from: b */
    public final RelocationArg.Builder f17051b;

    public CopyV2Builder(DbxUserFilesRequests dbxUserFilesRequests, RelocationArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17050a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17051b = builder;
    }

    public RelocationResult start() throws RelocationErrorException, DbxException {
        return this.f17050a.m10668j(this.f17051b.build());
    }

    public CopyV2Builder withAllowOwnershipTransfer(Boolean bool) {
        this.f17051b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public CopyV2Builder withAllowSharedFolder(Boolean bool) {
        this.f17051b.withAllowSharedFolder(bool);
        return this;
    }

    public CopyV2Builder withAutorename(Boolean bool) {
        this.f17051b.withAutorename(bool);
        return this;
    }
}
