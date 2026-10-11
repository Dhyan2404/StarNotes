package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class GetPreviewBuilder extends DbxDownloadStyleBuilder<FileMetadata> {

    /* renamed from: c */
    public final DbxUserFilesRequests f17177c;

    /* renamed from: d */
    public final String f17178d;

    /* renamed from: e */
    public String f17179e;

    public GetPreviewBuilder(DbxUserFilesRequests dbxUserFilesRequests, String str) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17177c = dbxUserFilesRequests;
        this.f17178d = str;
        this.f17179e = null;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<FileMetadata> start() throws PreviewErrorException, DbxException {
        return this.f17177c.m10682x(new C2716l(this.f17178d, this.f17179e), getHeaders());
    }

    public GetPreviewBuilder withRev(String str) {
        if (str != null) {
            if (str.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
        }
        this.f17179e = str;
        return this;
    }
}
