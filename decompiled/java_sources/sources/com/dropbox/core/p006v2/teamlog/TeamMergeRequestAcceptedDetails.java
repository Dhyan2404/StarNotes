package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamMergeRequestAcceptedExtraDetails;
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
public class TeamMergeRequestAcceptedDetails {
    protected final TeamMergeRequestAcceptedExtraDetails requestAcceptedDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestAcceptedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4291a extends StructSerializer<TeamMergeRequestAcceptedDetails> {

        /* renamed from: b */
        public static final C4291a f20567b = new C4291a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestAcceptedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails = null;
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
                if ("request_accepted_details".equals(currentName)) {
                    teamMergeRequestAcceptedExtraDetails = TeamMergeRequestAcceptedExtraDetails.C4293b.f20572b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMergeRequestAcceptedExtraDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"request_accepted_details\" missing.");
            }
            TeamMergeRequestAcceptedDetails teamMergeRequestAcceptedDetails = new TeamMergeRequestAcceptedDetails(teamMergeRequestAcceptedExtraDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestAcceptedDetails, teamMergeRequestAcceptedDetails.toStringMultiline());
            return teamMergeRequestAcceptedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestAcceptedDetails teamMergeRequestAcceptedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("request_accepted_details");
            TeamMergeRequestAcceptedExtraDetails.C4293b.f20572b.serialize(teamMergeRequestAcceptedDetails.requestAcceptedDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestAcceptedDetails(TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails) {
        if (teamMergeRequestAcceptedExtraDetails == null) {
            throw new IllegalArgumentException("Required value for 'requestAcceptedDetails' is null");
        }
        this.requestAcceptedDetails = teamMergeRequestAcceptedExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails = this.requestAcceptedDetails;
        TeamMergeRequestAcceptedExtraDetails teamMergeRequestAcceptedExtraDetails2 = ((TeamMergeRequestAcceptedDetails) obj).requestAcceptedDetails;
        return teamMergeRequestAcceptedExtraDetails == teamMergeRequestAcceptedExtraDetails2 || teamMergeRequestAcceptedExtraDetails.equals(teamMergeRequestAcceptedExtraDetails2);
    }

    public TeamMergeRequestAcceptedExtraDetails getRequestAcceptedDetails() {
        return this.requestAcceptedDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestAcceptedDetails});
    }

    public String toString() {
        return C4291a.f20567b.serialize((C4291a) this, false);
    }

    public String toStringMultiline() {
        return C4291a.f20567b.serialize((C4291a) this, true);
    }
}
