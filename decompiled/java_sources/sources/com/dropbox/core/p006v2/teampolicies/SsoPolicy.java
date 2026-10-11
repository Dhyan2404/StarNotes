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
public enum SsoPolicy {
    DISABLED,
    OPTIONAL,
    REQUIRED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SsoPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SsoPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SsoPolicy ssoPolicy;
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
                if ("disabled".equals(readTag)) {
                    ssoPolicy = SsoPolicy.DISABLED;
                } else if ("optional".equals(readTag)) {
                    ssoPolicy = SsoPolicy.OPTIONAL;
                } else if ("required".equals(readTag)) {
                    ssoPolicy = SsoPolicy.REQUIRED;
                } else {
                    ssoPolicy = SsoPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return ssoPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SsoPolicy ssoPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4430a.f20725a[ssoPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("optional");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("required");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.SsoPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4430a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20725a;

        static {
            int[] iArr = new int[SsoPolicy.values().length];
            f20725a = iArr;
            try {
                iArr[SsoPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20725a[SsoPolicy.OPTIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20725a[SsoPolicy.REQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
