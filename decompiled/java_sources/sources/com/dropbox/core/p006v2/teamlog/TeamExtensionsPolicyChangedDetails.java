package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamExtensionsPolicy;
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
public class TeamExtensionsPolicyChangedDetails {
    protected final TeamExtensionsPolicy newValue;
    protected final TeamExtensionsPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamExtensionsPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4271a extends StructSerializer<TeamExtensionsPolicyChangedDetails> {

        /* renamed from: b */
        public static final C4271a f20547b = new C4271a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamExtensionsPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamExtensionsPolicy teamExtensionsPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TeamExtensionsPolicy teamExtensionsPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    teamExtensionsPolicy = TeamExtensionsPolicy.C4270b.f20546b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    teamExtensionsPolicy2 = TeamExtensionsPolicy.C4270b.f20546b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamExtensionsPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (teamExtensionsPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            TeamExtensionsPolicyChangedDetails teamExtensionsPolicyChangedDetails = new TeamExtensionsPolicyChangedDetails(teamExtensionsPolicy, teamExtensionsPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamExtensionsPolicyChangedDetails, teamExtensionsPolicyChangedDetails.toStringMultiline());
            return teamExtensionsPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamExtensionsPolicyChangedDetails teamExtensionsPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TeamExtensionsPolicy.C4270b c4270b = TeamExtensionsPolicy.C4270b.f20546b;
            c4270b.serialize(teamExtensionsPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c4270b.serialize(teamExtensionsPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamExtensionsPolicyChangedDetails(TeamExtensionsPolicy teamExtensionsPolicy, TeamExtensionsPolicy teamExtensionsPolicy2) {
        if (teamExtensionsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = teamExtensionsPolicy;
        if (teamExtensionsPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = teamExtensionsPolicy2;
    }

    public boolean equals(Object obj) {
        TeamExtensionsPolicy teamExtensionsPolicy;
        TeamExtensionsPolicy teamExtensionsPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamExtensionsPolicyChangedDetails teamExtensionsPolicyChangedDetails = (TeamExtensionsPolicyChangedDetails) obj;
        TeamExtensionsPolicy teamExtensionsPolicy3 = this.newValue;
        TeamExtensionsPolicy teamExtensionsPolicy4 = teamExtensionsPolicyChangedDetails.newValue;
        return (teamExtensionsPolicy3 == teamExtensionsPolicy4 || teamExtensionsPolicy3.equals(teamExtensionsPolicy4)) && ((teamExtensionsPolicy = this.previousValue) == (teamExtensionsPolicy2 = teamExtensionsPolicyChangedDetails.previousValue) || teamExtensionsPolicy.equals(teamExtensionsPolicy2));
    }

    public TeamExtensionsPolicy getNewValue() {
        return this.newValue;
    }

    public TeamExtensionsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4271a.f20547b.serialize((C4271a) this, false);
    }

    public String toStringMultiline() {
        return C4271a.f20547b.serialize((C4271a) this, true);
    }
}
