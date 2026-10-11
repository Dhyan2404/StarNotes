package com.dropbox.core.p006v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.p006v2.files.ContentSyncSettingArg;
import com.dropbox.core.p006v2.files.SyncSettingArg;
import com.dropbox.core.p006v2.team.TeamFolderUpdateSyncSettingsArg;
import java.util.List;

/* loaded from: classes4.dex */
public class TeamFolderUpdateSyncSettingsBuilder {

    /* renamed from: a */
    public final DbxTeamTeamRequests f18523a;

    /* renamed from: b */
    public final TeamFolderUpdateSyncSettingsArg.Builder f18524b;

    public TeamFolderUpdateSyncSettingsBuilder(DbxTeamTeamRequests dbxTeamTeamRequests, TeamFolderUpdateSyncSettingsArg.Builder builder) {
        if (dbxTeamTeamRequests == null) {
            throw new NullPointerException("_client");
        }
        this.f18523a = dbxTeamTeamRequests;
        if (builder == null) {
            throw new NullPointerException("_builder");
        }
        this.f18524b = builder;
    }

    public TeamFolderMetadata start() throws TeamFolderUpdateSyncSettingsErrorException, DbxException {
        return this.f18523a.m12221t0(this.f18524b.build());
    }

    public TeamFolderUpdateSyncSettingsBuilder withContentSyncSettings(List<ContentSyncSettingArg> list) {
        this.f18524b.withContentSyncSettings(list);
        return this;
    }

    public TeamFolderUpdateSyncSettingsBuilder withSyncSetting(SyncSettingArg syncSettingArg) {
        this.f18524b.withSyncSetting(syncSettingArg);
        return this;
    }
}
