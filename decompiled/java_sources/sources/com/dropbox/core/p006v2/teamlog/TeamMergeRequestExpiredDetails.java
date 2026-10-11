package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamMergeRequestExpiredExtraDetails;
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
public class TeamMergeRequestExpiredDetails {
    protected final TeamMergeRequestExpiredExtraDetails requestExpiredDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamMergeRequestExpiredDetails$a */
    /* loaded from: classes4.dex */
    public static class C4309a extends StructSerializer<TeamMergeRequestExpiredDetails> {

        /* renamed from: b */
        public static final C4309a f20591b = new C4309a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMergeRequestExpiredDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails = null;
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
                if ("request_expired_details".equals(currentName)) {
                    teamMergeRequestExpiredExtraDetails = TeamMergeRequestExpiredExtraDetails.C4311b.f20596b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMergeRequestExpiredExtraDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"request_expired_details\" missing.");
            }
            TeamMergeRequestExpiredDetails teamMergeRequestExpiredDetails = new TeamMergeRequestExpiredDetails(teamMergeRequestExpiredExtraDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMergeRequestExpiredDetails, teamMergeRequestExpiredDetails.toStringMultiline());
            return teamMergeRequestExpiredDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMergeRequestExpiredDetails teamMergeRequestExpiredDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("request_expired_details");
            TeamMergeRequestExpiredExtraDetails.C4311b.f20596b.serialize(teamMergeRequestExpiredDetails.requestExpiredDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMergeRequestExpiredDetails(TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails) {
        if (teamMergeRequestExpiredExtraDetails == null) {
            throw new IllegalArgumentException("Required value for 'requestExpiredDetails' is null");
        }
        this.requestExpiredDetails = teamMergeRequestExpiredExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails = this.requestExpiredDetails;
        TeamMergeRequestExpiredExtraDetails teamMergeRequestExpiredExtraDetails2 = ((TeamMergeRequestExpiredDetails) obj).requestExpiredDetails;
        return teamMergeRequestExpiredExtraDetails == teamMergeRequestExpiredExtraDetails2 || teamMergeRequestExpiredExtraDetails.equals(teamMergeRequestExpiredExtraDetails2);
    }

    public TeamMergeRequestExpiredExtraDetails getRequestExpiredDetails() {
        return this.requestExpiredDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.requestExpiredDetails});
    }

    public String toString() {
        return C4309a.f20591b.serialize((C4309a) this, false);
    }

    public String toStringMultiline() {
        return C4309a.f20591b.serialize((C4309a) this, true);
    }
}
