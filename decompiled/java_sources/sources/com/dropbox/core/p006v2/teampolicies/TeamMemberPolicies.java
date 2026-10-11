package com.dropbox.core.p006v2.teampolicies;

import com.dropbox.core.p006v2.teampolicies.EmmState;
import com.dropbox.core.p006v2.teampolicies.OfficeAddInPolicy;
import com.dropbox.core.p006v2.teampolicies.TeamSharingPolicies;
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
public class TeamMemberPolicies {
    protected final EmmState emmState;
    protected final OfficeAddInPolicy officeAddin;
    protected final TeamSharingPolicies sharing;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<TeamMemberPolicies> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamMemberPolicies deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamSharingPolicies teamSharingPolicies = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                EmmState emmState = null;
                OfficeAddInPolicy officeAddInPolicy = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("sharing".equals(currentName)) {
                        teamSharingPolicies = TeamSharingPolicies.Serializer.INSTANCE.deserialize(jsonParser);
                    } else if ("emm_state".equals(currentName)) {
                        emmState = EmmState.Serializer.INSTANCE.deserialize(jsonParser);
                    } else if ("office_addin".equals(currentName)) {
                        officeAddInPolicy = OfficeAddInPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (teamSharingPolicies == null) {
                    throw new JsonParseException(jsonParser, "Required field \"sharing\" missing.");
                }
                if (emmState == null) {
                    throw new JsonParseException(jsonParser, "Required field \"emm_state\" missing.");
                }
                if (officeAddInPolicy != null) {
                    TeamMemberPolicies teamMemberPolicies = new TeamMemberPolicies(teamSharingPolicies, emmState, officeAddInPolicy);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(teamMemberPolicies, teamMemberPolicies.toStringMultiline());
                    return teamMemberPolicies;
                }
                throw new JsonParseException(jsonParser, "Required field \"office_addin\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamMemberPolicies teamMemberPolicies, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("sharing");
            TeamSharingPolicies.Serializer.INSTANCE.serialize((TeamSharingPolicies.Serializer) teamMemberPolicies.sharing, jsonGenerator);
            jsonGenerator.writeFieldName("emm_state");
            EmmState.Serializer.INSTANCE.serialize(teamMemberPolicies.emmState, jsonGenerator);
            jsonGenerator.writeFieldName("office_addin");
            OfficeAddInPolicy.Serializer.INSTANCE.serialize(teamMemberPolicies.officeAddin, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMemberPolicies(TeamSharingPolicies teamSharingPolicies, EmmState emmState, OfficeAddInPolicy officeAddInPolicy) {
        if (teamSharingPolicies == null) {
            throw new IllegalArgumentException("Required value for 'sharing' is null");
        }
        this.sharing = teamSharingPolicies;
        if (emmState == null) {
            throw new IllegalArgumentException("Required value for 'emmState' is null");
        }
        this.emmState = emmState;
        if (officeAddInPolicy == null) {
            throw new IllegalArgumentException("Required value for 'officeAddin' is null");
        }
        this.officeAddin = officeAddInPolicy;
    }

    public boolean equals(Object obj) {
        EmmState emmState;
        EmmState emmState2;
        OfficeAddInPolicy officeAddInPolicy;
        OfficeAddInPolicy officeAddInPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMemberPolicies teamMemberPolicies = (TeamMemberPolicies) obj;
        TeamSharingPolicies teamSharingPolicies = this.sharing;
        TeamSharingPolicies teamSharingPolicies2 = teamMemberPolicies.sharing;
        return (teamSharingPolicies == teamSharingPolicies2 || teamSharingPolicies.equals(teamSharingPolicies2)) && ((emmState = this.emmState) == (emmState2 = teamMemberPolicies.emmState) || emmState.equals(emmState2)) && ((officeAddInPolicy = this.officeAddin) == (officeAddInPolicy2 = teamMemberPolicies.officeAddin) || officeAddInPolicy.equals(officeAddInPolicy2));
    }

    public EmmState getEmmState() {
        return this.emmState;
    }

    public OfficeAddInPolicy getOfficeAddin() {
        return this.officeAddin;
    }

    public TeamSharingPolicies getSharing() {
        return this.sharing;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharing, this.emmState, this.officeAddin});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
