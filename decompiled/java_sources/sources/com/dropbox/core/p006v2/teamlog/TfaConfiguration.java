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
public enum TfaConfiguration {
    DISABLED,
    ENABLED,
    SMS,
    AUTHENTICATOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TfaConfiguration$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4368a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20656a;

        static {
            int[] iArr = new int[TfaConfiguration.values().length];
            f20656a = iArr;
            try {
                iArr[TfaConfiguration.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20656a[TfaConfiguration.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20656a[TfaConfiguration.SMS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20656a[TfaConfiguration.AUTHENTICATOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TfaConfiguration$b */
    /* loaded from: classes4.dex */
    public static class C4369b extends UnionSerializer<TfaConfiguration> {

        /* renamed from: b */
        public static final C4369b f20657b = new C4369b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TfaConfiguration deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TfaConfiguration tfaConfiguration = "disabled".equals(readTag) ? TfaConfiguration.DISABLED : "enabled".equals(readTag) ? TfaConfiguration.ENABLED : "sms".equals(readTag) ? TfaConfiguration.SMS : "authenticator".equals(readTag) ? TfaConfiguration.AUTHENTICATOR : TfaConfiguration.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return tfaConfiguration;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TfaConfiguration tfaConfiguration, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4368a.f20656a[tfaConfiguration.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("enabled");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("sms");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("authenticator");
            }
        }
    }
}
