package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.files.SyncSetting;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TeamSelectiveSyncSettingsChangedDetails {
    protected final SyncSetting newValue;
    protected final SyncSetting previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamSelectiveSyncSettingsChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4352a extends StructSerializer<TeamSelectiveSyncSettingsChangedDetails> {

        /* renamed from: b */
        public static final C4352a f20640b = new C4352a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamSelectiveSyncSettingsChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SyncSetting syncSetting = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SyncSetting syncSetting2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    syncSetting = SyncSetting.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    syncSetting2 = SyncSetting.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (syncSetting == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (syncSetting2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            TeamSelectiveSyncSettingsChangedDetails teamSelectiveSyncSettingsChangedDetails = new TeamSelectiveSyncSettingsChangedDetails(syncSetting, syncSetting2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamSelectiveSyncSettingsChangedDetails, teamSelectiveSyncSettingsChangedDetails.toStringMultiline());
            return teamSelectiveSyncSettingsChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamSelectiveSyncSettingsChangedDetails teamSelectiveSyncSettingsChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            SyncSetting.Serializer serializer = SyncSetting.Serializer.INSTANCE;
            serializer.serialize(teamSelectiveSyncSettingsChangedDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            serializer.serialize(teamSelectiveSyncSettingsChangedDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamSelectiveSyncSettingsChangedDetails(SyncSetting syncSetting, SyncSetting syncSetting2) {
        if (syncSetting == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = syncSetting;
        if (syncSetting2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = syncSetting2;
    }

    public boolean equals(Object obj) {
        SyncSetting syncSetting;
        SyncSetting syncSetting2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamSelectiveSyncSettingsChangedDetails teamSelectiveSyncSettingsChangedDetails = (TeamSelectiveSyncSettingsChangedDetails) obj;
        SyncSetting syncSetting3 = this.previousValue;
        SyncSetting syncSetting4 = teamSelectiveSyncSettingsChangedDetails.previousValue;
        return (syncSetting3 == syncSetting4 || syncSetting3.equals(syncSetting4)) && ((syncSetting = this.newValue) == (syncSetting2 = teamSelectiveSyncSettingsChangedDetails.newValue) || syncSetting.equals(syncSetting2));
    }

    public SyncSetting getNewValue() {
        return this.newValue;
    }

    public SyncSetting getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C4352a.f20640b.serialize((C4352a) this, false);
    }

    public String toStringMultiline() {
        return C4352a.f20640b.serialize((C4352a) this, true);
    }
}
