package com.dropbox.core;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class LocalizedText {

    /* renamed from: c */
    public static final StoneSerializer<LocalizedText> f16470c = new C2259a();

    /* renamed from: a */
    public final String f16471a;

    /* renamed from: b */
    public final String f16472b;

    /* renamed from: com.dropbox.core.LocalizedText$a */
    /* loaded from: classes4.dex */
    public static class C2259a extends StoneSerializer<LocalizedText> {
        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LocalizedText deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            StoneSerializer.expectStartObject(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("text".equals(currentName)) {
                    str = StoneSerializers.string().deserialize(jsonParser);
                } else if ("locale".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str == null) {
                throw new JsonParseException(jsonParser, "Required field \"text\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"locale\" missing.");
            }
            LocalizedText localizedText = new LocalizedText(str, str2);
            StoneSerializer.expectEndObject(jsonParser);
            return localizedText;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LocalizedText localizedText, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    }

    public LocalizedText(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("text");
        }
        if (str2 == null) {
            throw new NullPointerException("locale");
        }
        this.f16471a = str;
        this.f16472b = str2;
    }

    public String getLocale() {
        return this.f16472b;
    }

    public String getText() {
        return this.f16471a;
    }

    public String toString() {
        return this.f16471a;
    }
}
