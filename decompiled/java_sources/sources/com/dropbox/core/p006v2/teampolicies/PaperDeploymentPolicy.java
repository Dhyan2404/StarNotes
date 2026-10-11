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
public enum PaperDeploymentPolicy {
    FULL,
    PARTIAL,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PaperDeploymentPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PaperDeploymentPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperDeploymentPolicy paperDeploymentPolicy;
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
                if ("full".equals(readTag)) {
                    paperDeploymentPolicy = PaperDeploymentPolicy.FULL;
                } else if ("partial".equals(readTag)) {
                    paperDeploymentPolicy = PaperDeploymentPolicy.PARTIAL;
                } else {
                    paperDeploymentPolicy = PaperDeploymentPolicy.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return paperDeploymentPolicy;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PaperDeploymentPolicy paperDeploymentPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4418a.f20713a[paperDeploymentPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("full");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("partial");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teampolicies.PaperDeploymentPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4418a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20713a;

        static {
            int[] iArr = new int[PaperDeploymentPolicy.values().length];
            f20713a = iArr;
            try {
                iArr[PaperDeploymentPolicy.FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20713a[PaperDeploymentPolicy.PARTIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
