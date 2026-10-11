package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.GroupCreateArg;
import com.dropbox.core.p006v2.teamcommon.GroupManagementType;

/* loaded from: classes4.dex */
public class GroupsCreateBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18222a;

    /* renamed from: b */
    public final GroupCreateArg.Builder f18223b;

    public GroupsCreateBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, GroupCreateArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18222a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18223b = builder;
    }

    public GroupFullInfo start() throws GroupCreateErrorException, DbxException {
        return this.f18222a.m12192f(this.f18223b.build());
    }

    public GroupsCreateBuilder withAddCreatorAsOwner(Boolean bool) {
        this.f18223b.withAddCreatorAsOwner(bool);
        return this;
    }

    public GroupsCreateBuilder withGroupExternalId(String str) {
        this.f18223b.withGroupExternalId(str);
        return this;
    }

    public GroupsCreateBuilder withGroupManagementType(GroupManagementType groupManagementType) {
        this.f18223b.withGroupManagementType(groupManagementType);
        return this;
    }
}
