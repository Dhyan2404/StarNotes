package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.WriteError;
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
public class UploadWriteFailed {
    protected final WriteError reason;
    protected final String uploadSessionId;

    /* renamed from: com.dropbox.core.v2.files.UploadWriteFailed$a */
    /* loaded from: classes4.dex */
    public static class C2697a extends StructSerializer<UploadWriteFailed> {

        /* renamed from: b */
        public static final C2697a f17477b = new C2697a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadWriteFailed deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            WriteError writeError = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("reason".equals(currentName)) {
                    writeError = WriteError.C2702b.f17485b.deserialize(jsonParser);
                } else if ("upload_session_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (writeError == null) {
                throw new JsonParseException(jsonParser, "Required field \"reason\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"upload_session_id\" missing.");
            }
            UploadWriteFailed uploadWriteFailed = new UploadWriteFailed(writeError, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(uploadWriteFailed, uploadWriteFailed.toStringMultiline());
            return uploadWriteFailed;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadWriteFailed uploadWriteFailed, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("reason");
            WriteError.C2702b.f17485b.serialize(uploadWriteFailed.reason, jsonGenerator);
            jsonGenerator.writeFieldName("upload_session_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) uploadWriteFailed.uploadSessionId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UploadWriteFailed(WriteError writeError, String str) {
        if (writeError == null) {
            throw new IllegalArgumentException("Required value for 'reason' is null");
        }
        this.reason = writeError;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'uploadSessionId' is null");
        }
        this.uploadSessionId = str;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UploadWriteFailed uploadWriteFailed = (UploadWriteFailed) obj;
        WriteError writeError = this.reason;
        WriteError writeError2 = uploadWriteFailed.reason;
        return (writeError == writeError2 || writeError.equals(writeError2)) && ((str = this.uploadSessionId) == (str2 = uploadWriteFailed.uploadSessionId) || str.equals(str2));
    }

    public WriteError getReason() {
        return this.reason;
    }

    public String getUploadSessionId() {
        return this.uploadSessionId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.reason, this.uploadSessionId});
    }

    public String toString() {
        return C2697a.f17477b.serialize((C2697a) this, false);
    }

    public String toStringMultiline() {
        return C2697a.f17477b.serialize((C2697a) this, true);
    }
}
