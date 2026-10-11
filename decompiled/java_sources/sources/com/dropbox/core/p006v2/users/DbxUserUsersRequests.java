package com.dropbox.core.p006v2.users;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.p006v2.users.BasicAccount;
import com.dropbox.core.p006v2.users.C4453a;
import com.dropbox.core.p006v2.users.FullAccount;
import com.dropbox.core.p006v2.users.GetAccountArg;
import com.dropbox.core.p006v2.users.GetAccountBatchArg;
import com.dropbox.core.p006v2.users.GetAccountBatchError;
import com.dropbox.core.p006v2.users.GetAccountError;
import com.dropbox.core.p006v2.users.SpaceUsage;
import com.dropbox.core.p006v2.users.UserFeaturesGetValuesBatchError;
import com.dropbox.core.p006v2.users.UserFeaturesGetValuesBatchResult;
import com.dropbox.core.stone.StoneSerializers;
import java.util.List;

/* loaded from: classes4.dex */
public class DbxUserUsersRequests {

    /* renamed from: a */
    public final DbxRawClientV2 f20728a;

    public DbxUserUsersRequests(DbxRawClientV2 dbxRawClientV2) {
        this.f20728a = dbxRawClientV2;
    }

    /* renamed from: a */
    public UserFeaturesGetValuesBatchResult m16852a(C4453a c4453a) throws UserFeaturesGetValuesBatchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f20728a;
            return (UserFeaturesGetValuesBatchResult) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/users/features/get_values", c4453a, false, C4453a.a.f20763b, UserFeaturesGetValuesBatchResult.C4452a.f20761b, UserFeaturesGetValuesBatchError.C4451b.f20760b);
        } catch (DbxWrappedException e) {
            throw new UserFeaturesGetValuesBatchErrorException("2/users/features/get_values", e.getRequestId(), e.getUserMessage(), (UserFeaturesGetValuesBatchError) e.getErrorValue());
        }
    }

    /* renamed from: b */
    public BasicAccount m16853b(GetAccountArg getAccountArg) throws GetAccountErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f20728a;
            return (BasicAccount) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/users/get_account", getAccountArg, false, GetAccountArg.Serializer.INSTANCE, BasicAccount.Serializer.INSTANCE, GetAccountError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new GetAccountErrorException("2/users/get_account", e.getRequestId(), e.getUserMessage(), (GetAccountError) e.getErrorValue());
        }
    }

    /* renamed from: c */
    public List<BasicAccount> m16854c(GetAccountBatchArg getAccountBatchArg) throws GetAccountBatchErrorException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f20728a;
            return (List) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/users/get_account_batch", getAccountBatchArg, false, GetAccountBatchArg.Serializer.INSTANCE, StoneSerializers.list(BasicAccount.Serializer.INSTANCE), GetAccountBatchError.Serializer.INSTANCE);
        } catch (DbxWrappedException e) {
            throw new GetAccountBatchErrorException("2/users/get_account_batch", e.getRequestId(), e.getUserMessage(), (GetAccountBatchError) e.getErrorValue());
        }
    }

    public UserFeaturesGetValuesBatchResult featuresGetValues(List<UserFeature> list) throws UserFeaturesGetValuesBatchErrorException, DbxException {
        return m16852a(new C4453a(list));
    }

    public BasicAccount getAccount(String str) throws GetAccountErrorException, DbxException {
        return m16853b(new GetAccountArg(str));
    }

    public List<BasicAccount> getAccountBatch(List<String> list) throws GetAccountBatchErrorException, DbxException {
        return m16854c(new GetAccountBatchArg(list));
    }

    public FullAccount getCurrentAccount() throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f20728a;
            return (FullAccount) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/users/get_current_account", null, false, StoneSerializers.void_(), FullAccount.C4435a.f20733b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"get_current_account\":" + e.getErrorValue());
        }
    }

    public SpaceUsage getSpaceUsage() throws DbxApiException, DbxException {
        try {
            DbxRawClientV2 dbxRawClientV2 = this.f20728a;
            return (SpaceUsage) dbxRawClientV2.rpcStyle(dbxRawClientV2.getHost().getApi(), "2/users/get_space_usage", null, false, StoneSerializers.void_(), SpaceUsage.C4444a.f20749b, StoneSerializers.void_());
        } catch (DbxWrappedException e) {
            throw new DbxApiException(e.getRequestId(), e.getUserMessage(), "Unexpected error response for \"get_space_usage\":" + e.getErrorValue());
        }
    }
}
