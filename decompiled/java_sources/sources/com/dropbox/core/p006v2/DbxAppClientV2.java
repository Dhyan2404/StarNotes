package com.dropbox.core.p006v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.oauth.DbxRefreshResult;
import com.dropbox.core.p006v2.common.PathRoot;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxAppClientV2 extends DbxAppClientV2Base {

    /* renamed from: com.dropbox.core.v2.DbxAppClientV2$b */
    /* loaded from: classes4.dex */
    public static final class C2359b extends DbxRawClientV2 {

        /* renamed from: g */
        public final String f16738g;

        /* renamed from: h */
        public final String f16739h;

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public void addAuthHeaders(List<HttpRequestor.Header> list) {
            DbxRequestUtil.removeAuthHeader(list);
            DbxRequestUtil.addBasicAuthHeader(list, this.f16738g, this.f16739h);
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        /* renamed from: b */
        public boolean mo10212b() {
            return false;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        /* renamed from: f */
        public boolean mo10213f() {
            return false;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public DbxRefreshResult refreshAccessToken() {
            return null;
        }

        @Override // com.dropbox.core.p006v2.DbxRawClientV2
        public DbxRawClientV2 withPathRoot(PathRoot pathRoot) {
            throw new UnsupportedOperationException("App endpoints don't support Dropbox-API-Path-Root header.");
        }

        public C2359b(DbxRequestConfig dbxRequestConfig, String str, String str2, DbxHost dbxHost, String str3) {
            super(dbxRequestConfig, dbxHost, str3, null);
            this.f16738g = str;
            this.f16739h = str2;
        }
    }

    public DbxAppClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2) {
        this(dbxRequestConfig, str, str2, DbxHost.DEFAULT);
    }

    public DbxAppClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2, DbxHost dbxHost) {
        super(new C2359b(dbxRequestConfig, str, str2, dbxHost, null));
    }

    public DbxAppClientV2(DbxRequestConfig dbxRequestConfig, String str, String str2, DbxHost dbxHost, String str3) {
        super(new C2359b(dbxRequestConfig, str, str2, dbxHost, str3));
    }
}
