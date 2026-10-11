package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.async.LaunchEmptyResult;
import com.dropbox.core.p006v2.team.MembersRemoveArg;

/* loaded from: classes4.dex */
public class MembersRemoveBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18383a;

    /* renamed from: b */
    public final MembersRemoveArg.Builder f18384b;

    public MembersRemoveBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, MembersRemoveArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18383a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18384b = builder;
    }

    public LaunchEmptyResult start() throws MembersRemoveErrorException, DbxException {
        return this.f18383a.m12173R(this.f18384b.build());
    }

    public MembersRemoveBuilder withKeepAccount(Boolean bool) {
        this.f18384b.withKeepAccount(bool);
        return this;
    }

    public MembersRemoveBuilder withRetainTeamShares(Boolean bool) {
        this.f18384b.withRetainTeamShares(bool);
        return this;
    }

    public MembersRemoveBuilder withTransferAdminId(UserSelectorArg userSelectorArg) {
        this.f18384b.withTransferAdminId(userSelectorArg);
        return this;
    }

    public MembersRemoveBuilder withTransferDestId(UserSelectorArg userSelectorArg) {
        this.f18384b.withTransferDestId(userSelectorArg);
        return this;
    }

    public MembersRemoveBuilder withWipeData(Boolean bool) {
        this.f18384b.withWipeData(bool);
        return this;
    }
}
