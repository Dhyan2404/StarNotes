package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.GroupUpdateArgs;
import com.dropbox.core.p006v2.teamcommon.GroupManagementType;

/* loaded from: classes4.dex */
public class GroupsUpdateBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18244a;

    /* renamed from: b */
    public final GroupUpdateArgs.Builder f18245b;

    public GroupsUpdateBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, GroupUpdateArgs.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18244a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18245b = builder;
    }

    public GroupFullInfo start() throws GroupUpdateErrorException, DbxException {
        return this.f18244a.m12210o(this.f18245b.build());
    }

    public GroupsUpdateBuilder withNewGroupExternalId(String str) {
        this.f18245b.withNewGroupExternalId(str);
        return this;
    }

    public GroupsUpdateBuilder withNewGroupManagementType(GroupManagementType groupManagementType) {
        this.f18245b.withNewGroupManagementType(groupManagementType);
        return this;
    }

    public GroupsUpdateBuilder withNewGroupName(String str) {
        this.f18245b.withNewGroupName(str);
        return this;
    }

    public GroupsUpdateBuilder withReturnMembers(Boolean bool) {
        this.f18245b.withReturnMembers(bool);
        return this;
    }
}
