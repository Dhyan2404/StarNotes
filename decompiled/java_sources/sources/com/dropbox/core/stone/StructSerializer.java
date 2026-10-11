package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* loaded from: classes4.dex */
public abstract class StructSerializer<T> extends CompositeSerializer<T> {
    @Override // com.dropbox.core.stone.StoneSerializer
    public T deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
        return deserialize(jsonParser, false);
    }

    public abstract T deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException;

    @Override // com.dropbox.core.stone.StoneSerializer
    public void serialize(T t, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
        serialize((StructSerializer<T>) t, jsonGenerator, false);
    }

    public abstract void serialize(T t, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException;
}
