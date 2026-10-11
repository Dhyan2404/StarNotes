package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.AdminTier;
import com.dropbox.core.p006v2.team.TeamMemberProfile;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.common.Scopes;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TeamMemberInfo {
    protected final TeamMemberProfile profile;
    protected final AdminTier role;

    /* renamed from: com.dropbox.core.v2.team.TeamMemberInfo$a */
    /* loaded from: classes4.dex */
    public static class C3245a extends StructSerializer<TeamMemberInfo> {

        /* renamed from: b */
        public static final C3245a f18533b = new C3245a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMemberInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamMemberProfile teamMemberProfile = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            AdminTier adminTier = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (Scopes.PROFILE.equals(currentName)) {
                    teamMemberProfile = TeamMemberProfile.C3246a.f18534b.deserialize(jsonParser);
                } else if ("role".equals(currentName)) {
                    adminTier = AdminTier.C3015b.f18121b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMemberProfile == null) {
                throw new JsonParseException(jsonParser, "Required field \"profile\" missing.");
            }
            if (adminTier == null) {
                throw new JsonParseException(jsonParser, "Required field \"role\" missing.");
            }
            TeamMemberInfo teamMemberInfo = new TeamMemberInfo(teamMemberProfile, adminTier);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMemberInfo, teamMemberInfo.toStringMultiline());
            return teamMemberInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMemberInfo teamMemberInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(Scopes.PROFILE);
            TeamMemberProfile.C3246a.f18534b.serialize((TeamMemberProfile.C3246a) teamMemberInfo.profile, jsonGenerator);
            jsonGenerator.writeFieldName("role");
            AdminTier.C3015b.f18121b.serialize(teamMemberInfo.role, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMemberInfo(TeamMemberProfile teamMemberProfile, AdminTier adminTier) {
        if (teamMemberProfile == null) {
            throw new IllegalArgumentException("Required value for 'profile' is null");
        }
        this.profile = teamMemberProfile;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'role' is null");
        }
        this.role = adminTier;
    }

    public boolean equals(Object obj) {
        AdminTier adminTier;
        AdminTier adminTier2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMemberInfo teamMemberInfo = (TeamMemberInfo) obj;
        TeamMemberProfile teamMemberProfile = this.profile;
        TeamMemberProfile teamMemberProfile2 = teamMemberInfo.profile;
        return (teamMemberProfile == teamMemberProfile2 || teamMemberProfile.equals(teamMemberProfile2)) && ((adminTier = this.role) == (adminTier2 = teamMemberInfo.role) || adminTier.equals(adminTier2));
    }

    public TeamMemberProfile getProfile() {
        return this.profile;
    }

    public AdminTier getRole() {
        return this.role;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.profile, this.role});
    }

    public String toString() {
        return C3245a.f18533b.serialize((C3245a) this, false);
    }

    public String toStringMultiline() {
        return C3245a.f18533b.serialize((C3245a) this, true);
    }
}
