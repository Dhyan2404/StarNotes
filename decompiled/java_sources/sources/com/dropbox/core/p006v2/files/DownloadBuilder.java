package com.dropbox.core.p006v2.files;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.DbxDownloadStyleBuilder;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class DownloadBuilder extends DbxDownloadStyleBuilder<FileMetadata> {

    /* renamed from: c */
    public final DbxUserFilesRequests f17120c;

    /* renamed from: d */
    public final String f17121d;

    /* renamed from: e */
    public String f17122e;

    public DownloadBuilder(DbxUserFilesRequests dbxUserFilesRequests, String str) {
        if (dbxUserFilesRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f17120c = dbxUserFilesRequests;
        this.f17121d = str;
        this.f17122e = null;
    }

    @Override // com.dropbox.core.p006v2.DbxDownloadStyleBuilder
    public DbxDownloader<FileMetadata> start() throws DownloadErrorException, DbxException {
        return this.f17120c.m10677s(new C2707c(this.f17121d, this.f17122e), getHeaders());
    }

    public DownloadBuilder withRev(String str) {
        if (str != null) {
            if (str.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
        }
        this.f17122e = str;
        return this;
    }
}
