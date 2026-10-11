package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;

/* loaded from: classes4.dex */
public class DownloadZipBuilder extends DbxDownloadStyleBuilder<DownloadZipResult> {

    /* renamed from: c */
    public final DbxUserFilesRequests f17127c;

    /* renamed from: d */
    public final String f17128d;

    public DownloadZipBuilder(DbxUserFilesRequests dbxUserFilesRequests, String str) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17127c = dbxUserFilesRequests;
        this.f17128d = str;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<DownloadZipResult> start() throws DownloadZipErrorException, DbxException {
        return this.f17127c.m10678t(new C2708d(this.f17128d), getHeaders());
    }
}
