package com.dropbox.core.p006v2.filerequests;

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
public enum CountFileRequestsError {
    DISABLED_FOR_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.filerequests.CountFileRequestsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2459a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16975a;

        static {
            int[] iArr = new int[CountFileRequestsError.values().length];
            f16975a = iArr;
            try {
                iArr[CountFileRequestsError.DISABLED_FOR_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16975a[CountFileRequestsError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.CountFileRequestsError$b */
    /* loaded from: classes4.dex */
    public static class C2460b extends UnionSerializer<CountFileRequestsError> {

        /* renamed from: b */
        public static final C2460b f16976b = new C2460b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CountFileRequestsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CountFileRequestsError countFileRequestsError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("disabled_for_team".equals(readTag)) {
                countFileRequestsError = CountFileRequestsError.DISABLED_FOR_TEAM;
            } else {
                if (!Constants.ATTRVAL_OTHER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                countFileRequestsError = CountFileRequestsError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return countFileRequestsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CountFileRequestsError countFileRequestsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2459a.f16975a[countFileRequestsError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled_for_team");
            } else {
                if (i == 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + countFileRequestsError);
            }
        }
    }
}
