package com.dropbox.core.p006v2.teamlog;

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
public class TeamName {
    protected final String teamDisplayName;
    protected final String teamLegalName;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamName$a */
    /* loaded from: classes4.dex */
    public static class C4337a extends StructSerializer<TeamName> {

        /* renamed from: b */
        public static final C4337a f20625b = new C4337a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamName deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_display_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("team_legal_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_display_name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_legal_name\" missing.");
            }
            TeamName teamName = new TeamName(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamName, teamName.toStringMultiline());
            return teamName;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamName teamName, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_display_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamName.teamDisplayName, jsonGenerator);
            jsonGenerator.writeFieldName("team_legal_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamName.teamLegalName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamName(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamDisplayName' is null");
        }
        this.teamDisplayName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'teamLegalName' is null");
        }
        this.teamLegalName = str2;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamName teamName = (TeamName) obj;
        String str3 = this.teamDisplayName;
        String str4 = teamName.teamDisplayName;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.teamLegalName) == (str2 = teamName.teamLegalName) || str.equals(str2));
    }

    public String getTeamDisplayName() {
        return this.teamDisplayName;
    }

    public String getTeamLegalName() {
        return this.teamLegalName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamDisplayName, this.teamLegalName});
    }

    public String toString() {
        return C4337a.f20625b.serialize((C4337a) this, false);
    }

    public String toStringMultiline() {
        return C4337a.f20625b.serialize((C4337a) this, true);
    }
}
