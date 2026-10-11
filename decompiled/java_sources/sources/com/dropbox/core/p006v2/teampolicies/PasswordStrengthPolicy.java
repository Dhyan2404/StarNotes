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
public enum PasswordStrengthPolicy {
    MINIMAL_REQUIREMENTS,
    MODERATE_PASSWORD,
    STRONG_PASSWORD,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PasswordStrengthPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PasswordStrengthPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PasswordStrengthPolicy passwordStrengthPolicy;
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
                if ("minimal_requirements".equals(readTag)) {
                    passwordStrengthPolicy = PasswordStrengthPolicy.MINIMAL_REQUIREMENTS;
                } else if ("moderate_password".equals(readTag)) {
                    passwordStrengthPolicy = PasswordStrengthPolicy.MODERATE_PASSWORD;
                } else if ("strong_password".equals(readTag)) {
                    passwordStrengthPolicy = PasswordStrengthPolicy.STRONG_PASSWORD;
                } else {
                    passwordStrengthPolicy = PasswordStrengthPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return passwordStrengthPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PasswordStrengthPolicy passwordStrengthPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4420a.f20715a[passwordStrengthPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("minimal_requirements");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("moderate_password");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("strong_password");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.PasswordStrengthPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4420a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20715a;

        static {
            int[] iArr = new int[PasswordStrengthPolicy.values().length];
            f20715a = iArr;
            try {
                iArr[PasswordStrengthPolicy.MINIMAL_REQUIREMENTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20715a[PasswordStrengthPolicy.MODERATE_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20715a[PasswordStrengthPolicy.STRONG_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
