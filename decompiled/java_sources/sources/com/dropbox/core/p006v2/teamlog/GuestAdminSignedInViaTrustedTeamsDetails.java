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
public class GuestAdminSignedInViaTrustedTeamsDetails {
    protected final String teamName;
    protected final String trustedTeamName;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String teamName = null;
        protected String trustedTeamName = null;

        public GuestAdminSignedInViaTrustedTeamsDetails build() {
            return new GuestAdminSignedInViaTrustedTeamsDetails(this.teamName, this.trustedTeamName);
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

    /* renamed from: com.dropbox.core.v2.teamlog.GuestAdminSignedInViaTrustedTeamsDetails$a */
    /* loaded from: classes4.dex */
    public static class C3675a extends StructSerializer<GuestAdminSignedInViaTrustedTeamsDetails> {

        /* renamed from: b */
        public static final C3675a f19943b = new C3675a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GuestAdminSignedInViaTrustedTeamsDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GuestAdminSignedInViaTrustedTeamsDetails guestAdminSignedInViaTrustedTeamsDetails = new GuestAdminSignedInViaTrustedTeamsDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(guestAdminSignedInViaTrustedTeamsDetails, guestAdminSignedInViaTrustedTeamsDetails.toStringMultiline());
            return guestAdminSignedInViaTrustedTeamsDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GuestAdminSignedInViaTrustedTeamsDetails guestAdminSignedInViaTrustedTeamsDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (guestAdminSignedInViaTrustedTeamsDetails.teamName != null) {
                jsonGenerator.writeFieldName("team_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) guestAdminSignedInViaTrustedTeamsDetails.teamName, jsonGenerator);
            }
            if (guestAdminSignedInViaTrustedTeamsDetails.trustedTeamName != null) {
                jsonGenerator.writeFieldName("trusted_team_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) guestAdminSignedInViaTrustedTeamsDetails.trustedTeamName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GuestAdminSignedInViaTrustedTeamsDetails(String str, String str2) {
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
        GuestAdminSignedInViaTrustedTeamsDetails guestAdminSignedInViaTrustedTeamsDetails = (GuestAdminSignedInViaTrustedTeamsDetails) obj;
        String str = this.teamName;
        String str2 = guestAdminSignedInViaTrustedTeamsDetails.teamName;
        if (str == str2 || (str != null && str.equals(str2))) {
            String str3 = this.trustedTeamName;
            String str4 = guestAdminSignedInViaTrustedTeamsDetails.trustedTeamName;
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
        return C3675a.f19943b.serialize((C3675a) this, false);
    }

    public String toStringMultiline() {
        return C3675a.f19943b.serialize((C3675a) this, true);
    }

    public GuestAdminSignedInViaTrustedTeamsDetails() {
        this(null, null);
    }
}
