package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.CreateSharedLinkArg;

/* loaded from: classes4.dex */
public class CreateSharedLinkBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17698a;

    /* renamed from: b */
    public final CreateSharedLinkArg.Builder f17699b;

    public CreateSharedLinkBuilder(DbxUserSharingRequests dbxUserSharingRequests, CreateSharedLinkArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17698a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17699b = builder;
    }

    public PathLinkMetadata start() throws CreateSharedLinkErrorException, DbxException {
        return this.f17698a.m11541g(this.f17699b.build());
    }

    public CreateSharedLinkBuilder withPendingUpload(PendingUploadMode pendingUploadMode) {
        this.f17699b.withPendingUpload(pendingUploadMode);
        return this;
    }

    public CreateSharedLinkBuilder withShortUrl(Boolean bool) {
        this.f17699b.withShortUrl(bool);
        return this;
    }
}
