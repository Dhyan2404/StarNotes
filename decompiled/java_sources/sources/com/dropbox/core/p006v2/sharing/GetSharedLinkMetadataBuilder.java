package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.sharing.GetSharedLinkMetadataArg;

/* loaded from: classes4.dex */
public class GetSharedLinkMetadataBuilder {

    /* renamed from: a */
    public final DbxUserSharingRequests f17756a;

    /* renamed from: b */
    public final GetSharedLinkMetadataArg.Builder f17757b;

    public GetSharedLinkMetadataBuilder(DbxUserSharingRequests dbxUserSharingRequests, GetSharedLinkMetadataArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17756a = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17757b = builder;
    }

    public SharedLinkMetadata start() throws SharedLinkErrorException, DbxException {
        return this.f17756a.m11547m(this.f17757b.build());
    }

    public GetSharedLinkMetadataBuilder withLinkPassword(String str) {
        this.f17757b.withLinkPassword(str);
        return this;
    }

    public GetSharedLinkMetadataBuilder withPath(String str) {
        this.f17757b.withPath(str);
        return this;
    }
}
