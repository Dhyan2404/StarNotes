package com.dropbox.core.p006v2.async;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum PollEmptyResult {
    IN_PROGRESS,
    COMPLETE;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PollEmptyResult> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PollEmptyResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PollEmptyResult pollEmptyResult;
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
                if ("in_progress".equals(readTag)) {
                    pollEmptyResult = PollEmptyResult.IN_PROGRESS;
                } else if ("complete".equals(readTag)) {
                    pollEmptyResult = PollEmptyResult.COMPLETE;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return pollEmptyResult;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PollEmptyResult pollEmptyResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2372a.f16802a[pollEmptyResult.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString("complete");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + pollEmptyResult);
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.async.PollEmptyResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2372a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16802a;

        static {
            int[] iArr = new int[PollEmptyResult.values().length];
            f16802a = iArr;
            try {
                iArr[PollEmptyResult.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16802a[PollEmptyResult.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
