package com.dropbox.core.p006v2.files;

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
public class UploadSessionOffsetError {
    protected final long correctOffset;

    /* renamed from: com.dropbox.core.v2.files.UploadSessionOffsetError$a */
    /* loaded from: classes4.dex */
    public static class C2695a extends StructSerializer<UploadSessionOffsetError> {

        /* renamed from: b */
        public static final C2695a f17475b = new C2695a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionOffsetError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
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
                if ("correct_offset".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"correct_offset\" missing.");
            }
            UploadSessionOffsetError uploadSessionOffsetError = new UploadSessionOffsetError(l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(uploadSessionOffsetError, uploadSessionOffsetError.toStringMultiline());
            return uploadSessionOffsetError;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionOffsetError uploadSessionOffsetError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("correct_offset");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(uploadSessionOffsetError.correctOffset), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UploadSessionOffsetError(long j) {
        this.correctOffset = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.correctOffset == ((UploadSessionOffsetError) obj).correctOffset;
    }

    public long getCorrectOffset() {
        return this.correctOffset;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.correctOffset)});
    }

    public String toString() {
        return C2695a.f17475b.serialize((C2695a) this, false);
    }

    public String toStringMultiline() {
        return C2695a.f17475b.serialize((C2695a) this, true);
    }
}
