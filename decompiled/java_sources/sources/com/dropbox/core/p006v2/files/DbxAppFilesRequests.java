package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.files.PreviewResult;
import com.dropbox.core.p006v2.files.ThumbnailV2Arg;
import com.dropbox.core.p006v2.files.ThumbnailV2Error;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxAppFilesRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f17086a;

    public DbxAppFilesRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f17086a = dbxRawClientV2;
    }

    /* renamed from: a */
    public DbxDownloader<PreviewResult> m10623a(ThumbnailV2Arg thumbnailV2Arg, List<HttpRequestor.Header> list) throws ThumbnailV2ErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f17086a;
            return dbxRawClientV2.downloadStyle(dbxRawClientV2.getHost().getContent(), "2/files/get_thumbnail_v2", thumbnailV2Arg, false, list, ThumbnailV2Arg.C2674a.f17430b, PreviewResult.C2608a.f17294b, ThumbnailV2Error.C2676b.f17434b);
        } catch (DbxWrappedException e) {
            throw new ThumbnailV2ErrorException("2/files/get_thumbnail_v2", e.getRequestId(), e.getUserMessage(), (ThumbnailV2Error) e.getErrorValue());
        }
    }

    public DbxDownloader<PreviewResult> getThumbnailV2(PathOrLink pathOrLink) throws ThumbnailV2ErrorException, DbxException {
        return m10623a(new ThumbnailV2Arg(pathOrLink), Collections.emptyList());
    }

    public DbxAppGetThumbnailV2Builder getThumbnailV2Builder(PathOrLink pathOrLink) {
        return new DbxAppGetThumbnailV2Builder(this, ThumbnailV2Arg.m11108e(pathOrLink));
    }
}
