package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.PropertyType;
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
public class PropertyFieldTemplate {
    protected final String description;
    protected final String name;
    protected final PropertyType type;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertyFieldTemplate$a */
    /* loaded from: classes4.dex */
    public static class C2445a extends StructSerializer<PropertyFieldTemplate> {

        /* renamed from: b */
        public static final C2445a f16939b = new C2445a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertyFieldTemplate deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            PropertyType propertyType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("description".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("type".equals(currentName)) {
                    propertyType = PropertyType.C2449b.f16943b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"description\" missing.");
            }
            if (propertyType == null) {
                throw new JsonParseException(jsonParser, "Required field \"type\" missing.");
            }
            PropertyFieldTemplate propertyFieldTemplate = new PropertyFieldTemplate(str2, str3, propertyType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(propertyFieldTemplate, propertyFieldTemplate.toStringMultiline());
            return propertyFieldTemplate;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertyFieldTemplate propertyFieldTemplate, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertyFieldTemplate.name, jsonGenerator);
            jsonGenerator.writeFieldName("description");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertyFieldTemplate.description, jsonGenerator);
            jsonGenerator.writeFieldName("type");
            PropertyType.C2449b.f16943b.serialize(propertyFieldTemplate.type, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertyFieldTemplate(String str, String str2, PropertyType propertyType) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'description' is null");
        }
        this.description = str2;
        if (propertyType == null) {
            throw new IllegalArgumentException("Required value for 'type' is null");
        }
        this.type = propertyType;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        PropertyType propertyType;
        PropertyType propertyType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PropertyFieldTemplate propertyFieldTemplate = (PropertyFieldTemplate) obj;
        String str3 = this.name;
        String str4 = propertyFieldTemplate.name;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.description) == (str2 = propertyFieldTemplate.description) || str.equals(str2)) && ((propertyType = this.type) == (propertyType2 = propertyFieldTemplate.type) || propertyType.equals(propertyType2));
    }

    public String getDescription() {
        return this.description;
    }

    public String getName() {
        return this.name;
    }

    public PropertyType getType() {
        return this.type;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.description, this.type});
    }

    public String toString() {
        return C2445a.f16939b.serialize((C2445a) this, false);
    }

    public String toStringMultiline() {
        return C2445a.f16939b.serialize((C2445a) this, true);
    }
}
