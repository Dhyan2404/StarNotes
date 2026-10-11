package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;
import com.dropbox.core.p006v2.sharing.GetSharedLinkMetadataArg;

/* loaded from: classes4.dex */
public class GetSharedLinkFileBuilder extends DbxDownloadStyleBuilder<SharedLinkMetadata> {

    /* renamed from: c */
    public final DbxUserSharingRequests f17748c;

    /* renamed from: d */
    public final GetSharedLinkMetadataArg.Builder f17749d;

    public GetSharedLinkFileBuilder(DbxUserSharingRequests dbxUserSharingRequests, GetSharedLinkMetadataArg.Builder builder) {
        if (dbxUserSharingRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17748c = dbxUserSharingRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17749d = builder;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<SharedLinkMetadata> start() throws GetSharedLinkFileErrorException, DbxException {
        return this.f17748c.m11546l(this.f17749d.build(), getHeaders());
    }

    public GetSharedLinkFileBuilder withLinkPassword(String str) {
        this.f17749d.withLinkPassword(str);
        return this;
    }

    public GetSharedLinkFileBuilder withPath(String str) {
        this.f17749d.withPath(str);
        return this;
    }
}
