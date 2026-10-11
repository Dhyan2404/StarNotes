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
public class GuestAdminSignedOutViaTrustedTeamsDetails {
    protected final String teamName;
    protected final String trustedTeamName;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String teamName = null;
        protected String trustedTeamName = null;

        public GuestAdminSignedOutViaTrustedTeamsDetails build() {
            return new GuestAdminSignedOutViaTrustedTeamsDetails(this.teamName, this.trustedTeamName);
        }

        public Builder withTeamName(String str) {
            this.teamName = str;
            return this;
        }

        public Builder withTrustedTeamName(String str) {
            this.trustedTeamName = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GuestAdminSignedOutViaTrustedTeamsDetails$a */
    /* loaded from: classes4.dex */
    public static class C3677a extends StructSerializer<GuestAdminSignedOutViaTrustedTeamsDetails> {

        /* renamed from: b */
        public static final C3677a f19945b = new C3677a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GuestAdminSignedOutViaTrustedTeamsDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("team_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("trusted_team_name".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            GuestAdminSignedOutViaTrustedTeamsDetails guestAdminSignedOutViaTrustedTeamsDetails = new GuestAdminSignedOutViaTrustedTeamsDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(guestAdminSignedOutViaTrustedTeamsDetails, guestAdminSignedOutViaTrustedTeamsDetails.toStringMultiline());
            return guestAdminSignedOutViaTrustedTeamsDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GuestAdminSignedOutViaTrustedTeamsDetails guestAdminSignedOutViaTrustedTeamsDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (guestAdminSignedOutViaTrustedTeamsDetails.teamName != null) {
                jsonGenerator.writeFieldName("team_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) guestAdminSignedOutViaTrustedTeamsDetails.teamName, jsonGenerator);
            }
            if (guestAdminSignedOutViaTrustedTeamsDetails.trustedTeamName != null) {
                jsonGenerator.writeFieldName("trusted_team_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) guestAdminSignedOutViaTrustedTeamsDetails.trustedTeamName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GuestAdminSignedOutViaTrustedTeamsDetails(String str, String str2) {
        this.teamName = str;
        this.trustedTeamName = str2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GuestAdminSignedOutViaTrustedTeamsDetails guestAdminSignedOutViaTrustedTeamsDetails = (GuestAdminSignedOutViaTrustedTeamsDetails) obj;
        String str = this.teamName;
        String str2 = guestAdminSignedOutViaTrustedTeamsDetails.teamName;
        if (str == str2 || (str != null && str.equals(str2))) {
            String str3 = this.trustedTeamName;
            String str4 = guestAdminSignedOutViaTrustedTeamsDetails.trustedTeamName;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getTeamName() {
        return this.teamName;
    }

    public String getTrustedTeamName() {
        return this.trustedTeamName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamName, this.trustedTeamName});
    }

    public String toString() {
        return C3677a.f19945b.serialize((C3677a) this, false);
    }

    public String toStringMultiline() {
        return C3677a.f19945b.serialize((C3677a) this, true);
    }

    public GuestAdminSignedOutViaTrustedTeamsDetails() {
        this(null, null);
    }
}
