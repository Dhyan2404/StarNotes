package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;
import com.dropbox.core.p006v2.files.ThumbnailV2Arg;

/* loaded from: classes4.dex */
public class DbxUserGetThumbnailV2Builder extends DbxDownloadStyleBuilder<PreviewResult> {

    /* renamed from: c */
    public final DbxUserFilesRequests f17090c;

    /* renamed from: d */
    public final ThumbnailV2Arg.Builder f17091d;

    public DbxUserGetThumbnailV2Builder(DbxUserFilesRequests dbxUserFilesRequests, ThumbnailV2Arg.Builder builder) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17090c = dbxUserFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17091d = builder;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<PreviewResult> start() throws ThumbnailV2ErrorException, DbxException {
        return this.f17090c.m10626C(this.f17091d.build(), getHeaders());
    }

    public DbxUserGetThumbnailV2Builder withFormat(ThumbnailFormat thumbnailFormat) {
        this.f17091d.withFormat(thumbnailFormat);
        return this;
    }

    public DbxUserGetThumbnailV2Builder withMode(ThumbnailMode thumbnailMode) {
        this.f17091d.withMode(thumbnailMode);
        return this;
    }

    public DbxUserGetThumbnailV2Builder withSize(ThumbnailSize thumbnailSize) {
        this.f17091d.withSize(thumbnailSize);
        return this;
    }
}
