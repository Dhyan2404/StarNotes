package com.dropbox.core.p006v2;

import com.dropbox.core.p006v2.fileproperties.DbxTeamFilePropertiesRequests;
import com.dropbox.core.p006v2.team.DbxTeamTeamRequests;
import com.dropbox.core.p006v2.teamlog.DbxTeamTeamLogRequests;

/* loaded from: classes4.dex */
public class DbxTeamClientV2Base {
    protected final DbxRawClientV2 _client;

    /* renamed from: a */
    public final DbxTeamFilePropertiesRequests f16785a;

    /* renamed from: b */
    public final DbxTeamTeamRequests f16786b;

    /* renamed from: c */
    public final DbxTeamTeamLogRequests f16787c;

    public DbxTeamClientV2Base(DbxRawClientV2 dbxRawClientV2) {
        this._client = dbxRawClientV2;
        this.f16785a = new DbxTeamFilePropertiesRequests(dbxRawClientV2);
        this.f16786b = new DbxTeamTeamRequests(dbxRawClientV2);
        this.f16787c = new DbxTeamTeamLogRequests(dbxRawClientV2);
    }

    public DbxTeamFilePropertiesRequests fileProperties() {
        return this.f16785a;
    }

    public DbxTeamTeamRequests team() {
        return this.f16786b;
    }

    public DbxTeamTeamLogRequests teamLog() {
        return this.f16787c;
    }
}
