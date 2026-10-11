package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.ListMemberDevicesArg;

/* loaded from: classes4.dex */
public class DevicesListMemberDevicesBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18149a;

    /* renamed from: b */
    public final ListMemberDevicesArg.Builder f18150b;

    public DevicesListMemberDevicesBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, ListMemberDevicesArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18149a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18150b = builder;
    }

    public ListMemberDevicesResult start() throws ListMemberDevicesErrorException, DbxException {
        return this.f18149a.m12182a(this.f18150b.build());
    }

    public DevicesListMemberDevicesBuilder withIncludeDesktopClients(Boolean bool) {
        this.f18150b.withIncludeDesktopClients(bool);
        return this;
    }

    public DevicesListMemberDevicesBuilder withIncludeMobileClients(Boolean bool) {
        this.f18150b.withIncludeMobileClients(bool);
        return this;
    }

    public DevicesListMemberDevicesBuilder withIncludeWebSessions(Boolean bool) {
        this.f18150b.withIncludeWebSessions(bool);
        return this;
    }
}
