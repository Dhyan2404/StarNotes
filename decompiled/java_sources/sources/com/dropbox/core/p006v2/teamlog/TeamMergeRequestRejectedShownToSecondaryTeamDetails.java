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
public class TeamMergeRequestRejectedShownToSecondaryTeamDetails {
    protected final String sentBy;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestRejectedShownToSecondaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4319a extends StructSerializer<TeamMergeRequestRejectedShownToSecondaryTeamDetails> {

        /* renamed from: b */
        public static final C4319a f20604b = new C4319a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestRejectedShownToSecondaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("sent_by".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_by\" missing.");
            }
            TeamMergeRequestRejectedShownToSecondaryTeamDetails teamMergeRequestRejectedShownToSecondaryTeamDetails = new TeamMergeRequestRejectedShownToSecondaryTeamDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestRejectedShownToSecondaryTeamDetails, teamMergeRequestRejectedShownToSecondaryTeamDetails.toStringMultiline());
            return teamMergeRequestRejectedShownToSecondaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestRejectedShownToSecondaryTeamDetails teamMergeRequestRejectedShownToSecondaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("sent_by");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestRejectedShownToSecondaryTeamDetails.sentBy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestRejectedShownToSecondaryTeamDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sentBy' is null");
        }
        this.sentBy = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.sentBy;
        String str2 = ((TeamMergeRequestRejectedShownToSecondaryTeamDetails) obj).sentBy;
        return str == str2 || str.equals(str2);
    }

    public String getSentBy() {
        return this.sentBy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sentBy});
    }

    public String toString() {
        return C4319a.f20604b.serialize((C4319a) this, false);
    }

    public String toStringMultiline() {
        return C4319a.f20604b.serialize((C4319a) this, true);
    }
}
