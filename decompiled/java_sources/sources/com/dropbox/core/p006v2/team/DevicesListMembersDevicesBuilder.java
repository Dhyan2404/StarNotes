package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.ListMembersDevicesArg;

/* loaded from: classes4.dex */
public class DevicesListMembersDevicesBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18151a;

    /* renamed from: b */
    public final ListMembersDevicesArg.Builder f18152b;

    public DevicesListMembersDevicesBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, ListMembersDevicesArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18151a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18152b = builder;
    }

    public ListMembersDevicesResult start() throws ListMembersDevicesErrorException, DbxException {
        return this.f18151a.m12184b(this.f18152b.build());
    }

    public DevicesListMembersDevicesBuilder withCursor(String str) {
        this.f18152b.withCursor(str);
        return this;
    }

    public DevicesListMembersDevicesBuilder withIncludeDesktopClients(Boolean bool) {
        this.f18152b.withIncludeDesktopClients(bool);
        return this;
    }

    public DevicesListMembersDevicesBuilder withIncludeMobileClients(Boolean bool) {
        this.f18152b.withIncludeMobileClients(bool);
        return this;
    }

    public DevicesListMembersDevicesBuilder withIncludeWebSessions(Boolean bool) {
        this.f18152b.withIncludeWebSessions(bool);
        return this;
    }
}
