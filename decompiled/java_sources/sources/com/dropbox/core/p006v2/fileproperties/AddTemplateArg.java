package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.PropertyFieldTemplate;
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
import java.util.List;

/* loaded from: classes4.dex */
public class AddTemplateArg extends PropertyGroupTemplate {

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<AddTemplateArg> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddTemplateArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                String str3 = null;
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("name".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("description".equals(currentName)) {
                        str3 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("fields".equals(currentName)) {
                        list = (List) StoneSerializers.list(PropertyFieldTemplate.C2445a.f16939b).deserialize(jsonParser);
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
                if (list != null) {
                    AddTemplateArg addTemplateArg = new AddTemplateArg(str2, str3, list);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(addTemplateArg, addTemplateArg.toStringMultiline());
                    return addTemplateArg;
                }
                throw new JsonParseException(jsonParser, "Required field \"fields\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddTemplateArg addTemplateArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) addTemplateArg.name, jsonGenerator);
            jsonGenerator.writeFieldName("description");
            StoneSerializers.string().serialize((StoneSerializer<String>) addTemplateArg.description, jsonGenerator);
            jsonGenerator.writeFieldName("fields");
            StoneSerializers.list(PropertyFieldTemplate.C2445a.f16939b).serialize((StoneSerializer) addTemplateArg.fields, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AddTemplateArg(String str, String str2, List<PropertyFieldTemplate> list) {
        super(str, str2, list);
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public boolean equals(Object obj) {
        String str;
        String str2;
        List<PropertyFieldTemplate> list;
        List<PropertyFieldTemplate> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AddTemplateArg addTemplateArg = (AddTemplateArg) obj;
        String str3 = this.name;
        String str4 = addTemplateArg.name;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.description) == (str2 = addTemplateArg.description) || str.equals(str2)) && ((list = this.fields) == (list2 = addTemplateArg.fields) || list.equals(list2));
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public String getDescription() {
        return this.description;
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public List<PropertyFieldTemplate> getFields() {
        return this.fields;
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public String getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    @Override // com.dropbox.core.p006v2.fileproperties.PropertyGroupTemplate
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
