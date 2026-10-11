package com.dropbox.core.p006v2.teamlog;

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
public enum SendForSignaturePolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SendForSignaturePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3997a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20273a;

        static {
            int[] iArr = new int[SendForSignaturePolicy.values().length];
            f20273a = iArr;
            try {
                iArr[SendForSignaturePolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20273a[SendForSignaturePolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SendForSignaturePolicy$b */
    /* loaded from: classes4.dex */
    public static class C3998b extends UnionSerializer<SendForSignaturePolicy> {

        /* renamed from: b */
        public static final C3998b f20274b = new C3998b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SendForSignaturePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SendForSignaturePolicy sendForSignaturePolicy = "disabled".equals(readTag) ? SendForSignaturePolicy.DISABLED : "enabled".equals(readTag) ? SendForSignaturePolicy.ENABLED : SendForSignaturePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sendForSignaturePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SendForSignaturePolicy sendForSignaturePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3997a.f20273a[sendForSignaturePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }
}
