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
public class PropertyGroupUpdate {
    protected final List<PropertyField> addOrUpdateFields;
    protected final List<String> removeFields;
    protected final String templateId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<PropertyField> addOrUpdateFields;
        protected List<String> removeFields;
        protected final String templateId;

        public Builder(String str) {
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
            this.addOrUpdateFields = null;
            this.removeFields = null;
        }

        public PropertyGroupUpdate build() {
            return new PropertyGroupUpdate(this.templateId, this.addOrUpdateFields, this.removeFields);
        }

        public Builder withAddOrUpdateFields(List<PropertyField> list) {
            if (list != null) {
                Iterator<PropertyField> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'addOrUpdateFields' is null");
                    }
                }
            }
            this.addOrUpdateFields = list;
            return this;
        }

        public Builder withRemoveFields(List<String> list) {
            if (list != null) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'removeFields' is null");
                    }
                }
            }
            this.removeFields = list;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertyGroupUpdate$a */
    /* loaded from: classes4.dex */
    public static class C2447a extends StructSerializer<PropertyGroupUpdate> {

        /* renamed from: b */
        public static final C2447a f16941b = new C2447a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertyGroupUpdate deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            List list2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("template_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("add_or_update_fields".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyField.C2444a.f16938b)).deserialize(jsonParser);
                } else if ("remove_fields".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
            }
            PropertyGroupUpdate propertyGroupUpdate = new PropertyGroupUpdate(str2, list, list2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(propertyGroupUpdate, propertyGroupUpdate.toStringMultiline());
            return propertyGroupUpdate;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertyGroupUpdate propertyGroupUpdate, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("template_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertyGroupUpdate.templateId, jsonGenerator);
            if (propertyGroupUpdate.addOrUpdateFields != null) {
                jsonGenerator.writeFieldName("add_or_update_fields");
                StoneSerializers.nullable(StoneSerializers.list(PropertyField.C2444a.f16938b)).serialize((StoneSerializer) propertyGroupUpdate.addOrUpdateFields, jsonGenerator);
            }
            if (propertyGroupUpdate.removeFields != null) {
                jsonGenerator.writeFieldName("remove_fields");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) propertyGroupUpdate.removeFields, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PropertyGroupUpdate(String str, List<PropertyField> list, List<String> list2) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("(/|ptid:).*", str)) {
                    this.templateId = str;
                    if (list != null) {
                        Iterator<PropertyField> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'addOrUpdateFields' is null");
                            }
                        }
                    }
                    this.addOrUpdateFields = list;
                    if (list2 != null) {
                        Iterator<String> it3 = list2.iterator();
                        while (it3.hasNext()) {
                            if (it3.next() == null) {
                                throw new IllegalArgumentException("An item in list 'removeFields' is null");
                            }
                        }
                    }
                    this.removeFields = list2;
                    return;
                }
                throw new IllegalArgumentException("String 'templateId' does not match pattern");
            }
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'templateId' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
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
        PropertyGroupUpdate propertyGroupUpdate = (PropertyGroupUpdate) obj;
        String str = this.templateId;
        String str2 = propertyGroupUpdate.templateId;
        if ((str == str2 || str.equals(str2)) && ((list = this.addOrUpdateFields) == (list2 = propertyGroupUpdate.addOrUpdateFields) || (list != null && list.equals(list2)))) {
            List<String> list3 = this.removeFields;
            List<String> list4 = propertyGroupUpdate.removeFields;
            if (list3 == list4) {
                return true;
            }
            if (list3 != null && list3.equals(list4)) {
                return true;
            }
        }
        return false;
    }

    public List<PropertyField> getAddOrUpdateFields() {
        return this.addOrUpdateFields;
    }

    public List<String> getRemoveFields() {
        return this.removeFields;
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId, this.addOrUpdateFields, this.removeFields});
    }

    public String toString() {
        return C2447a.f16941b.serialize((C2447a) this, false);
    }

    public String toStringMultiline() {
        return C2447a.f16941b.serialize((C2447a) this, true);
    }

    public PropertyGroupUpdate(String str) {
        this(str, null, null);
    }
}
