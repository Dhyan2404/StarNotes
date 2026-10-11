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
public class TeamMergeRequestRejectedShownToPrimaryTeamDetails {
    protected final String secondaryTeam;
    protected final String sentBy;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestRejectedShownToPrimaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4317a extends StructSerializer<TeamMergeRequestRejectedShownToPrimaryTeamDetails> {

        /* renamed from: b */
        public static final C4317a f20602b = new C4317a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestRejectedShownToPrimaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("sent_by".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"secondary_team\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_by\" missing.");
            }
            TeamMergeRequestRejectedShownToPrimaryTeamDetails teamMergeRequestRejectedShownToPrimaryTeamDetails = new TeamMergeRequestRejectedShownToPrimaryTeamDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestRejectedShownToPrimaryTeamDetails, teamMergeRequestRejectedShownToPrimaryTeamDetails.toStringMultiline());
            return teamMergeRequestRejectedShownToPrimaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestRejectedShownToPrimaryTeamDetails teamMergeRequestRejectedShownToPrimaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("secondary_team");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestRejectedShownToPrimaryTeamDetails.secondaryTeam, jsonGenerator);
            jsonGenerator.writeFieldName("sent_by");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestRejectedShownToPrimaryTeamDetails.sentBy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestRejectedShownToPrimaryTeamDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'secondaryTeam' is null");
        }
        this.secondaryTeam = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'sentBy' is null");
        }
        this.sentBy = str2;
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
        TeamMergeRequestRejectedShownToPrimaryTeamDetails teamMergeRequestRejectedShownToPrimaryTeamDetails = (TeamMergeRequestRejectedShownToPrimaryTeamDetails) obj;
        String str3 = this.secondaryTeam;
        String str4 = teamMergeRequestRejectedShownToPrimaryTeamDetails.secondaryTeam;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.sentBy) == (str2 = teamMergeRequestRejectedShownToPrimaryTeamDetails.sentBy) || str.equals(str2));
    }

    public String getSecondaryTeam() {
        return this.secondaryTeam;
    }

    public String getSentBy() {
        return this.sentBy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.secondaryTeam, this.sentBy});
    }

    public String toString() {
        return C4317a.f20602b.serialize((C4317a) this, false);
    }

    public String toStringMultiline() {
        return C4317a.f20602b.serialize((C4317a) this, true);
    }
}
