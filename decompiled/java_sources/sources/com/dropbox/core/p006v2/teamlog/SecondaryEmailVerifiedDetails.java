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
public class SecondaryEmailVerifiedDetails {
    protected final String secondaryEmail;

    /* renamed from: com.dropbox.core.v2.teamlog.SecondaryEmailVerifiedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3987a extends StructSerializer<SecondaryEmailVerifiedDetails> {

        /* renamed from: b */
        public static final C3987a f20263b = new C3987a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SecondaryEmailVerifiedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("secondary_email".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"secondary_email\" missing.");
            }
            SecondaryEmailVerifiedDetails secondaryEmailVerifiedDetails = new SecondaryEmailVerifiedDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(secondaryEmailVerifiedDetails, secondaryEmailVerifiedDetails.toStringMultiline());
            return secondaryEmailVerifiedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SecondaryEmailVerifiedDetails secondaryEmailVerifiedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("secondary_email");
            StoneSerializers.string().serialize((StoneSerializer<String>) secondaryEmailVerifiedDetails.secondaryEmail, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SecondaryEmailVerifiedDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'secondaryEmail' is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String 'secondaryEmail' is longer than 255");
        }
        this.secondaryEmail = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.secondaryEmail;
        String str2 = ((SecondaryEmailVerifiedDetails) obj).secondaryEmail;
        return str == str2 || str.equals(str2);
    }

    public String getSecondaryEmail() {
        return this.secondaryEmail;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.secondaryEmail});
    }

    public String toString() {
        return C3987a.f20263b.serialize((C3987a) this, false);
    }

    public String toStringMultiline() {
        return C3987a.f20263b.serialize((C3987a) this, true);
    }
}
