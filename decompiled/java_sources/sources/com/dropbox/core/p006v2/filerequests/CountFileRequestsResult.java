package com.dropbox.core.p006v2.filerequests;

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
public class CountFileRequestsResult {
    protected final long fileRequestCount;

    /* renamed from: com.dropbox.core.v2.filerequests.CountFileRequestsResult$a */
    /* loaded from: classes4.dex */
    public static class C2461a extends StructSerializer<CountFileRequestsResult> {

        /* renamed from: b */
        public static final C2461a f16977b = new C2461a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CountFileRequestsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("file_request_count".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_request_count\" missing.");
            }
            CountFileRequestsResult countFileRequestsResult = new CountFileRequestsResult(l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(countFileRequestsResult, countFileRequestsResult.toStringMultiline());
            return countFileRequestsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CountFileRequestsResult countFileRequestsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_request_count");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(countFileRequestsResult.fileRequestCount), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CountFileRequestsResult(long j) {
        this.fileRequestCount = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass().equals(getClass()) && this.fileRequestCount == ((CountFileRequestsResult) obj).fileRequestCount;
    }

    public long getFileRequestCount() {
        return this.fileRequestCount;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.fileRequestCount)});
    }

    public String toString() {
        return C2461a.f16977b.serialize((C2461a) this, false);
    }

    public String toStringMultiline() {
        return C2461a.f16977b.serialize((C2461a) this, true);
    }
}
