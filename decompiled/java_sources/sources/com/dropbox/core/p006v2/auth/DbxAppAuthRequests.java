package com.dropbox.core.p006v2.auth;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.auth.C2382a;
import com.dropbox.core.p006v2.auth.TokenFromOAuth1Error;
import com.dropbox.core.p006v2.auth.TokenFromOAuth1Result;

/* loaded from: classes4.dex */
public class DbxAppAuthRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16811a;

    public DbxAppAuthRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16811a = dbxRawClientV2;
    }

    /* renamed from: a */
    public TokenFromOAuth1Result m10250a(C2382a c2382a) throws TokenFromOAuth1ErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16811a;
            return (TokenFromOAuth1Result) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/auth/token/from_oauth1", c2382a, false, C2382a.a.f16821b, TokenFromOAuth1Result.C2381a.f16818b, TokenFromOAuth1Error.C2380b.f16817b);
        } catch (DbxWrappedException e) {
            throw new TokenFromOAuth1ErrorException("2/auth/token/from_oauth1", e.getRequestId(), e.getUserMessage(), (TokenFromOAuth1Error) e.getErrorValue());
        }
    }

    public TokenFromOAuth1Result tokenFromOauth1(String str, String str2) throws TokenFromOAuth1ErrorException, DbxException {
        return m10250a(new C2382a(str, str2));
    }
}
