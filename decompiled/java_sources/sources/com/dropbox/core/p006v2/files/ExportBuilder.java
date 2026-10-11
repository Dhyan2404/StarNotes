package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;

/* loaded from: classes4.dex */
public class ExportBuilder extends DbxDownloadStyleBuilder<ExportResult> {

    /* renamed from: c */
    public final DbxUserFilesRequests f17134c;

    /* renamed from: d */
    public final String f17135d;

    public ExportBuilder(DbxUserFilesRequests dbxUserFilesRequests, String str) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17134c = dbxUserFilesRequests;
        this.f17135d = str;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<ExportResult> start() throws ExportErrorException, DbxException {
        return this.f17134c.m10679u(new ExportArg(this.f17135d), getHeaders());
    }
}
