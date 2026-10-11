package com.dropbox.core.p006v2.check;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.check.C2384a;
import com.dropbox.core.p006v2.check.EchoResult;
import com.dropbox.core.stone.StoneSerializers;

/* loaded from: classes4.dex */
public class DbxAppCheckRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16823a;

    public DbxAppCheckRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16823a = dbxRawClientV2;
    }

    /* renamed from: a */
    public EchoResult m10260a(C2384a c2384a) throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16823a;
            return (EchoResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/check/app", c2384a, false, C2384a.a.f16827b, EchoResult.C2383a.f16825b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"app\":" + e.getErrorValue());
        }
    }

    public EchoResult app() throws DbxApiException, DbxException {
        return m10260a(new C2384a());
    }

    public EchoResult app(String str) throws DbxApiException, DbxException {
        if (str != null) {
            return m10260a(new C2384a(str));
        }
        throw new IllegalArgumentException("Required value for 'query' is null");
    }
}
