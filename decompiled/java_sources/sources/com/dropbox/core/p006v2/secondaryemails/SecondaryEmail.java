package com.dropbox.core.p006v2.secondaryemails;

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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class SecondaryEmail {
    protected final String email;
    protected final boolean isVerified;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<SecondaryEmail> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SecondaryEmail deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                Boolean bool = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("email".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("is_verified".equals(currentName)) {
                        bool = StoneSerializers.boolean_().deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"email\" missing.");
                }
                if (bool != null) {
                    SecondaryEmail secondaryEmail = new SecondaryEmail(str2, bool.booleanValue());
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(secondaryEmail, secondaryEmail.toStringMultiline());
                    return secondaryEmail;
                }
                throw new JsonParseException(jsonParser, "Required field \"is_verified\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SecondaryEmail secondaryEmail, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) secondaryEmail.email, jsonGenerator);
            jsonGenerator.writeFieldName("is_verified");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(secondaryEmail.isVerified), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SecondaryEmail(String str, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'email' is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String 'email' is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String 'email' does not match pattern");
        }
        this.email = str;
        this.isVerified = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SecondaryEmail secondaryEmail = (SecondaryEmail) obj;
        String str = this.email;
        String str2 = secondaryEmail.email;
        return (str == str2 || str.equals(str2)) && this.isVerified == secondaryEmail.isVerified;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean getIsVerified() {
        return this.isVerified;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.email, Boolean.valueOf(this.isVerified)});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
