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
public class TeamMergeRequestAcceptedShownToSecondaryTeamDetails {
    protected final String primaryTeam;
    protected final String sentBy;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestAcceptedShownToSecondaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4296a extends StructSerializer<TeamMergeRequestAcceptedShownToSecondaryTeamDetails> {

        /* renamed from: b */
        public static final C4296a f20575b = new C4296a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestAcceptedShownToSecondaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("primary_team".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sent_by".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"primary_team\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_by\" missing.");
            }
            TeamMergeRequestAcceptedShownToSecondaryTeamDetails teamMergeRequestAcceptedShownToSecondaryTeamDetails = new TeamMergeRequestAcceptedShownToSecondaryTeamDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestAcceptedShownToSecondaryTeamDetails, teamMergeRequestAcceptedShownToSecondaryTeamDetails.toStringMultiline());
            return teamMergeRequestAcceptedShownToSecondaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestAcceptedShownToSecondaryTeamDetails teamMergeRequestAcceptedShownToSecondaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("primary_team");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestAcceptedShownToSecondaryTeamDetails.primaryTeam, jsonGenerator);
            jsonGenerator.writeFieldName("sent_by");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestAcceptedShownToSecondaryTeamDetails.sentBy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestAcceptedShownToSecondaryTeamDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'primaryTeam' is null");
        }
        this.primaryTeam = str;
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
        TeamMergeRequestAcceptedShownToSecondaryTeamDetails teamMergeRequestAcceptedShownToSecondaryTeamDetails = (TeamMergeRequestAcceptedShownToSecondaryTeamDetails) obj;
        String str3 = this.primaryTeam;
        String str4 = teamMergeRequestAcceptedShownToSecondaryTeamDetails.primaryTeam;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.sentBy) == (str2 = teamMergeRequestAcceptedShownToSecondaryTeamDetails.sentBy) || str.equals(str2));
    }

    public String getPrimaryTeam() {
        return this.primaryTeam;
    }

    public String getSentBy() {
        return this.sentBy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.primaryTeam, this.sentBy});
    }

    public String toString() {
        return C4296a.f20575b.serialize((C4296a) this, false);
    }

    public String toStringMultiline() {
        return C4296a.f20575b.serialize((C4296a) this, true);
    }
}
