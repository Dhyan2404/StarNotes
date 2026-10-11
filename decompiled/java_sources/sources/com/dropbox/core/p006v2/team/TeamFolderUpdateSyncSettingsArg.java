package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.files.ContentSyncSettingArg;
import com.dropbox.core.p006v2.files.SyncSettingArg;
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
public class TeamFolderUpdateSyncSettingsArg extends C3305o0 {

    /* renamed from: b */
    public final SyncSettingArg f18520b;

    /* renamed from: c */
    public final List<ContentSyncSettingArg> f18521c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<ContentSyncSettingArg> contentSyncSettings;
        protected SyncSettingArg syncSetting;
        protected final String teamFolderId;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'teamFolderId' does not match pattern");
            }
            this.teamFolderId = str;
            this.syncSetting = null;
            this.contentSyncSettings = null;
        }

        public TeamFolderUpdateSyncSettingsArg build() {
            return new TeamFolderUpdateSyncSettingsArg(this.teamFolderId, this.syncSetting, this.contentSyncSettings);
        }

        public Builder withContentSyncSettings(List<ContentSyncSettingArg> list) {
            if (list != null) {
                Iterator<ContentSyncSettingArg> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'contentSyncSettings' is null");
                    }
                }
            }
            this.contentSyncSettings = list;
            return this;
        }

        public Builder withSyncSetting(SyncSettingArg syncSettingArg) {
            this.syncSetting = syncSettingArg;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderUpdateSyncSettingsArg$a */
    /* loaded from: classes4.dex */
    public static class C3241a extends StructSerializer<TeamFolderUpdateSyncSettingsArg> {

        /* renamed from: b */
        public static final C3241a f18522b = new C3241a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderUpdateSyncSettingsArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SyncSettingArg syncSettingArg = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sync_setting".equals(currentName)) {
                    syncSettingArg = (SyncSettingArg) StoneSerializers.nullable(SyncSettingArg.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("content_sync_settings".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(ContentSyncSettingArg.Serializer.INSTANCE)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_folder_id\" missing.");
            }
            TeamFolderUpdateSyncSettingsArg teamFolderUpdateSyncSettingsArg = new TeamFolderUpdateSyncSettingsArg(str2, syncSettingArg, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamFolderUpdateSyncSettingsArg, teamFolderUpdateSyncSettingsArg.mo12732b());
            return teamFolderUpdateSyncSettingsArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderUpdateSyncSettingsArg teamFolderUpdateSyncSettingsArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamFolderUpdateSyncSettingsArg.f18649a, jsonGenerator);
            if (teamFolderUpdateSyncSettingsArg.f18520b != null) {
                jsonGenerator.writeFieldName("sync_setting");
                StoneSerializers.nullable(SyncSettingArg.Serializer.INSTANCE).serialize((StoneSerializer) teamFolderUpdateSyncSettingsArg.f18520b, jsonGenerator);
            }
            if (teamFolderUpdateSyncSettingsArg.f18521c != null) {
                jsonGenerator.writeFieldName("content_sync_settings");
                StoneSerializers.nullable(StoneSerializers.list(ContentSyncSettingArg.Serializer.INSTANCE)).serialize((StoneSerializer) teamFolderUpdateSyncSettingsArg.f18521c, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamFolderUpdateSyncSettingsArg(String str, SyncSettingArg syncSettingArg, List<ContentSyncSettingArg> list) {
        super(str);
        this.f18520b = syncSettingArg;
        if (list != null) {
            Iterator<ContentSyncSettingArg> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'contentSyncSettings' is null");
                }
            }
        }
        this.f18521c = list;
    }

    /* renamed from: e */
    public static Builder m12730e(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    /* renamed from: a */
    public String mo12731a() {
        return this.f18649a;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    /* renamed from: b */
    public String mo12732b() {
        return C3241a.f18522b.serialize((C3241a) this, true);
    }

    /* renamed from: c */
    public List<ContentSyncSettingArg> m12733c() {
        return this.f18521c;
    }

    /* renamed from: d */
    public SyncSettingArg m12734d() {
        return this.f18520b;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public boolean equals(Object obj) {
        SyncSettingArg syncSettingArg;
        SyncSettingArg syncSettingArg2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderUpdateSyncSettingsArg teamFolderUpdateSyncSettingsArg = (TeamFolderUpdateSyncSettingsArg) obj;
        String str = this.f18649a;
        String str2 = teamFolderUpdateSyncSettingsArg.f18649a;
        if ((str == str2 || str.equals(str2)) && ((syncSettingArg = this.f18520b) == (syncSettingArg2 = teamFolderUpdateSyncSettingsArg.f18520b) || (syncSettingArg != null && syncSettingArg.equals(syncSettingArg2)))) {
            List<ContentSyncSettingArg> list = this.f18521c;
            List<ContentSyncSettingArg> list2 = teamFolderUpdateSyncSettingsArg.f18521c;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18520b, this.f18521c});
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public String toString() {
        return C3241a.f18522b.serialize((C3241a) this, false);
    }

    public TeamFolderUpdateSyncSettingsArg(String str) {
        this(str, null, null);
    }
}
