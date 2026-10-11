package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamMergeRequestCanceledExtraDetails;
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
public class TeamMergeRequestCanceledDetails {
    protected final TeamMergeRequestCanceledExtraDetails requestCanceledDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestCanceledDetails$a */
    /* loaded from: classes4.dex */
    public static class C4301a extends StructSerializer<TeamMergeRequestCanceledDetails> {

        /* renamed from: b */
        public static final C4301a f20580b = new C4301a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestCanceledDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails = null;
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
                if ("request_canceled_details".equals(currentName)) {
                    teamMergeRequestCanceledExtraDetails = TeamMergeRequestCanceledExtraDetails.C4303b.f20585b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMergeRequestCanceledExtraDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"request_canceled_details\" missing.");
            }
            TeamMergeRequestCanceledDetails teamMergeRequestCanceledDetails = new TeamMergeRequestCanceledDetails(teamMergeRequestCanceledExtraDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestCanceledDetails, teamMergeRequestCanceledDetails.toStringMultiline());
            return teamMergeRequestCanceledDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestCanceledDetails teamMergeRequestCanceledDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("request_canceled_details");
            TeamMergeRequestCanceledExtraDetails.C4303b.f20585b.serialize(teamMergeRequestCanceledDetails.requestCanceledDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestCanceledDetails(TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails) {
        if (teamMergeRequestCanceledExtraDetails == null) {
            throw new IllegalArgumentException("Required value for 'requestCanceledDetails' is null");
        }
        this.requestCanceledDetails = teamMergeRequestCanceledExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails = this.requestCanceledDetails;
        TeamMergeRequestCanceledExtraDetails teamMergeRequestCanceledExtraDetails2 = ((TeamMergeRequestCanceledDetails) obj).requestCanceledDetails;
        return teamMergeRequestCanceledExtraDetails == teamMergeRequestCanceledExtraDetails2 || teamMergeRequestCanceledExtraDetails.equals(teamMergeRequestCanceledExtraDetails2);
    }

    public TeamMergeRequestCanceledExtraDetails getRequestCanceledDetails() {
        return this.requestCanceledDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestCanceledDetails});
    }

    public String toString() {
        return C4301a.f20580b.serialize((C4301a) this, false);
    }

    public String toStringMultiline() {
        return C4301a.f20580b.serialize((C4301a) this, true);
    }
}
