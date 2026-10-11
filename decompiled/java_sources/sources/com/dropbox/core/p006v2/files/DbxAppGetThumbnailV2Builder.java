package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;
import com.dropbox.core.p006v2.files.ThumbnailV2Arg;

/* loaded from: classes4.dex */
public class DbxAppGetThumbnailV2Builder extends DbxDownloadStyleBuilder<PreviewResult> {

    /* renamed from: c */
    public final DbxAppFilesRequests f17087c;

    /* renamed from: d */
    public final ThumbnailV2Arg.Builder f17088d;

    public DbxAppGetThumbnailV2Builder(DbxAppFilesRequests dbxAppFilesRequests, ThumbnailV2Arg.Builder builder) {
        if (dbxAppFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17087c = dbxAppFilesRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f17088d = builder;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<PreviewResult> start() throws ThumbnailV2ErrorException, DbxException {
        return this.f17087c.m10623a(this.f17088d.build(), getHeaders());
    }

    public DbxAppGetThumbnailV2Builder withFormat(ThumbnailFormat thumbnailFormat) {
        this.f17088d.withFormat(thumbnailFormat);
        return this;
    }

    public DbxAppGetThumbnailV2Builder withMode(ThumbnailMode thumbnailMode) {
        this.f17088d.withMode(thumbnailMode);
        return this;
    }

    public DbxAppGetThumbnailV2Builder withSize(ThumbnailSize thumbnailSize) {
        this.f17088d.withSize(thumbnailSize);
        return this;
    }
}
