package com.dropbox.core.p006v2.async;

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
public class PollArg {
    protected final String asyncJobId;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<PollArg> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PollArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("async_job_id".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 != null) {
                    PollArg pollArg = new PollArg(str2);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(pollArg, pollArg.toStringMultiline());
                    return pollArg;
                }
                throw new JsonParseException(jsonParser, "Required field \"async_job_id\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PollArg pollArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("async_job_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) pollArg.asyncJobId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PollArg(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'asyncJobId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'asyncJobId' is shorter than 1");
        }
        this.asyncJobId = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.asyncJobId;
        String str2 = ((PollArg) obj).asyncJobId;
        return str == str2 || str.equals(str2);
    }

    public String getAsyncJobId() {
        return this.asyncJobId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.asyncJobId});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
