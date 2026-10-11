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
public class TeamMergeRequestRevokedDetails {
    protected final String team;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestRevokedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4329a extends StructSerializer<TeamMergeRequestRevokedDetails> {

        /* renamed from: b */
        public static final C4329a f20617b = new C4329a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestRevokedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team\" missing.");
            }
            TeamMergeRequestRevokedDetails teamMergeRequestRevokedDetails = new TeamMergeRequestRevokedDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestRevokedDetails, teamMergeRequestRevokedDetails.toStringMultiline());
            return teamMergeRequestRevokedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestRevokedDetails teamMergeRequestRevokedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestRevokedDetails.team, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestRevokedDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'team' is null");
        }
        this.team = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.team;
        String str2 = ((TeamMergeRequestRevokedDetails) obj).team;
        return str == str2 || str.equals(str2);
    }

    public String getTeam() {
        return this.team;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.team});
    }

    public String toString() {
        return C4329a.f20617b.serialize((C4329a) this, false);
    }

    public String toStringMultiline() {
        return C4329a.f20617b.serialize((C4329a) this, true);
    }
}
