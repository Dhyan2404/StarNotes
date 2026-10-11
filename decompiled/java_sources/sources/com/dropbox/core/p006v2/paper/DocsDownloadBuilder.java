package com.dropbox.core.p006v2.paper;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;

/* loaded from: classes4.dex */
public class DocsDownloadBuilder extends DbxDownloadStyleBuilder<PaperDocExportResult> {

    /* renamed from: c */
    public final DbxUserPaperRequests f17554c;

    /* renamed from: d */
    public final String f17555d;

    /* renamed from: e */
    public final ExportFormat f17556e;

    public DocsDownloadBuilder(DbxUserPaperRequests dbxUserPaperRequests, String str, ExportFormat exportFormat) {
        if (dbxUserPaperRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17554c = dbxUserPaperRequests;
        this.f17555d = str;
        this.f17556e = exportFormat;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<PaperDocExportResult> start() throws DocLookupErrorException, DbxException {
        return this.f17554c.m11307c(new C2787f(this.f17555d, this.f17556e), getHeaders());
    }
}
