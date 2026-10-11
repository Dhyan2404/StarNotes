package com.dropbox.core.p006v2.account;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.account.C2369a;
import com.dropbox.core.p006v2.account.SetProfilePhotoError;
import com.dropbox.core.p006v2.account.SetProfilePhotoResult;

/* loaded from: classes4.dex */
public class DbxUserAccountRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f16788a;

    public DbxUserAccountRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f16788a = dbxRawClientV2;
    }

    /* renamed from: a */
    public SetProfilePhotoResult m10226a(C2369a c2369a) throws SetProfilePhotoErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f16788a;
            return (SetProfilePhotoResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/account/set_profile_photo", c2369a, false, C2369a.a.f16795b, SetProfilePhotoResult.C2368a.f16793b, SetProfilePhotoError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new SetProfilePhotoErrorException("2/account/set_profile_photo", e.getRequestId(), e.getUserMessage(), (SetProfilePhotoError) e.getErrorValue());
        }
    }

    public SetProfilePhotoResult setProfilePhoto(PhotoSourceArg photoSourceArg) throws SetProfilePhotoErrorException, DbxException {
        return m10226a(new C2369a(photoSourceArg));
    }
}
