package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.PropertyField;
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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class PropertyGroup {
    protected final List<PropertyField> fields;
    protected final String templateId;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<PropertyGroup> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PropertyGroup deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("template_id".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("fields".equals(currentName)) {
                        list = (List) StoneSerializers.list(PropertyField.C2444a.f16938b).deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
                }
                if (list != null) {
                    PropertyGroup propertyGroup = new PropertyGroup(str2, list);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(propertyGroup, propertyGroup.toStringMultiline());
                    return propertyGroup;
                }
                throw new JsonParseException(jsonParser, "Required field \"fields\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PropertyGroup propertyGroup, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("template_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertyGroup.templateId, jsonGenerator);
            jsonGenerator.writeFieldName("fields");
            StoneSerializers.list(PropertyField.C2444a.f16938b).serialize((StoneSerializer) propertyGroup.fields, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertyGroup(String str, List<PropertyField> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'templateId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
        this.templateId = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'fields' is null");
        }
        Iterator<PropertyField> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'fields' is null");
            }
        }
        this.fields = list;
    }

    public boolean equals(Object obj) {
        List<PropertyField> list;
        List<PropertyField> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PropertyGroup propertyGroup = (PropertyGroup) obj;
        String str = this.templateId;
        String str2 = propertyGroup.templateId;
        return (str == str2 || str.equals(str2)) && ((list = this.fields) == (list2 = propertyGroup.fields) || list.equals(list2));
    }

    public List<PropertyField> getFields() {
        return this.fields;
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId, this.fields});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
