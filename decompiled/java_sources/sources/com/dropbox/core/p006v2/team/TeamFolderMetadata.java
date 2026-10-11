package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.files.ContentSyncSetting;
import com.dropbox.core.p006v2.files.SyncSetting;
import com.dropbox.core.p006v2.team.TeamFolderStatus;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class TeamFolderMetadata {
    protected final List<ContentSyncSetting> contentSyncSettings;
    protected final boolean isTeamSharedDropbox;
    protected final String name;
    protected final TeamFolderStatus status;
    protected final SyncSetting syncSetting;
    protected final String teamFolderId;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderMetadata$a */
    /* loaded from: classes4.dex */
    public static class C3233a extends StructSerializer<TeamFolderMetadata> {

        /* renamed from: b */
        public static final C3233a f18504b = new C3233a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            TeamFolderStatus teamFolderStatus = null;
            SyncSetting syncSetting = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("status".equals(currentName)) {
                    teamFolderStatus = TeamFolderStatus.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("is_team_shared_dropbox".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("sync_setting".equals(currentName)) {
                    syncSetting = SyncSetting.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("content_sync_settings".equals(currentName)) {
                    list = (List) StoneSerializers.list(ContentSyncSetting.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_folder_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (teamFolderStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"status\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_team_shared_dropbox\" missing.");
            }
            if (syncSetting == null) {
                throw new JsonParseException(jsonParser, "Required field \"sync_setting\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"content_sync_settings\" missing.");
            }
            TeamFolderMetadata teamFolderMetadata = new TeamFolderMetadata(str2, str3, teamFolderStatus, bool.booleanValue(), syncSetting, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamFolderMetadata, teamFolderMetadata.toStringMultiline());
            return teamFolderMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderMetadata teamFolderMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamFolderMetadata.teamFolderId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamFolderMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("status");
            TeamFolderStatus.Serializer.INSTANCE.serialize(teamFolderMetadata.status, jsonGenerator);
            jsonGenerator.writeFieldName("is_team_shared_dropbox");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(teamFolderMetadata.isTeamSharedDropbox), jsonGenerator);
            jsonGenerator.writeFieldName("sync_setting");
            SyncSetting.Serializer.INSTANCE.serialize(teamFolderMetadata.syncSetting, jsonGenerator);
            jsonGenerator.writeFieldName("content_sync_settings");
            StoneSerializers.list(ContentSyncSetting.Serializer.INSTANCE).serialize((StoneSerializer) teamFolderMetadata.contentSyncSettings, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamFolderMetadata(String str, String str2, TeamFolderStatus teamFolderStatus, boolean z, SyncSetting syncSetting, List<ContentSyncSetting> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'teamFolderId' does not match pattern");
        }
        this.teamFolderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        if (teamFolderStatus == null) {
            throw new IllegalArgumentException("Required value for 'status' is null");
        }
        this.status = teamFolderStatus;
        this.isTeamSharedDropbox = z;
        if (syncSetting == null) {
            throw new IllegalArgumentException("Required value for 'syncSetting' is null");
        }
        this.syncSetting = syncSetting;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'contentSyncSettings' is null");
        }
        Iterator<ContentSyncSetting> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'contentSyncSettings' is null");
            }
        }
        this.contentSyncSettings = list;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        TeamFolderStatus teamFolderStatus;
        TeamFolderStatus teamFolderStatus2;
        SyncSetting syncSetting;
        SyncSetting syncSetting2;
        List<ContentSyncSetting> list;
        List<ContentSyncSetting> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderMetadata teamFolderMetadata = (TeamFolderMetadata) obj;
        String str3 = this.teamFolderId;
        String str4 = teamFolderMetadata.teamFolderId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.name) == (str2 = teamFolderMetadata.name) || str.equals(str2)) && (((teamFolderStatus = this.status) == (teamFolderStatus2 = teamFolderMetadata.status) || teamFolderStatus.equals(teamFolderStatus2)) && this.isTeamSharedDropbox == teamFolderMetadata.isTeamSharedDropbox && (((syncSetting = this.syncSetting) == (syncSetting2 = teamFolderMetadata.syncSetting) || syncSetting.equals(syncSetting2)) && ((list = this.contentSyncSettings) == (list2 = teamFolderMetadata.contentSyncSettings) || list.equals(list2))));
    }

    public List<ContentSyncSetting> getContentSyncSettings() {
        return this.contentSyncSettings;
    }

    public boolean getIsTeamSharedDropbox() {
        return this.isTeamSharedDropbox;
    }

    public String getName() {
        return this.name;
    }

    public TeamFolderStatus getStatus() {
        return this.status;
    }

    public SyncSetting getSyncSetting() {
        return this.syncSetting;
    }

    public String getTeamFolderId() {
        return this.teamFolderId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamFolderId, this.name, this.status, Boolean.valueOf(this.isTeamSharedDropbox), this.syncSetting, this.contentSyncSettings});
    }

    public String toString() {
        return C3233a.f18504b.serialize((C3233a) this, false);
    }

    public String toStringMultiline() {
        return C3233a.f18504b.serialize((C3233a) this, true);
    }
}
