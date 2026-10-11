package com.dropbox.core.p006v2;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.oauth.DbxCredential;
import com.dropbox.core.oauth.DbxRefreshResult;
import com.dropbox.core.p006v2.common.PathRoot;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxTeamClientV2 extends DbxTeamClientV2Base {

    /* renamed from: d */
    public final DbxCredential f16781d;

    /* renamed from: com.dropbox.core.v2.DbxTeamClientV2$b */
    /* loaded from: classes4.dex */
    public static final class C2365b extends DbxRawClientV2 {

        /* renamed from: g */
        public final DbxCredential f16782g;

        /* renamed from: h */
        public final String f16783h;

        /* renamed from: i */
        public final String f16784i;

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public void addAuthHeaders(List<HttpRequestor.Header> list) {
            DbxRequestUtil.removeAuthHeader(list);
            DbxRequestUtil.addAuthHeader(list, this.f16782g.getAccessToken());
            String str = this.f16783h;
            if (str != null) {
                DbxRequestUtil.addSelectUserHeader(list, str);
            }
            String str2 = this.f16784i;
            if (str2 != null) {
                DbxRequestUtil.addSelectAdminHeader(list, str2);
            }
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        /* renamed from: b */
        public boolean mo10212b() {
            return this.f16782g.getRefreshToken() != null;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        /* renamed from: f */
        public boolean mo10213f() {
            return mo10212b() && this.f16782g.aboutToExpire();
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public DbxRefreshResult refreshAccessToken() throws DbxException {
            this.f16782g.refresh(getRequestConfig());
            return new DbxRefreshResult(this.f16782g.getAccessToken(), this.f16782g.getExpiresAt().longValue());
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public DbxRawClientV2 withPathRoot(PathRoot pathRoot) {
            return new C2365b(getRequestConfig(), this.f16782g, getHost(), getUserId(), this.f16783h, this.f16784i, pathRoot);
        }

        public C2365b(DbxRequestConfig dbxRequestConfig, DbxCredential dbxCredential, DbxHost dbxHost, String str, String str2, String str3, PathRoot pathRoot) {
            super(dbxRequestConfig, dbxHost, str, pathRoot);
            if (dbxCredential != null) {
                this.f16782g = dbxCredential;
                this.f16783h = str2;
                this.f16784i = str3;
                return;
            }
            throw new NullPointerException("credential");
        }
    }

    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, String str) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT);
    }

    public DbxClientV2 asAdmin(String str) {
        if (str != null) {
            return new DbxClientV2(new C2365b(this._client.getRequestConfig(), this.f16781d, this._client.getHost(), this._client.getUserId(), null, str, null));
        }
        throw new IllegalArgumentException("'adminId' should not be null");
    }

    public DbxClientV2 asMember(String str) {
        if (str != null) {
            return new DbxClientV2(new C2365b(this._client.getRequestConfig(), this.f16781d, this._client.getHost(), this._client.getUserId(), str, null, null));
        }
        throw new IllegalArgumentException("'memberId' should not be null");
    }

    public DbxRefreshResult refreshAccessToken() throws DbxException {
        return this._client.refreshAccessToken();
    }

    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost) {
        this(dbxRequestConfig, str, dbxHost, (String) null);
    }

    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, DbxCredential dbxCredential) {
        this(dbxRequestConfig, dbxCredential, DbxHost.DEFAULT, (String) null);
    }

    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost, String str2) {
        this(dbxRequestConfig, new DbxCredential(str), dbxHost, str2);
    }

    public DbxTeamClientV2(DbxRequestConfig dbxRequestConfig, DbxCredential dbxCredential, DbxHost dbxHost, String str) {
        super(new C2365b(dbxRequestConfig, dbxCredential, dbxHost, str, null, null, null));
        this.f16781d = dbxCredential;
    }
}
