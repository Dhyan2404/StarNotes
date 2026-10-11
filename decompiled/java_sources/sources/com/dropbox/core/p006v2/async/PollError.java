package com.dropbox.core.p006v2.async;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum PollError {
    INVALID_ASYNC_JOB_ID,
    INTERNAL_ERROR,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PollError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PollError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PollError pollError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("invalid_async_job_id".equals(readTag)) {
                    pollError = PollError.INVALID_ASYNC_JOB_ID;
                } else if ("internal_error".equals(readTag)) {
                    pollError = PollError.INTERNAL_ERROR;
                } else {
                    pollError = PollError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return pollError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PollError pollError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2373a.f16803a[pollError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_async_job_id");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("internal_error");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.async.PollError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2373a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16803a;

        static {
            int[] iArr = new int[PollError.values().length];
            f16803a = iArr;
            try {
                iArr[PollError.INVALID_ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16803a[PollError.INTERNAL_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
