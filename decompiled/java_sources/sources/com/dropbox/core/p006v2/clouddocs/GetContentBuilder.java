package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;

/* loaded from: classes4.dex */
public class GetContentBuilder extends DbxDownloadStyleBuilder<Void> {

    /* renamed from: c */
    public final DbxUserCloudDocsRequests f16836c;

    /* renamed from: d */
    public final String f16837d;

    public GetContentBuilder(DbxUserCloudDocsRequests dbxUserCloudDocsRequests, String str) {
        if (dbxUserCloudDocsRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f16836c = dbxUserCloudDocsRequests;
        this.f16837d = str;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<Void> start() throws CloudDocsAccessErrorException, DbxException {
        return this.f16836c.m10274a(new C2415a(this.f16837d), getHeaders());
    }
}
