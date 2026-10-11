package com.dropbox.core.p006v2.users;

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
public enum UserFeaturesGetValuesBatchError {
    EMPTY_FEATURES_LIST,
    OTHER;

    /* renamed from: com.dropbox.core.v2.users.UserFeaturesGetValuesBatchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4450a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20759a;

        static {
            int[] iArr = new int[UserFeaturesGetValuesBatchError.values().length];
            f20759a = iArr;
            try {
                iArr[UserFeaturesGetValuesBatchError.EMPTY_FEATURES_LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.UserFeaturesGetValuesBatchError$b */
    /* loaded from: classes4.dex */
    public static class C4451b extends UnionSerializer<UserFeaturesGetValuesBatchError> {

        /* renamed from: b */
        public static final C4451b f20760b = new C4451b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserFeaturesGetValuesBatchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            UserFeaturesGetValuesBatchError userFeaturesGetValuesBatchError = "empty_features_list".equals(readTag) ? UserFeaturesGetValuesBatchError.EMPTY_FEATURES_LIST : UserFeaturesGetValuesBatchError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userFeaturesGetValuesBatchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserFeaturesGetValuesBatchError userFeaturesGetValuesBatchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C4450a.f20759a[userFeaturesGetValuesBatchError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("empty_features_list");
            }
        }
    }
}
