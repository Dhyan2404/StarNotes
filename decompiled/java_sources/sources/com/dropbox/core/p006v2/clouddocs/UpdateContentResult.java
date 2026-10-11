package com.dropbox.core.p006v2.clouddocs;

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
public class UpdateContentResult {
    protected final String version;

    /* renamed from: com.dropbox.core.v2.clouddocs.UpdateContentResult$a */
    /* loaded from: classes4.dex */
    public static class C2412a extends StructSerializer<UpdateContentResult> {

        /* renamed from: b */
        public static final C2412a f16871b = new C2412a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateContentResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("version".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"version\" missing.");
            }
            UpdateContentResult updateContentResult = new UpdateContentResult(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(updateContentResult, updateContentResult.toStringMultiline());
            return updateContentResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateContentResult updateContentResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("version");
            StoneSerializers.string().serialize((StoneSerializer<String>) updateContentResult.version, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UpdateContentResult(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'version' is null");
        }
        this.version = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.version;
        String str2 = ((UpdateContentResult) obj).version;
        return str == str2 || str.equals(str2);
    }

    public String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.version});
    }

    public String toString() {
        return C2412a.f16871b.serialize((C2412a) this, false);
    }

    public String toStringMultiline() {
        return C2412a.f16871b.serialize((C2412a) this, true);
    }
}
