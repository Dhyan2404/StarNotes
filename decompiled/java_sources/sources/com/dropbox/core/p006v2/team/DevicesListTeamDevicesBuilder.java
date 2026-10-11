package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.team.ListTeamDevicesArg;

/* loaded from: classes4.dex */
public class DevicesListTeamDevicesBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18153a;

    /* renamed from: b */
    public final ListTeamDevicesArg.Builder f18154b;

    public DevicesListTeamDevicesBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, ListTeamDevicesArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18153a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18154b = builder;
    }

    public ListTeamDevicesResult start() throws ListTeamDevicesErrorException, DbxException {
        return this.f18153a.m12186c(this.f18154b.build());
    }

    public DevicesListTeamDevicesBuilder withCursor(String str) {
        this.f18154b.withCursor(str);
        return this;
    }

    public DevicesListTeamDevicesBuilder withIncludeDesktopClients(Boolean bool) {
        this.f18154b.withIncludeDesktopClients(bool);
        return this;
    }

    public DevicesListTeamDevicesBuilder withIncludeMobileClients(Boolean bool) {
        this.f18154b.withIncludeMobileClients(bool);
        return this;
    }

    public DevicesListTeamDevicesBuilder withIncludeWebSessions(Boolean bool) {
        this.f18154b.withIncludeWebSessions(bool);
        return this;
    }
}
