package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamMergeRequestReminderExtraDetails;
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
public class TeamMergeRequestReminderDetails {
    protected final TeamMergeRequestReminderExtraDetails requestReminderDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestReminderDetails$a */
    /* loaded from: classes4.dex */
    public static class C4321a extends StructSerializer<TeamMergeRequestReminderDetails> {

        /* renamed from: b */
        public static final C4321a f20606b = new C4321a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestReminderDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails = null;
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
                if ("request_reminder_details".equals(currentName)) {
                    teamMergeRequestReminderExtraDetails = TeamMergeRequestReminderExtraDetails.C4323b.f20611b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMergeRequestReminderExtraDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"request_reminder_details\" missing.");
            }
            TeamMergeRequestReminderDetails teamMergeRequestReminderDetails = new TeamMergeRequestReminderDetails(teamMergeRequestReminderExtraDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestReminderDetails, teamMergeRequestReminderDetails.toStringMultiline());
            return teamMergeRequestReminderDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestReminderDetails teamMergeRequestReminderDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("request_reminder_details");
            TeamMergeRequestReminderExtraDetails.C4323b.f20611b.serialize(teamMergeRequestReminderDetails.requestReminderDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestReminderDetails(TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails) {
        if (teamMergeRequestReminderExtraDetails == null) {
            throw new IllegalArgumentException("Required value for 'requestReminderDetails' is null");
        }
        this.requestReminderDetails = teamMergeRequestReminderExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails = this.requestReminderDetails;
        TeamMergeRequestReminderExtraDetails teamMergeRequestReminderExtraDetails2 = ((TeamMergeRequestReminderDetails) obj).requestReminderDetails;
        return teamMergeRequestReminderExtraDetails == teamMergeRequestReminderExtraDetails2 || teamMergeRequestReminderExtraDetails.equals(teamMergeRequestReminderExtraDetails2);
    }

    public TeamMergeRequestReminderExtraDetails getRequestReminderDetails() {
        return this.requestReminderDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestReminderDetails});
    }

    public String toString() {
        return C4321a.f20606b.serialize((C4321a) this, false);
    }

    public String toStringMultiline() {
        return C4321a.f20606b.serialize((C4321a) this, true);
    }
}
