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
public class NonTrustedTeamDetails {
    protected final String team;

    /* renamed from: com.dropbox.core.v2.teamlog.NonTrustedTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C3814a extends StructSerializer<NonTrustedTeamDetails> {

        /* renamed from: b */
        public static final C3814a f20087b = new C3814a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NonTrustedTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team\" missing.");
            }
            NonTrustedTeamDetails nonTrustedTeamDetails = new NonTrustedTeamDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(nonTrustedTeamDetails, nonTrustedTeamDetails.toStringMultiline());
            return nonTrustedTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NonTrustedTeamDetails nonTrustedTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team");
            StoneSerializers.string().serialize((StoneSerializer<String>) nonTrustedTeamDetails.team, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NonTrustedTeamDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'team' is null");
        }
        this.team = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.team;
        String str2 = ((NonTrustedTeamDetails) obj).team;
        return str == str2 || str.equals(str2);
    }

    public String getTeam() {
        return this.team;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.team});
    }

    public String toString() {
        return C3814a.f20087b.serialize((C3814a) this, false);
    }

    public String toStringMultiline() {
        return C3814a.f20087b.serialize((C3814a) this, true);
    }
}
