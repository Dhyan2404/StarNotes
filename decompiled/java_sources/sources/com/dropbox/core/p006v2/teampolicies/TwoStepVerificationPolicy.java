package com.dropbox.core.p006v2.teampolicies;

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
public enum TwoStepVerificationPolicy {
    REQUIRE_TFA_ENABLE,
    REQUIRE_TFA_DISABLE,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<TwoStepVerificationPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public TwoStepVerificationPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TwoStepVerificationPolicy twoStepVerificationPolicy;
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
                if ("require_tfa_enable".equals(readTag)) {
                    twoStepVerificationPolicy = TwoStepVerificationPolicy.REQUIRE_TFA_ENABLE;
                } else if ("require_tfa_disable".equals(readTag)) {
                    twoStepVerificationPolicy = TwoStepVerificationPolicy.REQUIRE_TFA_DISABLE;
                } else {
                    twoStepVerificationPolicy = TwoStepVerificationPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return twoStepVerificationPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TwoStepVerificationPolicy twoStepVerificationPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4431a.f20726a[twoStepVerificationPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("require_tfa_enable");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("require_tfa_disable");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.TwoStepVerificationPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4431a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20726a;

        static {
            int[] iArr = new int[TwoStepVerificationPolicy.values().length];
            f20726a = iArr;
            try {
                iArr[TwoStepVerificationPolicy.REQUIRE_TFA_ENABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20726a[TwoStepVerificationPolicy.REQUIRE_TFA_DISABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
