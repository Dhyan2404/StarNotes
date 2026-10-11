package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.RelocationArg;

/* loaded from: classes4.dex */
public class MoveV2Builder {

    /* renamed from: a */
    public final DbxUserFilesRequests f17282a;

    /* renamed from: b */
    public final RelocationArg.Builder f17283b;

    public MoveV2Builder(DbxUserFilesRequests dbxUserFilesRequests, RelocationArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17282a = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17283b = builder;
    }

    public RelocationResult start() throws RelocationErrorException, DbxException {
        return this.f17282a.m10638O(this.f17283b.build());
    }

    public MoveV2Builder withAllowOwnershipTransfer(Boolean bool) {
        this.f17283b.withAllowOwnershipTransfer(bool);
        return this;
    }

    public MoveV2Builder withAllowSharedFolder(Boolean bool) {
        this.f17283b.withAllowSharedFolder(bool);
        return this;
    }

    public MoveV2Builder withAutorename(Boolean bool) {
        this.f17283b.withAutorename(bool);
        return this;
    }
}
