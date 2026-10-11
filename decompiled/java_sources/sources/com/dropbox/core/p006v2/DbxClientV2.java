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
public class DbxClientV2 extends DbxClientV2Base {

    /* renamed from: com.dropbox.core.v2.DbxClientV2$a */
    /* loaded from: classes4.dex */
    public static final class C2360a extends DbxRawClientV2 {

        /* renamed from: g */
        public final DbxCredential f16743g;

        public C2360a(DbxRequestConfig dbxRequestConfig, DbxCredential dbxCredential, DbxHost dbxHost, String str, PathRoot pathRoot) {
            super(dbxRequestConfig, dbxHost, str, pathRoot);
            if (dbxCredential == null) {
                throw new NullPointerException("credential");
            }
            this.f16743g = dbxCredential;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public void addAuthHeaders(List<HttpRequestor.Header> list) {
            DbxRequestUtil.removeAuthHeader(list);
            DbxRequestUtil.addAuthHeader(list, this.f16743g.getAccessToken());
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        /* renamed from: b */
        public boolean mo10212b() {
            return this.f16743g.getRefreshToken() != null;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        /* renamed from: f */
        public boolean mo10213f() {
            return mo10212b() && this.f16743g.aboutToExpire();
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public DbxRefreshResult refreshAccessToken() throws DbxException {
            this.f16743g.refresh(getRequestConfig());
            return new DbxRefreshResult(this.f16743g.getAccessToken(), this.f16743g.getExpiresAt().longValue());
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public DbxRawClientV2 withPathRoot(PathRoot pathRoot) {
            return new C2360a(getRequestConfig(), this.f16743g, getHost(), getUserId(), pathRoot);
        }
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT, null);
    }

    public DbxRefreshResult refreshAccessToken() throws DbxException {
        return this._client.refreshAccessToken();
    }

    public DbxClientV2 withPathRoot(PathRoot pathRoot) {
        if (pathRoot != null) {
            return new DbxClientV2(this._client.withPathRoot(pathRoot));
        }
        throw new IllegalArgumentException("'pathRoot' should not be null");
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT, str2);
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, DbxCredential dbxCredential) {
        this(dbxRequestConfig, dbxCredential, DbxHost.DEFAULT, null, null);
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost) {
        this(dbxRequestConfig, str, dbxHost, null);
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost, String str2) {
        this(dbxRequestConfig, new DbxCredential(str), dbxHost, str2, null);
    }

    public DbxClientV2(DbxRequestConfig dbxRequestConfig, DbxCredential dbxCredential, DbxHost dbxHost, String str, PathRoot pathRoot) {
        super(new C2360a(dbxRequestConfig, dbxCredential, dbxHost, str, pathRoot));
    }

    public DbxClientV2(DbxRawClientV2 dbxRawClientV2) {
        super(dbxRawClientV2);
    }
}
