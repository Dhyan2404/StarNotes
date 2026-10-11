package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.files.SyncSettingsError;
import com.dropbox.core.p006v2.team.TeamFolderAccessError;
import com.dropbox.core.p006v2.team.TeamFolderInvalidStatusError;
import com.dropbox.core.p006v2.team.TeamFolderTeamSharedDropboxError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class TeamFolderUpdateSyncSettingsError {
    public static final TeamFolderUpdateSyncSettingsError OTHER = new TeamFolderUpdateSyncSettingsError().m12741e(Tag.OTHER);

    /* renamed from: a */
    public Tag f18525a;

    /* renamed from: b */
    public TeamFolderAccessError f18526b;

    /* renamed from: c */
    public TeamFolderInvalidStatusError f18527c;

    /* renamed from: d */
    public TeamFolderTeamSharedDropboxError f18528d;

    /* renamed from: e */
    public SyncSettingsError f18529e;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        STATUS_ERROR,
        TEAM_SHARED_DROPBOX_ERROR,
        OTHER,
        SYNC_SETTINGS_ERROR
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderUpdateSyncSettingsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3242a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18530a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18530a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18530a[Tag.STATUS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18530a[Tag.TEAM_SHARED_DROPBOX_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18530a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18530a[Tag.SYNC_SETTINGS_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderUpdateSyncSettingsError$b */
    /* loaded from: classes4.dex */
    public static class C3243b extends UnionSerializer<TeamFolderUpdateSyncSettingsError> {

        /* renamed from: b */
        public static final C3243b f18531b = new C3243b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderUpdateSyncSettingsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderUpdateSyncSettingsError syncSettingsError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                syncSettingsError = TeamFolderUpdateSyncSettingsError.accessError(TeamFolderAccessError.C3214b.f18466b.deserialize(jsonParser));
            } else if ("status_error".equals(readTag)) {
                StoneSerializer.expectField("status_error", jsonParser);
                syncSettingsError = TeamFolderUpdateSyncSettingsError.statusError(TeamFolderInvalidStatusError.C3228b.f18499b.deserialize(jsonParser));
            } else if ("team_shared_dropbox_error".equals(readTag)) {
                StoneSerializer.expectField("team_shared_dropbox_error", jsonParser);
                syncSettingsError = TeamFolderUpdateSyncSettingsError.teamSharedDropboxError(TeamFolderTeamSharedDropboxError.C3240b.f18519b.deserialize(jsonParser));
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                syncSettingsError = TeamFolderUpdateSyncSettingsError.OTHER;
            } else {
                if (!"sync_settings_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("sync_settings_error", jsonParser);
                syncSettingsError = TeamFolderUpdateSyncSettingsError.syncSettingsError(SyncSettingsError.Serializer.INSTANCE.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return syncSettingsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3242a.f18530a[teamFolderUpdateSyncSettingsError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                TeamFolderAccessError.C3214b.f18466b.serialize(teamFolderUpdateSyncSettingsError.f18526b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("status_error", jsonGenerator);
                jsonGenerator.writeFieldName("status_error");
                TeamFolderInvalidStatusError.C3228b.f18499b.serialize(teamFolderUpdateSyncSettingsError.f18527c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("team_shared_dropbox_error", jsonGenerator);
                jsonGenerator.writeFieldName("team_shared_dropbox_error");
                TeamFolderTeamSharedDropboxError.C3240b.f18519b.serialize(teamFolderUpdateSyncSettingsError.f18528d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            if (i != 5) {
                throw new IllegalArgumentException("Unrecognized tag: " + teamFolderUpdateSyncSettingsError.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("sync_settings_error", jsonGenerator);
            jsonGenerator.writeFieldName("sync_settings_error");
            SyncSettingsError.Serializer.INSTANCE.serialize(teamFolderUpdateSyncSettingsError.f18529e, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamFolderUpdateSyncSettingsError accessError(TeamFolderAccessError teamFolderAccessError) {
        if (teamFolderAccessError != null) {
            return new TeamFolderUpdateSyncSettingsError().m12742f(Tag.ACCESS_ERROR, teamFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderUpdateSyncSettingsError statusError(TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        if (teamFolderInvalidStatusError != null) {
            return new TeamFolderUpdateSyncSettingsError().m12743g(Tag.STATUS_ERROR, teamFolderInvalidStatusError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderUpdateSyncSettingsError syncSettingsError(SyncSettingsError syncSettingsError) {
        if (syncSettingsError != null) {
            return new TeamFolderUpdateSyncSettingsError().m12744h(Tag.SYNC_SETTINGS_ERROR, syncSettingsError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static TeamFolderUpdateSyncSettingsError teamSharedDropboxError(TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        if (teamFolderTeamSharedDropboxError != null) {
            return new TeamFolderUpdateSyncSettingsError().m12745i(Tag.TEAM_SHARED_DROPBOX_ERROR, teamFolderTeamSharedDropboxError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final TeamFolderUpdateSyncSettingsError m12741e(Tag tag) {
        TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
        teamFolderUpdateSyncSettingsError.f18525a = tag;
        return teamFolderUpdateSyncSettingsError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamFolderUpdateSyncSettingsError)) {
            return false;
        }
        TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError = (TeamFolderUpdateSyncSettingsError) obj;
        Tag tag = this.f18525a;
        if (tag != teamFolderUpdateSyncSettingsError.f18525a) {
            return false;
        }
        int i = C3242a.f18530a[tag.ordinal()];
        if (i == 1) {
            TeamFolderAccessError teamFolderAccessError = this.f18526b;
            TeamFolderAccessError teamFolderAccessError2 = teamFolderUpdateSyncSettingsError.f18526b;
            return teamFolderAccessError == teamFolderAccessError2 || teamFolderAccessError.equals(teamFolderAccessError2);
        }
        if (i == 2) {
            TeamFolderInvalidStatusError teamFolderInvalidStatusError = this.f18527c;
            TeamFolderInvalidStatusError teamFolderInvalidStatusError2 = teamFolderUpdateSyncSettingsError.f18527c;
            return teamFolderInvalidStatusError == teamFolderInvalidStatusError2 || teamFolderInvalidStatusError.equals(teamFolderInvalidStatusError2);
        }
        if (i == 3) {
            TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError = this.f18528d;
            TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError2 = teamFolderUpdateSyncSettingsError.f18528d;
            return teamFolderTeamSharedDropboxError == teamFolderTeamSharedDropboxError2 || teamFolderTeamSharedDropboxError.equals(teamFolderTeamSharedDropboxError2);
        }
        if (i == 4) {
            return true;
        }
        if (i != 5) {
            return false;
        }
        SyncSettingsError syncSettingsError = this.f18529e;
        SyncSettingsError syncSettingsError2 = teamFolderUpdateSyncSettingsError.f18529e;
        return syncSettingsError == syncSettingsError2 || syncSettingsError.equals(syncSettingsError2);
    }

    /* renamed from: f */
    public final TeamFolderUpdateSyncSettingsError m12742f(Tag tag, TeamFolderAccessError teamFolderAccessError) {
        TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
        teamFolderUpdateSyncSettingsError.f18525a = tag;
        teamFolderUpdateSyncSettingsError.f18526b = teamFolderAccessError;
        return teamFolderUpdateSyncSettingsError;
    }

    /* renamed from: g */
    public final TeamFolderUpdateSyncSettingsError m12743g(Tag tag, TeamFolderInvalidStatusError teamFolderInvalidStatusError) {
        TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
        teamFolderUpdateSyncSettingsError.f18525a = tag;
        teamFolderUpdateSyncSettingsError.f18527c = teamFolderInvalidStatusError;
        return teamFolderUpdateSyncSettingsError;
    }

    public TeamFolderAccessError getAccessErrorValue() {
        if (this.f18525a == Tag.ACCESS_ERROR) {
            return this.f18526b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18525a.name());
    }

    public TeamFolderInvalidStatusError getStatusErrorValue() {
        if (this.f18525a == Tag.STATUS_ERROR) {
            return this.f18527c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.STATUS_ERROR, but was Tag." + this.f18525a.name());
    }

    public SyncSettingsError getSyncSettingsErrorValue() {
        if (this.f18525a == Tag.SYNC_SETTINGS_ERROR) {
            return this.f18529e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SYNC_SETTINGS_ERROR, but was Tag." + this.f18525a.name());
    }

    public TeamFolderTeamSharedDropboxError getTeamSharedDropboxErrorValue() {
        if (this.f18525a == Tag.TEAM_SHARED_DROPBOX_ERROR) {
            return this.f18528d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_SHARED_DROPBOX_ERROR, but was Tag." + this.f18525a.name());
    }

    /* renamed from: h */
    public final TeamFolderUpdateSyncSettingsError m12744h(Tag tag, SyncSettingsError syncSettingsError) {
        TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
        teamFolderUpdateSyncSettingsError.f18525a = tag;
        teamFolderUpdateSyncSettingsError.f18529e = syncSettingsError;
        return teamFolderUpdateSyncSettingsError;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18525a, this.f18526b, this.f18527c, this.f18528d, this.f18529e});
    }

    /* renamed from: i */
    public final TeamFolderUpdateSyncSettingsError m12745i(Tag tag, TeamFolderTeamSharedDropboxError teamFolderTeamSharedDropboxError) {
        TeamFolderUpdateSyncSettingsError teamFolderUpdateSyncSettingsError = new TeamFolderUpdateSyncSettingsError();
        teamFolderUpdateSyncSettingsError.f18525a = tag;
        teamFolderUpdateSyncSettingsError.f18528d = teamFolderTeamSharedDropboxError;
        return teamFolderUpdateSyncSettingsError;
    }

    public boolean isAccessError() {
        return this.f18525a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f18525a == Tag.OTHER;
    }

    public boolean isStatusError() {
        return this.f18525a == Tag.STATUS_ERROR;
    }

    public boolean isSyncSettingsError() {
        return this.f18525a == Tag.SYNC_SETTINGS_ERROR;
    }

    public boolean isTeamSharedDropboxError() {
        return this.f18525a == Tag.TEAM_SHARED_DROPBOX_ERROR;
    }

    public Tag tag() {
        return this.f18525a;
    }

    public String toString() {
        return C3243b.f18531b.serialize((C3243b) this, false);
    }

    public String toStringMultiline() {
        return C3243b.f18531b.serialize((C3243b) this, true);
    }
}
