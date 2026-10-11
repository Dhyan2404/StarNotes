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
public enum SmarterSmartSyncPolicyState {
    DISABLED,
    ENABLED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SmarterSmartSyncPolicyState> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SmarterSmartSyncPolicyState deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SmarterSmartSyncPolicyState smarterSmartSyncPolicyState;
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
                    smarterSmartSyncPolicyState = SmarterSmartSyncPolicyState.DISABLED;
                } else if ("enabled".equals(readTag)) {
                    smarterSmartSyncPolicyState = SmarterSmartSyncPolicyState.ENABLED;
                } else {
                    smarterSmartSyncPolicyState = SmarterSmartSyncPolicyState.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return smarterSmartSyncPolicyState;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SmarterSmartSyncPolicyState smarterSmartSyncPolicyState, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4429a.f20724a[smarterSmartSyncPolicyState.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.SmarterSmartSyncPolicyState$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4429a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20724a;

        static {
            int[] iArr = new int[SmarterSmartSyncPolicyState.values().length];
            f20724a = iArr;
            try {
                iArr[SmarterSmartSyncPolicyState.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20724a[SmarterSmartSyncPolicyState.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
