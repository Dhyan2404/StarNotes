package com.dropbox.core.p006v2.fileproperties;

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
public class UpdateTemplateResult {
    protected final String templateId;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<UpdateTemplateResult> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateTemplateResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("template_id".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    UpdateTemplateResult updateTemplateResult = new UpdateTemplateResult(str2);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(updateTemplateResult, updateTemplateResult.toStringMultiline());
                    return updateTemplateResult;
                }
                throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateTemplateResult updateTemplateResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("template_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) updateTemplateResult.templateId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UpdateTemplateResult(String str) {
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
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.templateId;
        String str2 = ((UpdateTemplateResult) obj).templateId;
        return str == str2 || str.equals(str2);
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
