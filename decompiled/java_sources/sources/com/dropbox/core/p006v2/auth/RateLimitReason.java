package com.dropbox.core.p006v2.auth;

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
public enum RateLimitReason {
    TOO_MANY_REQUESTS,
    TOO_MANY_WRITE_OPERATIONS,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<RateLimitReason> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public RateLimitReason deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RateLimitReason rateLimitReason;
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
                if ("too_many_requests".equals(readTag)) {
                    rateLimitReason = RateLimitReason.TOO_MANY_REQUESTS;
                } else if ("too_many_write_operations".equals(readTag)) {
                    rateLimitReason = RateLimitReason.TOO_MANY_WRITE_OPERATIONS;
                } else {
                    rateLimitReason = RateLimitReason.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return rateLimitReason;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RateLimitReason rateLimitReason, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2378a.f16815a[rateLimitReason.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("too_many_requests");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_write_operations");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.auth.RateLimitReason$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2378a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16815a;

        static {
            int[] iArr = new int[RateLimitReason.values().length];
            f16815a = iArr;
            try {
                iArr[RateLimitReason.TOO_MANY_REQUESTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16815a[RateLimitReason.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
