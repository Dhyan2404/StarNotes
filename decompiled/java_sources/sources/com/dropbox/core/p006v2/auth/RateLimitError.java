package com.dropbox.core.p006v2.auth;

import com.dropbox.core.p006v2.auth.RateLimitReason;
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
public class RateLimitError {
    protected final RateLimitReason reason;
    protected final long retryAfter;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<RateLimitError> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RateLimitError deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            RateLimitReason rateLimitReason = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                Long l = 1L;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("reason".equals(currentName)) {
                        rateLimitReason = RateLimitReason.Serializer.INSTANCE.deserialize(jsonParser);
                    } else if ("retry_after".equals(currentName)) {
                        l = StoneSerializers.uInt64().deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (rateLimitReason != null) {
                    RateLimitError rateLimitError = new RateLimitError(rateLimitReason, l.longValue());
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(rateLimitError, rateLimitError.toStringMultiline());
                    return rateLimitError;
                }
                throw new JsonParseException(jsonParser, "Required field \"reason\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RateLimitError rateLimitError, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("reason");
            RateLimitReason.Serializer.INSTANCE.serialize(rateLimitError.reason, jsonGenerator);
            jsonGenerator.writeFieldName("retry_after");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(rateLimitError.retryAfter), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RateLimitError(RateLimitReason rateLimitReason, long j) {
        if (rateLimitReason != null) {
            this.reason = rateLimitReason;
            this.retryAfter = j;
            return;
        }
        throw new IllegalArgumentException("Required value for 'reason' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RateLimitError rateLimitError = (RateLimitError) obj;
        RateLimitReason rateLimitReason = this.reason;
        RateLimitReason rateLimitReason2 = rateLimitError.reason;
        return (rateLimitReason == rateLimitReason2 || rateLimitReason.equals(rateLimitReason2)) && this.retryAfter == rateLimitError.retryAfter;
    }

    public RateLimitReason getReason() {
        return this.reason;
    }

    public long getRetryAfter() {
        return this.retryAfter;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.reason, Long.valueOf(this.retryAfter)});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public RateLimitError(RateLimitReason rateLimitReason) {
        this(rateLimitReason, 1L);
    }
}
