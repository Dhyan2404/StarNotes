package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.teampolicies.TeamMemberPolicies;
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
public class TeamGetInfoResult {
    protected final String name;
    protected final long numLicensedUsers;
    protected final long numProvisionedUsers;
    protected final TeamMemberPolicies policies;
    protected final String teamId;

    /* renamed from: com.dropbox.core.v2.team.TeamGetInfoResult$a */
    /* loaded from: classes4.dex */
    public static class C3244a extends StructSerializer<TeamGetInfoResult> {

        /* renamed from: b */
        public static final C3244a f18532b = new C3244a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamGetInfoResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l2 = null;
            String str2 = null;
            String str3 = null;
            TeamMemberPolicies teamMemberPolicies = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("team_id".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("num_licensed_users".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if ("num_provisioned_users".equals(currentName)) {
                    l2 = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if ("policies".equals(currentName)) {
                    teamMemberPolicies = TeamMemberPolicies.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_id\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"num_licensed_users\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"num_provisioned_users\" missing.");
            }
            if (teamMemberPolicies == null) {
                throw new JsonParseException(jsonParser, "Required field \"policies\" missing.");
            }
            TeamGetInfoResult teamGetInfoResult = new TeamGetInfoResult(str2, str3, l.longValue(), l2.longValue(), teamMemberPolicies);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamGetInfoResult, teamGetInfoResult.toStringMultiline());
            return teamGetInfoResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamGetInfoResult teamGetInfoResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamGetInfoResult.name, jsonGenerator);
            jsonGenerator.writeFieldName("team_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamGetInfoResult.teamId, jsonGenerator);
            jsonGenerator.writeFieldName("num_licensed_users");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(teamGetInfoResult.numLicensedUsers), jsonGenerator);
            jsonGenerator.writeFieldName("num_provisioned_users");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(teamGetInfoResult.numProvisionedUsers), jsonGenerator);
            jsonGenerator.writeFieldName("policies");
            TeamMemberPolicies.Serializer.INSTANCE.serialize((TeamMemberPolicies.Serializer) teamGetInfoResult.policies, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamGetInfoResult(String str, String str2, long j, long j2, TeamMemberPolicies teamMemberPolicies) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'teamId' is null");
        }
        this.teamId = str2;
        this.numLicensedUsers = j;
        this.numProvisionedUsers = j2;
        if (teamMemberPolicies == null) {
            throw new IllegalArgumentException("Required value for 'policies' is null");
        }
        this.policies = teamMemberPolicies;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        TeamMemberPolicies teamMemberPolicies;
        TeamMemberPolicies teamMemberPolicies2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamGetInfoResult teamGetInfoResult = (TeamGetInfoResult) obj;
        String str3 = this.name;
        String str4 = teamGetInfoResult.name;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.teamId) == (str2 = teamGetInfoResult.teamId) || str.equals(str2)) && this.numLicensedUsers == teamGetInfoResult.numLicensedUsers && this.numProvisionedUsers == teamGetInfoResult.numProvisionedUsers && ((teamMemberPolicies = this.policies) == (teamMemberPolicies2 = teamGetInfoResult.policies) || teamMemberPolicies.equals(teamMemberPolicies2));
    }

    public String getName() {
        return this.name;
    }

    public long getNumLicensedUsers() {
        return this.numLicensedUsers;
    }

    public long getNumProvisionedUsers() {
        return this.numProvisionedUsers;
    }

    public TeamMemberPolicies getPolicies() {
        return this.policies;
    }

    public String getTeamId() {
        return this.teamId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.teamId, Long.valueOf(this.numLicensedUsers), Long.valueOf(this.numProvisionedUsers), this.policies});
    }

    public String toString() {
        return C3244a.f18532b.serialize((C3244a) this, false);
    }

    public String toStringMultiline() {
        return C3244a.f18532b.serialize((C3244a) this, true);
    }
}
