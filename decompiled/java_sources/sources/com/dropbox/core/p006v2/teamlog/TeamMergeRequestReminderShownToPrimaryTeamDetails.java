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
public class TeamMergeRequestReminderShownToPrimaryTeamDetails {
    protected final String secondaryTeam;
    protected final String sentTo;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestReminderShownToPrimaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4324a extends StructSerializer<TeamMergeRequestReminderShownToPrimaryTeamDetails> {

        /* renamed from: b */
        public static final C4324a f20612b = new C4324a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestReminderShownToPrimaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("secondary_team".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sent_to".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"secondary_team\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_to\" missing.");
            }
            TeamMergeRequestReminderShownToPrimaryTeamDetails teamMergeRequestReminderShownToPrimaryTeamDetails = new TeamMergeRequestReminderShownToPrimaryTeamDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestReminderShownToPrimaryTeamDetails, teamMergeRequestReminderShownToPrimaryTeamDetails.toStringMultiline());
            return teamMergeRequestReminderShownToPrimaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestReminderShownToPrimaryTeamDetails teamMergeRequestReminderShownToPrimaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("secondary_team");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestReminderShownToPrimaryTeamDetails.secondaryTeam, jsonGenerator);
            jsonGenerator.writeFieldName("sent_to");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestReminderShownToPrimaryTeamDetails.sentTo, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestReminderShownToPrimaryTeamDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'secondaryTeam' is null");
        }
        this.secondaryTeam = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'sentTo' is null");
        }
        this.sentTo = str2;
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
        TeamMergeRequestReminderShownToPrimaryTeamDetails teamMergeRequestReminderShownToPrimaryTeamDetails = (TeamMergeRequestReminderShownToPrimaryTeamDetails) obj;
        String str3 = this.secondaryTeam;
        String str4 = teamMergeRequestReminderShownToPrimaryTeamDetails.secondaryTeam;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.sentTo) == (str2 = teamMergeRequestReminderShownToPrimaryTeamDetails.sentTo) || str.equals(str2));
    }

    public String getSecondaryTeam() {
        return this.secondaryTeam;
    }

    public String getSentTo() {
        return this.sentTo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.secondaryTeam, this.sentTo});
    }

    public String toString() {
        return C4324a.f20612b.serialize((C4324a) this, false);
    }

    public String toStringMultiline() {
        return C4324a.f20612b.serialize((C4324a) this, true);
    }
}
