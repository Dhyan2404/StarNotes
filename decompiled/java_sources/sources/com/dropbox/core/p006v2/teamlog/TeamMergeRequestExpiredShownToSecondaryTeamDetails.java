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
public class TeamMergeRequestExpiredShownToSecondaryTeamDetails {
    protected final String sentTo;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestExpiredShownToSecondaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4314a extends StructSerializer<TeamMergeRequestExpiredShownToSecondaryTeamDetails> {

        /* renamed from: b */
        public static final C4314a f20599b = new C4314a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestExpiredShownToSecondaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("sent_to".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_to\" missing.");
            }
            TeamMergeRequestExpiredShownToSecondaryTeamDetails teamMergeRequestExpiredShownToSecondaryTeamDetails = new TeamMergeRequestExpiredShownToSecondaryTeamDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestExpiredShownToSecondaryTeamDetails, teamMergeRequestExpiredShownToSecondaryTeamDetails.toStringMultiline());
            return teamMergeRequestExpiredShownToSecondaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestExpiredShownToSecondaryTeamDetails teamMergeRequestExpiredShownToSecondaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("sent_to");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestExpiredShownToSecondaryTeamDetails.sentTo, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestExpiredShownToSecondaryTeamDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sentTo' is null");
        }
        this.sentTo = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.sentTo;
        String str2 = ((TeamMergeRequestExpiredShownToSecondaryTeamDetails) obj).sentTo;
        return str == str2 || str.equals(str2);
    }

    public String getSentTo() {
        return this.sentTo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sentTo});
    }

    public String toString() {
        return C4314a.f20599b.serialize((C4314a) this, false);
    }

    public String toStringMultiline() {
        return C4314a.f20599b.serialize((C4314a) this, true);
    }
}
