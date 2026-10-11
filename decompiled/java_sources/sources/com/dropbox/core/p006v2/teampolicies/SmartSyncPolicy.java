package com.dropbox.core.p006v2.teampolicies;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.common.internal.ImagesContract;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum SmartSyncPolicy {
    LOCAL,
    ON_DEMAND,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SmartSyncPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SmartSyncPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SmartSyncPolicy smartSyncPolicy;
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
                if (ImagesContract.LOCAL.equals(readTag)) {
                    smartSyncPolicy = SmartSyncPolicy.LOCAL;
                } else if ("on_demand".equals(readTag)) {
                    smartSyncPolicy = SmartSyncPolicy.ON_DEMAND;
                } else {
                    smartSyncPolicy = SmartSyncPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return smartSyncPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SmartSyncPolicy smartSyncPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4428a.f20723a[smartSyncPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(ImagesContract.LOCAL);
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("on_demand");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.SmartSyncPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4428a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20723a;

        static {
            int[] iArr = new int[SmartSyncPolicy.values().length];
            f20723a = iArr;
            try {
                iArr[SmartSyncPolicy.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20723a[SmartSyncPolicy.ON_DEMAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
