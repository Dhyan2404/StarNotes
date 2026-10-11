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
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class PropertyGroupTemplate {
    protected final String description;
    protected final List<PropertyFieldTemplate> fields;
    protected final String name;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertyGroupTemplate$a */
    /* loaded from: classes4.dex */
    public static class C2446a extends StructSerializer<PropertyGroupTemplate> {

        /* renamed from: b */
        public static final C2446a f16940b = new C2446a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertyGroupTemplate deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"fields\" missing.");
            }
            PropertyGroupTemplate propertyGroupTemplate = new PropertyGroupTemplate(str2, str3, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(propertyGroupTemplate, propertyGroupTemplate.toStringMultiline());
            return propertyGroupTemplate;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertyGroupTemplate propertyGroupTemplate, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertyGroupTemplate.name, jsonGenerator);
            jsonGenerator.writeFieldName("description");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertyGroupTemplate.description, jsonGenerator);
            jsonGenerator.writeFieldName("fields");
            StoneSerializers.list(PropertyFieldTemplate.C2445a.f16939b).serialize((StoneSerializer) propertyGroupTemplate.fields, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertyGroupTemplate(String str, String str2, List<PropertyFieldTemplate> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'description' is null");
        }
        this.description = str2;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'fields' is null");
        }
        Iterator<PropertyFieldTemplate> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'fields' is null");
            }
        }
        this.fields = list;
    }

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
        PropertyGroupTemplate propertyGroupTemplate = (PropertyGroupTemplate) obj;
        String str3 = this.name;
        String str4 = propertyGroupTemplate.name;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.description) == (str2 = propertyGroupTemplate.description) || str.equals(str2)) && ((list = this.fields) == (list2 = propertyGroupTemplate.fields) || list.equals(list2));
    }

    public String getDescription() {
        return this.description;
    }

    public List<PropertyFieldTemplate> getFields() {
        return this.fields;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.description, this.fields});
    }

    public String toString() {
        return C2446a.f16940b.serialize((C2446a) this, false);
    }

    public String toStringMultiline() {
        return C2446a.f16940b.serialize((C2446a) this, true);
    }
}
