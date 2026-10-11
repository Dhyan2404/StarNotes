package com.dropbox.core.p006v2.auth;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.stone.StoneSerializers;

/* loaded from: classes4.dex */
public class DbxUserAuthRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16812a;

    public DbxUserAuthRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16812a = dbxRawClientV2;
    }

    public void tokenRevoke() throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16812a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/auth/token/revoke", null, false, StoneSerializers.void_(), StoneSerializers.void_(), StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"token/revoke\":" + e.getErrorValue());
        }
    }
}
