package com.dropbox.core.p006v2.contacts;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.contacts.C2426a;
import com.dropbox.core.p006v2.contacts.DeleteManualContactsError;
import com.dropbox.core.stone.StoneSerializers;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserContactsRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16897a;

    public DbxUserContactsRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16897a = dbxRawClientV2;
    }

    /* renamed from: a */
    public void m10369a(C2426a c2426a) throws DeleteManualContactsErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16897a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/contacts/delete_manual_contacts_batch", c2426a, false, C2426a.a.f16903b, StoneSerializers.void_(), DeleteManualContactsError.C2425b.f16901b);
        } catch (DbxWrappedException e) {
            throw new DeleteManualContactsErrorException("2/contacts/delete_manual_contacts_batch", e.getRequestId(), e.getUserMessage(), (DeleteManualContactsError) e.getErrorValue());
        }
    }

    public void deleteManualContacts() throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16897a;
            dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/contacts/delete_manual_contacts", null, false, StoneSerializers.void_(), StoneSerializers.void_(), StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"delete_manual_contacts\":" + e.getErrorValue());
        }
    }

    public void deleteManualContactsBatch(List<String> list) throws DeleteManualContactsErrorException, DbxException {
        m10369a(new C2426a(list));
    }
}
