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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class UpdateTemplateArg {
    protected final List<PropertyFieldTemplate> addFields;
    protected final String description;
    protected final String name;
    protected final String templateId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<PropertyFieldTemplate> addFields;
        protected String description;
        protected String name;
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
            this.name = null;
            this.description = null;
            this.addFields = null;
        }

        public UpdateTemplateArg build() {
            return new UpdateTemplateArg(this.templateId, this.name, this.description, this.addFields);
        }

        public Builder withAddFields(List<PropertyFieldTemplate> list) {
            if (list != null) {
                Iterator<PropertyFieldTemplate> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'addFields' is null");
                    }
                }
            }
            this.addFields = list;
            return this;
        }

        public Builder withDescription(String str) {
            this.description = str;
            return this;
        }

        public Builder withName(String str) {
            this.name = str;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<UpdateTemplateArg> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateTemplateArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                String str4 = null;
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("template_id".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("name".equals(currentName)) {
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                    } else if ("description".equals(currentName)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                    } else if ("add_fields".equals(currentName)) {
                        list = (List) StoneSerializers.nullable(StoneSerializers.list(PropertyFieldTemplate.C2445a.f16939b)).deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    UpdateTemplateArg updateTemplateArg = new UpdateTemplateArg(str2, str3, str4, list);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(updateTemplateArg, updateTemplateArg.toStringMultiline());
                    return updateTemplateArg;
                }
                throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateTemplateArg updateTemplateArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("template_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) updateTemplateArg.templateId, jsonGenerator);
            if (updateTemplateArg.name != null) {
                jsonGenerator.writeFieldName("name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) updateTemplateArg.name, jsonGenerator);
            }
            if (updateTemplateArg.description != null) {
                jsonGenerator.writeFieldName("description");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) updateTemplateArg.description, jsonGenerator);
            }
            if (updateTemplateArg.addFields != null) {
                jsonGenerator.writeFieldName("add_fields");
                StoneSerializers.nullable(StoneSerializers.list(PropertyFieldTemplate.C2445a.f16939b)).serialize((StoneSerializer) updateTemplateArg.addFields, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UpdateTemplateArg(String str, String str2, String str3, List<PropertyFieldTemplate> list) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("(/|ptid:).*", str)) {
                    this.templateId = str;
                    this.name = str2;
                    this.description = str3;
                    if (list != null) {
                        Iterator<PropertyFieldTemplate> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'addFields' is null");
                            }
                        }
                    }
                    this.addFields = list;
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
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UpdateTemplateArg updateTemplateArg = (UpdateTemplateArg) obj;
        String str5 = this.templateId;
        String str6 = updateTemplateArg.templateId;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.name) == (str2 = updateTemplateArg.name) || (str != null && str.equals(str2))) && ((str3 = this.description) == (str4 = updateTemplateArg.description) || (str3 != null && str3.equals(str4))))) {
            List<PropertyFieldTemplate> list = this.addFields;
            List<PropertyFieldTemplate> list2 = updateTemplateArg.addFields;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public List<PropertyFieldTemplate> getAddFields() {
        return this.addFields;
    }

    public String getDescription() {
        return this.description;
    }

    public String getName() {
        return this.name;
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId, this.name, this.description, this.addFields});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public UpdateTemplateArg(String str) {
        this(str, null, null, null);
    }
}
