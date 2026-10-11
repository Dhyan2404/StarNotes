package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.MembersListArg;

/* loaded from: classes4.dex */
public class MembersListBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18369a;

    /* renamed from: b */
    public final MembersListArg.Builder f18370b;

    public MembersListBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, MembersListArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18369a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18370b = builder;
    }

    public MembersListResult start() throws MembersListErrorException, DbxException {
        return this.f18369a.m12168M(this.f18370b.build());
    }

    public MembersListBuilder withIncludeRemoved(Boolean bool) {
        this.f18370b.withIncludeRemoved(bool);
        return this;
    }

    public MembersListBuilder withLimit(Long l) {
        this.f18370b.withLimit(l);
        return this;
    }
}
