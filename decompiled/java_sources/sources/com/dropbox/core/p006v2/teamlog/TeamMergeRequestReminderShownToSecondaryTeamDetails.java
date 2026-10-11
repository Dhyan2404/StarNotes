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
public class TeamMergeRequestReminderShownToSecondaryTeamDetails {
    protected final String sentTo;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestReminderShownToSecondaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4326a extends StructSerializer<TeamMergeRequestReminderShownToSecondaryTeamDetails> {

        /* renamed from: b */
        public static final C4326a f20614b = new C4326a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestReminderShownToSecondaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            TeamMergeRequestReminderShownToSecondaryTeamDetails teamMergeRequestReminderShownToSecondaryTeamDetails = new TeamMergeRequestReminderShownToSecondaryTeamDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestReminderShownToSecondaryTeamDetails, teamMergeRequestReminderShownToSecondaryTeamDetails.toStringMultiline());
            return teamMergeRequestReminderShownToSecondaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestReminderShownToSecondaryTeamDetails teamMergeRequestReminderShownToSecondaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("sent_to");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestReminderShownToSecondaryTeamDetails.sentTo, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestReminderShownToSecondaryTeamDetails(String str) {
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
        String str2 = ((TeamMergeRequestReminderShownToSecondaryTeamDetails) obj).sentTo;
        return str == str2 || str.equals(str2);
    }

    public String getSentTo() {
        return this.sentTo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sentTo});
    }

    public String toString() {
        return C4326a.f20614b.serialize((C4326a) this, false);
    }

    public String toStringMultiline() {
        return C4326a.f20614b.serialize((C4326a) this, true);
    }
}
