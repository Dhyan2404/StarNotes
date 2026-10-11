package com.dropbox.core.p006v2.users;

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
public class Name {
    protected final String abbreviatedName;
    protected final String displayName;
    protected final String familiarName;
    protected final String givenName;
    protected final String surname;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<Name> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public Name deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                String str6 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("given_name".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("surname".equals(currentName)) {
                        str3 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("familiar_name".equals(currentName)) {
                        str4 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("display_name".equals(currentName)) {
                        str5 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("abbreviated_name".equals(currentName)) {
                        str6 = StoneSerializers.string().deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"given_name\" missing.");
                }
                if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"surname\" missing.");
                }
                if (str4 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"familiar_name\" missing.");
                }
                if (str5 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
                }
                if (str6 != null) {
                    Name name = new Name(str2, str3, str4, str5, str6);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(name, name.toStringMultiline());
                    return name;
                }
                throw new JsonParseException(jsonParser, "Required field \"abbreviated_name\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(Name name, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("given_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) name.givenName, jsonGenerator);
            jsonGenerator.writeFieldName("surname");
            StoneSerializers.string().serialize((StoneSerializer<String>) name.surname, jsonGenerator);
            jsonGenerator.writeFieldName("familiar_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) name.familiarName, jsonGenerator);
            jsonGenerator.writeFieldName("display_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) name.displayName, jsonGenerator);
            jsonGenerator.writeFieldName("abbreviated_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) name.abbreviatedName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Name(String str, String str2, String str3, String str4, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'givenName' is null");
        }
        this.givenName = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'surname' is null");
        }
        this.surname = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'familiarName' is null");
        }
        this.familiarName = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        this.displayName = str4;
        if (str5 == null) {
            throw new IllegalArgumentException("Required value for 'abbreviatedName' is null");
        }
        this.abbreviatedName = str5;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Name name = (Name) obj;
        String str9 = this.givenName;
        String str10 = name.givenName;
        return (str9 == str10 || str9.equals(str10)) && ((str = this.surname) == (str2 = name.surname) || str.equals(str2)) && (((str3 = this.familiarName) == (str4 = name.familiarName) || str3.equals(str4)) && (((str5 = this.displayName) == (str6 = name.displayName) || str5.equals(str6)) && ((str7 = this.abbreviatedName) == (str8 = name.abbreviatedName) || str7.equals(str8))));
    }

    public String getAbbreviatedName() {
        return this.abbreviatedName;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getFamiliarName() {
        return this.familiarName;
    }

    public String getGivenName() {
        return this.givenName;
    }

    public String getSurname() {
        return this.surname;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.givenName, this.surname, this.familiarName, this.displayName, this.abbreviatedName});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
