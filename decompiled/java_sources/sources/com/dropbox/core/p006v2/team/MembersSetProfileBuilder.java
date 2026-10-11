package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.MembersSetProfileArg;

/* loaded from: classes4.dex */
public class MembersSetProfileBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18400a;

    /* renamed from: b */
    public final MembersSetProfileArg.Builder f18401b;

    public MembersSetProfileBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, MembersSetProfileArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18400a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18401b = builder;
    }

    public TeamMemberInfo start() throws MembersSetProfileErrorException, DbxException {
        return this.f18400a.m12179X(this.f18401b.build());
    }

    public MembersSetProfileBuilder withNewEmail(String str) {
        this.f18401b.withNewEmail(str);
        return this;
    }

    public MembersSetProfileBuilder withNewExternalId(String str) {
        this.f18401b.withNewExternalId(str);
        return this;
    }

    public MembersSetProfileBuilder withNewGivenName(String str) {
        this.f18401b.withNewGivenName(str);
        return this;
    }

    public MembersSetProfileBuilder withNewIsDirectoryRestricted(Boolean bool) {
        this.f18401b.withNewIsDirectoryRestricted(bool);
        return this;
    }

    public MembersSetProfileBuilder withNewPersistentId(String str) {
        this.f18401b.withNewPersistentId(str);
        return this;
    }

    public MembersSetProfileBuilder withNewSurname(String str) {
        this.f18401b.withNewSurname(str);
        return this;
    }
}
