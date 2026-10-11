package com.dropbox.core;

import com.dropbox.core.stone.StoneSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* renamed from: com.dropbox.core.a */
/* loaded from: classes4.dex */
public final class C2260a<T> {

    /* renamed from: a */
    public final T f16477a;

    /* renamed from: b */
    public LocalizedText f16478b;

    /* renamed from: com.dropbox.core.a$a */
    /* loaded from: classes4.dex */
    public static final class a<T> extends StoneSerializer<C2260a<T>> {

        /* renamed from: b */
        public StoneSerializer<T> f16479b;

        public a(StoneSerializer<T> stoneSerializer) {
            this.f16479b = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2260a<T> deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            StoneSerializer.expectStartObject(jsonParser);
            T t = null;
            LocalizedText localizedText = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("error".equals(currentName)) {
                    t = this.f16479b.deserialize(jsonParser);
                } else if ("user_message".equals(currentName)) {
                    localizedText = LocalizedText.f16470c.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (t == null) {
                throw new JsonParseException(jsonParser, "Required field \"error\" missing.");
            }
            C2260a<T> c2260a = new C2260a<>(t, localizedText);
            StoneSerializer.expectEndObject(jsonParser);
            return c2260a;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2260a<T> c2260a, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    }

    public C2260a(T t, LocalizedText localizedText) {
        if (t == null) {
            throw new NullPointerException("error");
        }
        this.f16477a = t;
        this.f16478b = localizedText;
    }

    /* renamed from: a */
    public T m9997a() {
        return this.f16477a;
    }

    /* renamed from: b */
    public LocalizedText m9998b() {
        return this.f16478b;
    }
}
