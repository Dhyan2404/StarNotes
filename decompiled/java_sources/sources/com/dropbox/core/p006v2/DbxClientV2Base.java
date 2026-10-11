package com.dropbox.core.p006v2;

import com.dropbox.core.p006v2.account.DbxUserAccountRequests;
import com.dropbox.core.p006v2.auth.DbxUserAuthRequests;
import com.dropbox.core.p006v2.check.DbxUserCheckRequests;
import com.dropbox.core.p006v2.clouddocs.DbxUserCloudDocsRequests;
import com.dropbox.core.p006v2.contacts.DbxUserContactsRequests;
import com.dropbox.core.p006v2.fileproperties.DbxUserFilePropertiesRequests;
import com.dropbox.core.p006v2.filerequests.DbxUserFileRequestsRequests;
import com.dropbox.core.p006v2.files.DbxUserFilesRequests;
import com.dropbox.core.p006v2.paper.DbxUserPaperRequests;
import com.dropbox.core.p006v2.sharing.DbxUserSharingRequests;
import com.dropbox.core.p006v2.users.DbxUserUsersRequests;

/* loaded from: classes4.dex */
public class DbxClientV2Base {
    protected final DbxRawClientV2 _client;

    /* renamed from: a */
    public final DbxUserAccountRequests f16744a;

    /* renamed from: b */
    public final DbxUserAuthRequests f16745b;

    /* renamed from: c */
    public final DbxUserCheckRequests f16746c;

    /* renamed from: d */
    public final DbxUserCloudDocsRequests f16747d;

    /* renamed from: e */
    public final DbxUserContactsRequests f16748e;

    /* renamed from: f */
    public final DbxUserFilePropertiesRequests f16749f;

    /* renamed from: g */
    public final DbxUserFileRequestsRequests f16750g;

    /* renamed from: h */
    public final DbxUserFilesRequests f16751h;

    /* renamed from: i */
    public final DbxUserPaperRequests f16752i;

    /* renamed from: j */
    public final DbxUserSharingRequests f16753j;

    /* renamed from: k */
    public final DbxUserUsersRequests f16754k;

    public DbxClientV2Base(DbxRawClientV2 dbxRawClientV2) {
        this._client = dbxRawClientV2;
        this.f16744a = new DbxUserAccountRequests(dbxRawClientV2);
        this.f16745b = new DbxUserAuthRequests(dbxRawClientV2);
        this.f16746c = new DbxUserCheckRequests(dbxRawClientV2);
        this.f16747d = new DbxUserCloudDocsRequests(dbxRawClientV2);
        this.f16748e = new DbxUserContactsRequests(dbxRawClientV2);
        this.f16749f = new DbxUserFilePropertiesRequests(dbxRawClientV2);
        this.f16750g = new DbxUserFileRequestsRequests(dbxRawClientV2);
        this.f16751h = new DbxUserFilesRequests(dbxRawClientV2);
        this.f16752i = new DbxUserPaperRequests(dbxRawClientV2);
        this.f16753j = new DbxUserSharingRequests(dbxRawClientV2);
        this.f16754k = new DbxUserUsersRequests(dbxRawClientV2);
    }

    public DbxUserAccountRequests account() {
        return this.f16744a;
    }

    public DbxUserAuthRequests auth() {
        return this.f16745b;
    }

    public DbxUserCheckRequests check() {
        return this.f16746c;
    }

    public DbxUserCloudDocsRequests cloudDocs() {
        return this.f16747d;
    }

    public DbxUserContactsRequests contacts() {
        return this.f16748e;
    }

    public DbxUserFilePropertiesRequests fileProperties() {
        return this.f16749f;
    }

    public DbxUserFileRequestsRequests fileRequests() {
        return this.f16750g;
    }

    public DbxUserFilesRequests files() {
        return this.f16751h;
    }

    public DbxUserPaperRequests paper() {
        return this.f16752i;
    }

    public DbxUserSharingRequests sharing() {
        return this.f16753j;
    }

    public DbxUserUsersRequests users() {
        return this.f16754k;
    }
}
