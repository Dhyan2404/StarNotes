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
public class TeamMergeRequestCanceledShownToSecondaryTeamDetails {
    protected final String sentBy;
    protected final String sentTo;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestCanceledShownToSecondaryTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C4306a extends StructSerializer<TeamMergeRequestCanceledShownToSecondaryTeamDetails> {

        /* renamed from: b */
        public static final C4306a f20588b = new C4306a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestCanceledShownToSecondaryTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("sent_to".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("sent_by".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_to\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"sent_by\" missing.");
            }
            TeamMergeRequestCanceledShownToSecondaryTeamDetails teamMergeRequestCanceledShownToSecondaryTeamDetails = new TeamMergeRequestCanceledShownToSecondaryTeamDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestCanceledShownToSecondaryTeamDetails, teamMergeRequestCanceledShownToSecondaryTeamDetails.toStringMultiline());
            return teamMergeRequestCanceledShownToSecondaryTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestCanceledShownToSecondaryTeamDetails teamMergeRequestCanceledShownToSecondaryTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("sent_to");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestCanceledShownToSecondaryTeamDetails.sentTo, jsonGenerator);
            jsonGenerator.writeFieldName("sent_by");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMergeRequestCanceledShownToSecondaryTeamDetails.sentBy, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestCanceledShownToSecondaryTeamDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sentTo' is null");
        }
        this.sentTo = str;
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
        TeamMergeRequestCanceledShownToSecondaryTeamDetails teamMergeRequestCanceledShownToSecondaryTeamDetails = (TeamMergeRequestCanceledShownToSecondaryTeamDetails) obj;
        String str3 = this.sentTo;
        String str4 = teamMergeRequestCanceledShownToSecondaryTeamDetails.sentTo;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.sentBy) == (str2 = teamMergeRequestCanceledShownToSecondaryTeamDetails.sentBy) || str.equals(str2));
    }

    public String getSentBy() {
        return this.sentBy;
    }

    public String getSentTo() {
        return this.sentTo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sentTo, this.sentBy});
    }

    public String toString() {
        return C4306a.f20588b.serialize((C4306a) this, false);
    }

    public String toStringMultiline() {
        return C4306a.f20588b.serialize((C4306a) this, true);
    }
}
