package com.dropbox.core.p006v2.team;

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
public enum FeaturesGetValuesBatchError {
    EMPTY_FEATURES_LIST,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.FeaturesGetValuesBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3047a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18174a;

        static {
            int[] iArr = new int[FeaturesGetValuesBatchError.values().length];
            f18174a = iArr;
            try {
                iArr[FeaturesGetValuesBatchError.EMPTY_FEATURES_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.FeaturesGetValuesBatchError$b */
    /* loaded from: classes4.dex */
    public static class C3048b extends UnionSerializer<FeaturesGetValuesBatchError> {

        /* renamed from: b */
        public static final C3048b f18175b = new C3048b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FeaturesGetValuesBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            FeaturesGetValuesBatchError featuresGetValuesBatchError = "empty_features_list".equals(readTag) ? FeaturesGetValuesBatchError.EMPTY_FEATURES_LIST : FeaturesGetValuesBatchError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return featuresGetValuesBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FeaturesGetValuesBatchError featuresGetValuesBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3047a.f18174a[featuresGetValuesBatchError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("empty_features_list");
            }
        }
    }
}
