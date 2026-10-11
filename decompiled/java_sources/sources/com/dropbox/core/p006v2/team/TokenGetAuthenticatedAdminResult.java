package com.dropbox.core.p006v2.team;

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
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class TokenGetAuthenticatedAdminResult {
    protected final TeamMemberProfile adminProfile;

    /* renamed from: com.dropbox.core.v2.team.TokenGetAuthenticatedAdminResult$a */
    /* loaded from: classes4.dex */
    public static class C3259a extends StructSerializer<TokenGetAuthenticatedAdminResult> {

        /* renamed from: b */
        public static final C3259a f18549b = new C3259a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TokenGetAuthenticatedAdminResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("admin_profile".equals(currentName)) {
                    teamMemberProfile = TeamMemberProfile.C3246a.f18534b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamMemberProfile == null) {
                throw new JsonParseException(jsonParser, "Required field \"admin_profile\" missing.");
            }
            TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdminResult = new TokenGetAuthenticatedAdminResult(teamMemberProfile);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(tokenGetAuthenticatedAdminResult, tokenGetAuthenticatedAdminResult.toStringMultiline());
            return tokenGetAuthenticatedAdminResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdminResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("admin_profile");
            TeamMemberProfile.C3246a.f18534b.serialize((TeamMemberProfile.C3246a) tokenGetAuthenticatedAdminResult.adminProfile, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TokenGetAuthenticatedAdminResult(TeamMemberProfile teamMemberProfile) {
        if (teamMemberProfile == null) {
            throw new IllegalArgumentException("Required value for 'adminProfile' is null");
        }
        this.adminProfile = teamMemberProfile;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMemberProfile teamMemberProfile = this.adminProfile;
        TeamMemberProfile teamMemberProfile2 = ((TokenGetAuthenticatedAdminResult) obj).adminProfile;
        return teamMemberProfile == teamMemberProfile2 || teamMemberProfile.equals(teamMemberProfile2);
    }

    public TeamMemberProfile getAdminProfile() {
        return this.adminProfile;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.adminProfile});
    }

    public String toString() {
        return C3259a.f18549b.serialize((C3259a) this, false);
    }

    public String toStringMultiline() {
        return C3259a.f18549b.serialize((C3259a) this, true);
    }
}
