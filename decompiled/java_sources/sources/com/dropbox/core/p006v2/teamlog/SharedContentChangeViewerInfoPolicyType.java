package com.dropbox.core.p006v2.teamlog;

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
public class SharedContentChangeViewerInfoPolicyType {
    protected final String description;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedContentChangeViewerInfoPolicyType$a */
    /* loaded from: classes4.dex */
    public static class C4049a extends StructSerializer<SharedContentChangeViewerInfoPolicyType> {

        /* renamed from: b */
        public static final C4049a f20325b = new C4049a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedContentChangeViewerInfoPolicyType deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("description".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"description\" missing.");
            }
            SharedContentChangeViewerInfoPolicyType sharedContentChangeViewerInfoPolicyType = new SharedContentChangeViewerInfoPolicyType(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedContentChangeViewerInfoPolicyType, sharedContentChangeViewerInfoPolicyType.toStringMultiline());
            return sharedContentChangeViewerInfoPolicyType;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedContentChangeViewerInfoPolicyType sharedContentChangeViewerInfoPolicyType, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("description");
            StoneSerializers.string().serialize((StoneSerializer<String>) sharedContentChangeViewerInfoPolicyType.description, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedContentChangeViewerInfoPolicyType(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'description' is null");
        }
        this.description = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.description;
        String str2 = ((SharedContentChangeViewerInfoPolicyType) obj).description;
        return str == str2 || str.equals(str2);
    }

    public String getDescription() {
        return this.description;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.description});
    }

    public String toString() {
        return C4049a.f20325b.serialize((C4049a) this, false);
    }

    public String toStringMultiline() {
        return C4049a.f20325b.serialize((C4049a) this, true);
    }
}
