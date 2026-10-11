package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamSelectiveSyncPolicy;
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
public class TeamSelectiveSyncPolicyChangedDetails {
    protected final TeamSelectiveSyncPolicy newValue;
    protected final TeamSelectiveSyncPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamSelectiveSyncPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4350a extends StructSerializer<TeamSelectiveSyncPolicyChangedDetails> {

        /* renamed from: b */
        public static final C4350a f20638b = new C4350a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamSelectiveSyncPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamSelectiveSyncPolicy teamSelectiveSyncPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TeamSelectiveSyncPolicy teamSelectiveSyncPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    teamSelectiveSyncPolicy = TeamSelectiveSyncPolicy.C4349b.f20637b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    teamSelectiveSyncPolicy2 = TeamSelectiveSyncPolicy.C4349b.f20637b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamSelectiveSyncPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (teamSelectiveSyncPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            TeamSelectiveSyncPolicyChangedDetails teamSelectiveSyncPolicyChangedDetails = new TeamSelectiveSyncPolicyChangedDetails(teamSelectiveSyncPolicy, teamSelectiveSyncPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamSelectiveSyncPolicyChangedDetails, teamSelectiveSyncPolicyChangedDetails.toStringMultiline());
            return teamSelectiveSyncPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamSelectiveSyncPolicyChangedDetails teamSelectiveSyncPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TeamSelectiveSyncPolicy.C4349b c4349b = TeamSelectiveSyncPolicy.C4349b.f20637b;
            c4349b.serialize(teamSelectiveSyncPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c4349b.serialize(teamSelectiveSyncPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamSelectiveSyncPolicyChangedDetails(TeamSelectiveSyncPolicy teamSelectiveSyncPolicy, TeamSelectiveSyncPolicy teamSelectiveSyncPolicy2) {
        if (teamSelectiveSyncPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = teamSelectiveSyncPolicy;
        if (teamSelectiveSyncPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = teamSelectiveSyncPolicy2;
    }

    public boolean equals(Object obj) {
        TeamSelectiveSyncPolicy teamSelectiveSyncPolicy;
        TeamSelectiveSyncPolicy teamSelectiveSyncPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamSelectiveSyncPolicyChangedDetails teamSelectiveSyncPolicyChangedDetails = (TeamSelectiveSyncPolicyChangedDetails) obj;
        TeamSelectiveSyncPolicy teamSelectiveSyncPolicy3 = this.newValue;
        TeamSelectiveSyncPolicy teamSelectiveSyncPolicy4 = teamSelectiveSyncPolicyChangedDetails.newValue;
        return (teamSelectiveSyncPolicy3 == teamSelectiveSyncPolicy4 || teamSelectiveSyncPolicy3.equals(teamSelectiveSyncPolicy4)) && ((teamSelectiveSyncPolicy = this.previousValue) == (teamSelectiveSyncPolicy2 = teamSelectiveSyncPolicyChangedDetails.previousValue) || teamSelectiveSyncPolicy.equals(teamSelectiveSyncPolicy2));
    }

    public TeamSelectiveSyncPolicy getNewValue() {
        return this.newValue;
    }

    public TeamSelectiveSyncPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4350a.f20638b.serialize((C4350a) this, false);
    }

    public String toStringMultiline() {
        return C4350a.f20638b.serialize((C4350a) this, true);
    }
}
