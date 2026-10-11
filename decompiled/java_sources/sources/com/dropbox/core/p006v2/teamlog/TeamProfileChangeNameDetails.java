package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamName;
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

/* loaded from: classes4.dex */
public class TeamProfileChangeNameDetails {
    protected final TeamName newValue;
    protected final TeamName previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamProfileChangeNameDetails$a */
    /* loaded from: classes4.dex */
    public static class C4344a extends StructSerializer<TeamProfileChangeNameDetails> {

        /* renamed from: b */
        public static final C4344a f20632b = new C4344a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamProfileChangeNameDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamName teamName = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TeamName teamName2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    teamName = TeamName.C4337a.f20625b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    teamName2 = (TeamName) StoneSerializers.nullableStruct(TeamName.C4337a.f20625b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamName == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            TeamProfileChangeNameDetails teamProfileChangeNameDetails = new TeamProfileChangeNameDetails(teamName, teamName2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamProfileChangeNameDetails, teamProfileChangeNameDetails.toStringMultiline());
            return teamProfileChangeNameDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamProfileChangeNameDetails teamProfileChangeNameDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TeamName.C4337a c4337a = TeamName.C4337a.f20625b;
            c4337a.serialize((TeamName.C4337a) teamProfileChangeNameDetails.newValue, jsonGenerator);
            if (teamProfileChangeNameDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullableStruct(c4337a).serialize((StructSerializer) teamProfileChangeNameDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamProfileChangeNameDetails(TeamName teamName, TeamName teamName2) {
        this.previousValue = teamName2;
        if (teamName != null) {
            this.newValue = teamName;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamProfileChangeNameDetails teamProfileChangeNameDetails = (TeamProfileChangeNameDetails) obj;
        TeamName teamName = this.newValue;
        TeamName teamName2 = teamProfileChangeNameDetails.newValue;
        if (teamName == teamName2 || teamName.equals(teamName2)) {
            TeamName teamName3 = this.previousValue;
            TeamName teamName4 = teamProfileChangeNameDetails.previousValue;
            if (teamName3 == teamName4) {
                return true;
            }
            if (teamName3 != null && teamName3.equals(teamName4)) {
                return true;
            }
        }
        return false;
    }

    public TeamName getNewValue() {
        return this.newValue;
    }

    public TeamName getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C4344a.f20632b.serialize((C4344a) this, false);
    }

    public String toStringMultiline() {
        return C4344a.f20632b.serialize((C4344a) this, true);
    }

    public TeamProfileChangeNameDetails(TeamName teamName) {
        this(teamName, null);
    }
}
