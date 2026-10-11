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
public class LockResult {
    protected final long expiresAt;
    protected final String fileId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String fileId = "\"\"";
        protected long expiresAt = 0;

        public LockResult build() {
            return new LockResult(this.fileId, this.expiresAt);
        }

        public Builder withExpiresAt(Long l) {
            if (l != null) {
                this.expiresAt = l.longValue();
            } else {
                this.expiresAt = 0L;
            }
            return this;
        }

        public Builder withFileId(String str) {
            if (str != null) {
                this.fileId = str;
            } else {
                this.fileId = "\"\"";
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.LockResult$a */
    /* loaded from: classes4.dex */
    public static class C2396a extends StructSerializer<LockResult> {

        /* renamed from: b */
        public static final C2396a f16844b = new C2396a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = 0L;
            String str2 = "\"\"";
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("expires_at".equals(currentName)) {
                    l = StoneSerializers.int64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            LockResult lockResult = new LockResult(str2, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(lockResult, lockResult.toStringMultiline());
            return lockResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockResult lockResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) lockResult.fileId, jsonGenerator);
            jsonGenerator.writeFieldName("expires_at");
            StoneSerializers.int64().serialize((StoneSerializer<Long>) Long.valueOf(lockResult.expiresAt), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LockResult(String str, long j) {
        if (str != null) {
            this.fileId = str;
            this.expiresAt = j;
            return;
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LockResult lockResult = (LockResult) obj;
        String str = this.fileId;
        String str2 = lockResult.fileId;
        return (str == str2 || str.equals(str2)) && this.expiresAt == lockResult.expiresAt;
    }

    public long getExpiresAt() {
        return this.expiresAt;
    }

    public String getFileId() {
        return this.fileId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileId, Long.valueOf(this.expiresAt)});
    }

    public String toString() {
        return C2396a.f16844b.serialize((C2396a) this, false);
    }

    public String toStringMultiline() {
        return C2396a.f16844b.serialize((C2396a) this, true);
    }

    public LockResult() {
        this("\"\"", 0L);
    }
}
