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
public class TeamProfileChangeDefaultLanguageDetails {
    protected final String newValue;
    protected final String previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamProfileChangeDefaultLanguageDetails$a */
    /* loaded from: classes4.dex */
    public static class C4340a extends StructSerializer<TeamProfileChangeDefaultLanguageDetails> {

        /* renamed from: b */
        public static final C4340a f20628b = new C4340a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamProfileChangeDefaultLanguageDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("new_value".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            TeamProfileChangeDefaultLanguageDetails teamProfileChangeDefaultLanguageDetails = new TeamProfileChangeDefaultLanguageDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamProfileChangeDefaultLanguageDetails, teamProfileChangeDefaultLanguageDetails.toStringMultiline());
            return teamProfileChangeDefaultLanguageDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamProfileChangeDefaultLanguageDetails teamProfileChangeDefaultLanguageDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamProfileChangeDefaultLanguageDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamProfileChangeDefaultLanguageDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamProfileChangeDefaultLanguageDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        if (str.length() < 2) {
            throw new IllegalArgumentException("String 'newValue' is shorter than 2");
        }
        this.newValue = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        if (str2.length() < 2) {
            throw new IllegalArgumentException("String 'previousValue' is shorter than 2");
        }
        this.previousValue = str2;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamProfileChangeDefaultLanguageDetails teamProfileChangeDefaultLanguageDetails = (TeamProfileChangeDefaultLanguageDetails) obj;
        String str3 = this.newValue;
        String str4 = teamProfileChangeDefaultLanguageDetails.newValue;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.previousValue) == (str2 = teamProfileChangeDefaultLanguageDetails.previousValue) || str.equals(str2));
    }

    public String getNewValue() {
        return this.newValue;
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4340a.f20628b.serialize((C4340a) this, false);
    }

    public String toStringMultiline() {
        return C4340a.f20628b.serialize((C4340a) this, true);
    }
}
