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
public class BinderRemovePageType {
    protected final String description;

    /* renamed from: com.dropbox.core.v2.teamlog.BinderRemovePageType$a */
    /* loaded from: classes4.dex */
    public static class C3375a extends StructSerializer<BinderRemovePageType> {

        /* renamed from: b */
        public static final C3375a f18762b = new C3375a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BinderRemovePageType deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            BinderRemovePageType binderRemovePageType = new BinderRemovePageType(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(binderRemovePageType, binderRemovePageType.toStringMultiline());
            return binderRemovePageType;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(BinderRemovePageType binderRemovePageType, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("description");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderRemovePageType.description, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public BinderRemovePageType(String str) {
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
        String str2 = ((BinderRemovePageType) obj).description;
        return str == str2 || str.equals(str2);
    }

    public String getDescription() {
        return this.description;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.description});
    }

    public String toString() {
        return C3375a.f18762b.serialize((C3375a) this, false);
    }

    public String toStringMultiline() {
        return C3375a.f18762b.serialize((C3375a) this, true);
    }
}
