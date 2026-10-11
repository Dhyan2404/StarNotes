package com.dropbox.core.p006v2;

import com.dropbox.core.p006v2.auth.DbxAppAuthRequests;
import com.dropbox.core.p006v2.check.DbxAppCheckRequests;
import com.dropbox.core.p006v2.files.DbxAppFilesRequests;

/* loaded from: classes4.dex */
public class DbxAppClientV2Base {
    protected final DbxRawClientV2 _client;

    /* renamed from: a */
    public final DbxAppAuthRequests f16740a;

    /* renamed from: b */
    public final DbxAppCheckRequests f16741b;

    /* renamed from: c */
    public final DbxAppFilesRequests f16742c;

    public DbxAppClientV2Base(DbxRawClientV2 dbxRawClientV2) {
        this._client = dbxRawClientV2;
        this.f16740a = new DbxAppAuthRequests(dbxRawClientV2);
        this.f16741b = new DbxAppCheckRequests(dbxRawClientV2);
        this.f16742c = new DbxAppFilesRequests(dbxRawClientV2);
    }

    public DbxAppAuthRequests auth() {
        return this.f16740a;
    }

    public DbxAppCheckRequests check() {
        return this.f16741b;
    }

    public DbxAppFilesRequests files() {
        return this.f16742c;
    }
}
