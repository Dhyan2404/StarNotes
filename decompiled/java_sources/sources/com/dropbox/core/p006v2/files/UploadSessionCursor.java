package com.dropbox.core.p006v2.files;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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
public class UploadSessionCursor {
    protected final long offset;
    protected final String sessionId;

    /* renamed from: com.dropbox.core.v2.files.UploadSessionCursor$a */
    /* loaded from: classes4.dex */
    public static class C2682a extends StructSerializer<UploadSessionCursor> {

        /* renamed from: b */
        public static final C2682a f17448b = new C2682a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionCursor deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (TypedValues.CycleType.S_WAVE_OFFSET.equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"session_id\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"offset\" missing.");
            }
            UploadSessionCursor uploadSessionCursor = new UploadSessionCursor(str2, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(uploadSessionCursor, uploadSessionCursor.toStringMultiline());
            return uploadSessionCursor;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionCursor uploadSessionCursor, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) uploadSessionCursor.sessionId, jsonGenerator);
            jsonGenerator.writeFieldName(TypedValues.CycleType.S_WAVE_OFFSET);
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(uploadSessionCursor.offset), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UploadSessionCursor(String str, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sessionId' is null");
        }
        this.sessionId = str;
        this.offset = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UploadSessionCursor uploadSessionCursor = (UploadSessionCursor) obj;
        String str = this.sessionId;
        String str2 = uploadSessionCursor.sessionId;
        return (str == str2 || str.equals(str2)) && this.offset == uploadSessionCursor.offset;
    }

    public long getOffset() {
        return this.offset;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sessionId, Long.valueOf(this.offset)});
    }

    public String toString() {
        return C2682a.f17448b.serialize((C2682a) this, false);
    }

    public String toStringMultiline() {
        return C2682a.f17448b.serialize((C2682a) this, true);
    }
}
