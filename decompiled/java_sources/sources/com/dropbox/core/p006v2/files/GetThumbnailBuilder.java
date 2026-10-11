package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;
import com.dropbox.core.p006v2.files.ThumbnailArg;

/* loaded from: classes4.dex */
public class GetThumbnailBuilder extends DbxDownloadStyleBuilder<FileMetadata> {

    /* renamed from: c */
    public final DbxUserFilesRequests f17195c;

    /* renamed from: d */
    public final ThumbnailArg.Builder f17196d;

    public GetThumbnailBuilder(DbxUserFilesRequests dbxUserFilesRequests, ThumbnailArg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17195c = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17196d = builder;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<FileMetadata> start() throws ThumbnailErrorException, DbxException {
        return this.f17195c.m10624A(this.f17196d.build(), getHeaders());
    }

    public GetThumbnailBuilder withFormat(ThumbnailFormat thumbnailFormat) {
        this.f17196d.withFormat(thumbnailFormat);
        return this;
    }

    public GetThumbnailBuilder withMode(ThumbnailMode thumbnailMode) {
        this.f17196d.withMode(thumbnailMode);
        return this;
    }

    public GetThumbnailBuilder withSize(ThumbnailSize thumbnailSize) {
        this.f17196d.withSize(thumbnailSize);
        return this;
    }
}
