package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.PropertyGroup;
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
public class PropertiesSearchMatch {

    /* renamed from: id */
    protected final String f16930id;
    protected final boolean isDeleted;
    protected final String path;
    protected final List<PropertyGroup> propertyGroups;

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchMatch$a */
    /* loaded from: classes4.dex */
    public static class C2439a extends StructSerializer<PropertiesSearchMatch> {

        /* renamed from: b */
        public static final C2439a f16931b = new C2439a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertiesSearchMatch deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("path".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("is_deleted".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("property_groups".equals(currentName)) {
                    list = (List) StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_deleted\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"property_groups\" missing.");
            }
            PropertiesSearchMatch propertiesSearchMatch = new PropertiesSearchMatch(str2, str3, bool.booleanValue(), list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(propertiesSearchMatch, propertiesSearchMatch.toStringMultiline());
            return propertiesSearchMatch;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertiesSearchMatch propertiesSearchMatch, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertiesSearchMatch.f16930id, jsonGenerator);
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertiesSearchMatch.path, jsonGenerator);
            jsonGenerator.writeFieldName("is_deleted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(propertiesSearchMatch.isDeleted), jsonGenerator);
            jsonGenerator.writeFieldName("property_groups");
            StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).serialize((StoneSerializer) propertiesSearchMatch.propertyGroups, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertiesSearchMatch(String str, String str2, boolean z, List<PropertyGroup> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        this.f16930id = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        this.path = str2;
        this.isDeleted = z;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'propertyGroups' is null");
        }
        Iterator<PropertyGroup> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
            }
        }
        this.propertyGroups = list;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        List<PropertyGroup> list;
        List<PropertyGroup> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PropertiesSearchMatch propertiesSearchMatch = (PropertiesSearchMatch) obj;
        String str3 = this.f16930id;
        String str4 = propertiesSearchMatch.f16930id;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.path) == (str2 = propertiesSearchMatch.path) || str.equals(str2)) && this.isDeleted == propertiesSearchMatch.isDeleted && ((list = this.propertyGroups) == (list2 = propertiesSearchMatch.propertyGroups) || list.equals(list2));
    }

    public String getId() {
        return this.f16930id;
    }

    public boolean getIsDeleted() {
        return this.isDeleted;
    }

    public String getPath() {
        return this.path;
    }

    public List<PropertyGroup> getPropertyGroups() {
        return this.propertyGroups;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16930id, this.path, Boolean.valueOf(this.isDeleted), this.propertyGroups});
    }

    public String toString() {
        return C2439a.f16931b.serialize((C2439a) this, false);
    }

    public String toStringMultiline() {
        return C2439a.f16931b.serialize((C2439a) this, true);
    }
}
